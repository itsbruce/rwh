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

