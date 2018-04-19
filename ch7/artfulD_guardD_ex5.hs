
--dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10
--oneIsOne :: Num a => a
oneIsOne = dodgy 1
--oneIsTwo :: Num a => a
oneIsTwo = (flip dodgy) 2

-- dodgy 1 1 = 11
-- dodgy 2 2 = 22
-- dodgy 1 2 = 21
-- dodgy 2 1 = 12
-- oneIsOne 1 = dodgy 1 1 = 11
-- oneIsOne 2 = dodgy 1 2 = 21
-- oneIsTwo 1 = dodgyf 2 1 = dodgy 1 2 = 1 + 2 * 10 = 21
-- oneIsOne 3 = dodgy 1 3 = 31
-- oneIsTwo 3 = dodgyf 2 3 = dodgy 3 2 = 3 + 2 * 10 = 23

avgGrade :: (Fractional a, Ord a)
         => a -> Char

-- 1
avgGrade x
  | y >= 0.9  ='A'
  | y >= 0.8  ='B'
  | y >= 0.7  ='C'
  | y >= 0.59 ='D'
  | otherwise ='F'
  where y = x /100

-- 2
pal xs
  | xs == reverse xs = True
  | otherwise        = False

-- 4,5 pal :: Eq a => [a] -> Bool

-- 6 numbers :: (Num a, Ord a, Num b) => a -> b
numbers x
      | x < 0  = -1
      | x == 0 = 0
      | x > 0  = 1

