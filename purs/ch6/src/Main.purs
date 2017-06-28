module Main where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Either (Either(..))

maybeToEither :: forall a. Maybe a -> Either Unit a
maybeToEither Nothing  = Left unit
maybeToEither (Just a) = Right a

eitherToMaybe :: forall a. Either Unit a -> Maybe a
eitherToMaybe (Left _)  = Nothing
eitherToMaybe (Right a) = Just a

-- a + a = 2 * a
