--My own verions

-- 1) myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

-- 2) myAny returns True if a -> Bool applied to any of the values in the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

-- 3) 
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs) = e == x || myElem e xs
-- -- myElem e xs = myAny (== e) xs
