-- 1. The following should return x when x is greater than y.
funC :: Ord a => a -> a -> a
funC x y = if (x > y) then x else y
funCase :: Ord a => a -> a -> a
funCase x y = 
    case (x > y) of
        True -> x
        False -> y
-- 2.
ifEvenAdd2 :: Integral a => a -> a
ifEvenAdd2 n = if even n then (n + 2) else n

-- 3.
nums :: (Ord a, Num a, Num b) => a -> b
nums x =
    case (compare x 0) of
      LT -> (-1)
      GT -> 1
      EQ -> 0
    