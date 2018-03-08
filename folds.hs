maximum' :: (Ord a ) => [a] -> a
maximum' = foldl1 max

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product' = foldl1 (*)

runningMax :: (Ord a) => [a] -> [a]
runningMax = scanl1 max