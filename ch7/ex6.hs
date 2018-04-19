-- Lets write code

-- 1.
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10
-- yes same type
-- with compisition
tensDigit' x = fst (divMod x 10)
tensDigit'' x = (fst . divMod x) 10

hunsD :: Integral a => a -> a
hunsD = tensDigit . (`div` 10)

-- 2.
foldBool :: a -> a -> Bool -> a
foldBool x y b =
    case b of
        True  -> x
        False -> y
foldBool' :: a -> a -> Bool -> a
foldBool' x y b
  | b         = x
  | otherwise = y
-- 3.
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (,) (f a) $ c

-- the rest in arith4


  