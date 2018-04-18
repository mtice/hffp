
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

pal xs
  | xs == reverse xs = True
  | otherwise        = False


numbers x
      | x < 0  = -1
      | x == 0 = 0
      | x > 0  = 1