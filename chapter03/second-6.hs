{- 6
   The wording of this exercise is pitiful.  "You may want to look at the
   sortBy function from Data.List"?  Does he simply want you to import that
   function?  But importing modules isn't covered till the next chapter and
   thus far he has wanted solutions which only use what the book has
   taught about Haskell.

   A Data.List solution would look like this:

import Data.List (sortBy)
listsByLength :: [[a]] -> [[a]]
listsByLength =
    let byLength xs ys = compare (length xs) (length ys)
    in  sortBy byLength
-}

