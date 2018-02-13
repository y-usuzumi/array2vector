# array2vector

This module provides a bridge between Data.Array and Data.Vector modules.

## Example

```haskell
import qualified Data.Array             as A
import           Data.Array.Conversion
import qualified Data.Vector            as V
import           Data.Vector.Conversion

main = do
  let arr = A.listArray (0, 2) ["Hello", "world", "!"]
      vec = V.fromList ["Hello", "world", "!"]

  -- Vector to Array
  print $ toVector arr == vec  -- True
  -- Array to Vector
  print $ toArray vec == arr  -- True

```

## Notes

1. When converting vectors to arrays, the ix ranges will be `Int`-typed and the lower bounds will be 0.
