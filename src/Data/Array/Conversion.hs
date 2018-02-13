module Data.Array.Conversion where

import           A2V.Internal.Base
import           Data.Array
import           Data.Vector


toVector :: Ix i => Array i e -> Vector e
toVector array = let
  A2VArray _ _ _ pArray = unsafeArrayToA2VArray array
  myPrimArray = A2VPrimArray pArray
  primArray = unsafeA2VPrimArrayToPrimArray myPrimArray
  myVector = A2VVector 0 (rangeSize $ bounds array) primArray
  in unsafeA2VVectorToVector myVector
