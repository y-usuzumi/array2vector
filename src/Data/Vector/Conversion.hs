module Data.Vector.Conversion where

import           A2V.Internal.Base
import           Data.Array
import           Data.Vector


toArray :: Vector e -> Array Int e
toArray vector = let
  A2VVector i n primArray = unsafeVectorToA2VVector vector
  A2VPrimArray pArray = unsafePrimArrayToA2VPrimArray primArray
  a2vArray = A2VArray i (n-1) n pArray
  in unsafeA2VArrayToArray a2vArray
