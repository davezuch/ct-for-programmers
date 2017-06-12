module Main where

import Prelude
import Data.Maybe (Maybe(..))
import Math (sqrt)

safeRoot :: Number -> Maybe Number
safeRoot x =
  if x < 0.0
     then Nothing
     else Just (sqrt x)

safeReciprocal :: Number -> Maybe Number
safeReciprocal 0.0 = Nothing
safeReciprocal x   = Just (1.0 / x)

safeRootReciprocal :: Number -> Maybe Number
safeRootReciprocal = safeRoot >=> safeReciprocal
