import           Test.Tasty
import           Test.Tasty.HUnit
import qualified Tests.Data.Array.Conversion  as ArrayTests
import qualified Tests.Data.Vector.Conversion as VectorTests

allTests :: TestTree
allTests = testGroup "All tests"
  [ ArrayTests.tests
  , VectorTests.tests
  ]


main :: IO ()
main = defaultMain allTests
