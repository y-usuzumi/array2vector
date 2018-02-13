# array2vector

This module provides a bridge between Data.Array and Data.Vector modules

## Example

```haskell
import qualified Data.Array as A
import           Data.Array.Conversion toVector
import qualified Data.Vector as V

main = do
  let arr = A.listArray (1, 3) ["Hello", "world", "!"]
      vec = V.fromList ["Hello", "world", "!"]
  print $ toVector arr == vec  -- True
```
