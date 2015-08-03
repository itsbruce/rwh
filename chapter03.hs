-- First set of exercises

data List a = Cons a (List a) | Nil
    deriving (Show)

-- 1

toList :: List a -> [a]
toList Nil = []
toList (Cons x xs) = x : (toList xs)

-- 2

data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
    deriving (Show)

-- Second set of exercises

-- 1,2
size :: [a] -> Int
size [] = 0
size (_:xs) = 1 + size xs

-- 3
mean :: Fractional a => [a] -> a
mean [] = 0
mean (x:xs) = mean' 1 x xs
    where mean' n acc [] = acc / n
          mean' n acc (y:ys) = mean' (n + 1) (acc + y) ys

-- 4
mirror :: [a] -> [a]
mirror xs = xs ++ (invert xs)
    where invert [] = []
          invert (y:ys) = (invert ys) ++ [y]

-- 5
--isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = False
isPalindrome (x:xs) = isIt [x] xs
    where isIt _ [] = False
          isIt ys (z:zs) 
            | ys == (z:zs)  = True
            | otherwise     = isIt (z:ys) zs

