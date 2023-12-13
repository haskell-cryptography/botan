module Crypto.Parser where

import qualified Data.ByteString as ByteString
import qualified Data.Text as Text

-- NOTE: We should not rely on this in our parser
import Data.ByteString.Internal (w2c)
import Data.String (IsString(..))

import Crypto.Prelude

-- NOTE: Small one-shot / offline parser that just moves an index around
-- Didn't want to pull in a heavy parser

type Pos = Int
type Inp = ByteString
type St  = (Pos,Inp)
type Err = Text

newtype Parser a = MkParser (St -> Either Err (a,St))

runParser :: Parser a -> St -> Either Err (a, St)
runParser (MkParser parseFn) = parseFn

parse :: Parser a -> ByteString -> a
parse p inp = case runParser (p <* eof) (0,inp) of
    Left e      ->  error $ Text.unpack e
    Right (a,_) ->  a

instance Functor Parser where

    fmap :: (a -> b) -> Parser a -> Parser b
    fmap f p = MkParser $ \ st -> case runParser p st of
        Left e          ->  Left e
        Right (a, st')  ->  Right (f a, st')

instance Applicative Parser where

    pure :: a -> Parser a
    pure a = MkParser $ \ st -> Right (a, st)

    (<*>) :: Parser (a -> b) -> Parser a -> Parser b
    (<*>) pf pa = MkParser $ \ st -> case runParser pf st of
        Left e          ->  Left e
        Right (f, st')  ->  case runParser pa st' of
            Left e          ->  Left e
            Right (a, st'') ->  Right (f a, st'')

instance Alternative Parser where

    empty :: Parser a
    empty = MkParser $ \ st -> Left "empty"

    (<|>) :: Parser a -> Parser a -> Parser a
    (<|>) p q = MkParser $ \ st -> case runParser p st of
        Left e  ->  runParser q st
        a       ->  a

instance Monad Parser where
    
    (>>=) :: Parser a -> (a -> Parser b) -> Parser b
    (>>=) p m = MkParser $ \ st -> case runParser p st of
        Left e          ->  Left e
        Right (a, st')  ->  runParser (m a) st'

err :: Err -> Parser a
err pe = MkParser $ \ _ -> Left pe

peekByte :: Parser Word8
peekByte = MkParser $ \ (pos,inp) -> case ByteString.indexMaybe inp pos of
    Nothing ->  Left "end of input"
    Just w  ->  Right (w,(pos,inp))

anyByte :: Parser Word8
anyByte = MkParser $ \ (pos,inp) -> case ByteString.indexMaybe inp pos of
    Nothing ->  Left "end of input"
    Just w  ->  Right (w,(pos+1,inp))

satisfy :: Text -> (Word8 -> Bool) -> Parser Word8
satisfy cond pred = anyByte >>= \ a -> if pred a
    then return a
    else err cond

byte :: Word8 -> Parser Word8
byte w = satisfy ("expected " <> showText w) (== w)

bytestring :: ByteString -> Parser ByteString
bytestring bs =  ByteString.pack <$> foldr
    (\ w -> (<*>) ((:) <$> byte w))
    (pure [])
    (ByteString.unpack bs)

eof :: Parser ()
eof = MkParser $ \ (pos,inp) -> 
    let len = ByteString.length inp
    in  if pos < len
        then Left $ "input remaining (" <> showText pos <> "/" <> showText len <> " consumed)"
        else Right ((),(pos,inp))

-- oneOf :: ByteString -> Parser Word8
-- oneOf bs = satisfy 

-- MCF (Modular crypt format) -like
--  A relaxed format: operation-algorithm-artefact
--  #abc:def:...$   - The algorithm identifier
