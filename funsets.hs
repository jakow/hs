type FunSet a = a -> Bool

singleton :: (Eq a) => a -> FunSet a
singleton x = (==x)


fromList :: (Eq a) => [a] -> FunSet a
fromList xs = flip elem $ xs

union :: (Eq a) => FunSet a -> FunSet a -> FunSet a
union s1 s2 = \x -> (s1 x) || (s2 x)

intersection :: FunSet a -> FunSet a -> FunSet a
intersection s1 s2 = \x -> (s1 x) && (s2 x)

difference :: FunSet a -> FunSet a -> FunSet a
difference s1 s2 = intersection s1 (not . s2)

