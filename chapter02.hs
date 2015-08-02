-- Exercise 3
lastButOne :: [a] -> a
lastButOne (x:_:[]) = x
lastButOne (x:xs) = lastButOne xs
-- Not handling errors (though I know how) because the book hasn't
-- covered them yet
-- lastButOne _ = error "List less than two elements long"
        
