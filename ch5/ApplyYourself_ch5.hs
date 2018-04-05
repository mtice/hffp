module ApplyYourself where
-- thing from typeInference1
-- f :: Num a => a -> a -> a
-- f x y = x + y + 3


-- 1. (++) :: [a] -> [a] -> [a]
    -- myConcat x = x ++ " yo"
    -- myConcat :: [Char] -> [Char]
-- 2. (*) :: Num a => a -> a -> a
    -- myMult x = (x / 3) * 5
    -- myMult :: Fractional a => a -> a
-- 3. take :: Int -> [a] -> [a]
    -- myTake x = take x "hey you"
    -- mytake :: Int -> [Char]
-- 4. (>) :: Ord a => a -> a -> Bool
    -- myCom x = x > (length [1..10])
    -- Int -> Bool
-- 5. (<) :: Ord a => a -> a -> Bool
    -- myAlph x = x < 'z'
    -- Char -> Bool