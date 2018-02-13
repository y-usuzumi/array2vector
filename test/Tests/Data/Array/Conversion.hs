module Tests.Data.Array.Conversion where

import qualified Data.Array            as A
import qualified Data.Array.Conversion as AC
import qualified Data.Vector           as V
import           Test.Tasty
import           Test.Tasty.HUnit


tests :: TestTree
tests = testGroup "Data.Array.Conversion"
  [ testCase "Int array" $ do
      let arr = A.listArray (0, 9) [1..10]
          vec = V.fromList [1..10]
      vec @=? AC.toVector arr
  , testCase "String array" $ do
      let arr = A.listArray (1, 3) ["Hello", "world", "!"]
          vec = V.fromList ["Hello", "world", "!"]
      vec @=? AC.toVector arr
  ]
