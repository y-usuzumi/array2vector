module Tests.Data.Vector.Conversion where

import qualified Data.Array             as A
import qualified Data.Vector            as V
import qualified Data.Vector.Conversion as VC
import           Test.Tasty
import           Test.Tasty.HUnit


tests :: TestTree
tests = testGroup "Data.Vector.Conversion"
  [ testCase "Int array" $ do
      let vec = V.fromList [1..10]
      let arr = A.listArray (0, 9) [1..10]
      arr @=? VC.toArray vec
  , testCase "String array" $ do
      let vec = V.fromList ["Hello", "world", "!"]
          arr = A.listArray (0, 2) ["Hello", "world", "!"]
      arr @=? VC.toArray vec
  ]
