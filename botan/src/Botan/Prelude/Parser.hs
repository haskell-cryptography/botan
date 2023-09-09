{-# LANGUAGE FlexibleInstances #-}
module Botan.Prelude.Parser where

import qualified Data.ByteString as ByteString
import qualified Data.Text as Text

-- NOTE: We should not rely on this in our parser
import Data.ByteString.Internal (w2c)
import Data.String (IsString(..))


import Botan.Prelude


-- TODO: Name parser - small one-shot / offline parser that just moves an index around
-- NOTE: Assumes ASCII
-- NOTE: Didn't want to pull in a heavy parser

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

satisfy :: Parser a -> Text -> (a -> Bool) -> Parser a
satisfy p cond pred = p >>= \ a -> if pred a
    then return a
    else err $ "failed to satisfy: " <> cond

eof :: Parser ()
eof = MkParser $ \ (pos,inp) -> 
    let len = ByteString.length inp
    in  if pos < len
        then Left $ "input remaining (" <> showText pos <> "/" <> showText len <> " consumed)"
        else Right ((),(pos,inp))

peekChar :: Parser Char
peekChar = w2c <$> peekByte

anyChar :: Parser Char
anyChar = w2c <$> anyByte

char :: Char -> Parser Char
char c = satisfy anyChar ("expected " <> showText c) (== c)

string :: Foldable f => f Char -> Parser [Char]
string = foldr (\ c -> (<*>) ((:) <$> char c)) (pure [])

-- MCF (Modular crypt format) -like
--  A relaxed format: operation-algorithm-artefact
--  #abc:def:...$   - The algorithm identifier
