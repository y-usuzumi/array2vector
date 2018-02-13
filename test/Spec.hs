import qualified Data.Array            as A
import qualified Data.Array.Conversion as AC
import qualified Data.Vector           as V
import           Test.Tasty
import           Test.Tasty.HUnit

allTests :: TestTree
allTests = testGroup "All tests"
  [ testCase "Conversion" $ do
      let arr = A.listArray (0, 9) [1..10]
          vec = AC.toVector arr
      V.fromList [1..10] @=? vec
  ]


main :: IO ()
main = defaultMain allTests
