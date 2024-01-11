module Botan.Error
( module Botan.Low.Error
) where

import Botan.Prelude

import Botan.Low.Error hiding (tryBotan, catchBotan, handleBotan)

-- NOTE: These need MonadUnliftIO

-- tryBotan :: MonadIO m => m a -> m (Either SomeBotanException a)
-- tryBotan = try . liftIO

-- catchBotan :: MonadIO m => IO a -> (SomeBotanException -> m a) -> m a
-- catchBotan = catch

-- handleBotan :: MonadIO m => (SomeBotanException -> m a) -> m a -> m a
-- handleBotan = flip catchBotan
