-- Second set of exercises

-- 1,2
size :: [a] -> Int
size [] = 0
size (_:xs) = 1 + size xs

-- 3
mean :: Fractional a => [a] -> a
mean [] = 0
mean (x:xs) = 
    let mean' n acc [] = acc / n
        mean' n acc (y:ys) = mean' (n + 1) (acc + y) ys
    in  mean' 1 x xs

-- 4
mirror :: [a] -> [a]
mirror xs =
    let invert [] = []
        invert (y:ys) = (invert ys) ++ [y]
    in  xs ++ (invert xs)

-- 5
--isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = False
isPalindrome (x:xs) = 
    let isIt _ [] = False
        isIt ys (z:zs) 
            | ys == (z:zs)  = True
            | otherwise     = isIt (z:ys) zs
    in  isIt [x] xs

