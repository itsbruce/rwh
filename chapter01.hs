size :: [a] -> Int
size [] = 0
size (_:xs) = 1 + size xs

mean :: Fractional a => [a] -> a
mean [] = 0
mean (x:xs) = mean' 1 x xs
    where mean' n acc [] = acc / n
          mean' n acc (y:ys) = mean' (n + 1) (acc + y) ys
