module A2V.Internal.Base where


import           Data.Array
import qualified Data.Primitive.Array as PrimArray
import           Data.Typeable
import           Data.Vector          as V
import           GHC.Prim
import           Unsafe.Coerce


data A2VArray i e = A2VArray
                    !i
                    !i
                    {-# UNPACK #-}!Int
                    (Array# e)

data A2VPrimArray a = A2VPrimArray { myArray# :: Array# a }

data A2VVector a = A2VVector
                   {-# UNPACK #-}!Int
                   {-# UNPACK #-}!Int
                   {-# UNPACK #-}!(PrimArray.Array a)
                 deriving Typeable


unsafeArrayToA2VArray :: Array i e -> A2VArray i e
unsafeArrayToA2VArray = unsafeCoerce

unsafeA2VArrayToArray :: A2VArray i e -> Array i e
unsafeA2VArrayToArray = unsafeCoerce

unsafeA2VVectorToVector :: A2VVector a -> Vector a
unsafeA2VVectorToVector = unsafeCoerce

unsafeVectorToA2VVector :: Vector a -> A2VVector a
unsafeVectorToA2VVector = unsafeCoerce

unsafeA2VPrimArrayToPrimArray :: A2VPrimArray a -> PrimArray.Array a
unsafeA2VPrimArrayToPrimArray = unsafeCoerce

unsafePrimArrayToA2VPrimArray :: PrimArray.Array a -> A2VPrimArray a
unsafePrimArrayToA2VPrimArray = unsafeCoerce
