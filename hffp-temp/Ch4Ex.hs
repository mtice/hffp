module Ch4Ex where

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- length is a function that takes a list 
-- and returns a result that tells how many items are in the list.


-- 1. Type signature?
--    length' :: [a] -> Int
--    Foldable t => t a -> Int
-- How may arguments of what type does it take?
--   1, list of type a
--   1, foldable of type t
-- What is the type of the result it evaluates to?
-- Int

-- 2. 
-- a) length [1, 2, 3, 4, 5]
--    5
-- b) length [(1, 2), (2, 3), (3, 4)]
--    3
-- c) length allAwesome
--    2
-- d) length (concat allAwesome)
--    5

-- 3. bork 6 / length [1, 2, 3]
-- :t (/)
--    Fractional a => a -> a -> a
-- :t length
--    Foldable t => t a -> Int
-- Int not fractional?

-- 4. fix 3
--    div 6 (length [1, 2, 3])
      -- or 6 / fixIntegral (length [1, 2, 3])
-- :t div
--    Integral a => a -> a -> a

-- 5. :t 2 + 3 == 5
--       2 + 3 == 5 :: Bool, True

-- 6. Prelude> let x = 5
--    Prelude> x + 3 == 5
-- Bool, False

-- 7. 
--   Prelude> length allAwesome == 2
     -- work, True, Int == Int fits Type of Eq a => a -> a -> Bool
--   Prelude> length [1, 'a', 3, 'b']
     -- noper. Cannot have lists containing different types. 
--   Prelude> length allAwesome + length awesome
     -- works.
     -- :t (+) is Num a => a -> a -> a.
     -- :t length is Int which is Num
--   Prelude> (8 == 8) && ('b' < 'a')
     -- Works. True && False is False
--   Prelude> (8 == 8) && 9
     -- Bad. True && 9 is not Bool

-- 8.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- 9. Write a function to return the absolute value of a number using if-then-else

myAbs :: Integer -> Integer
myAbs x = if (x < 0)
          then (-1) * x
          else x

-- 10. use fst and snd
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = (,) (snd x, snd y) (fst x, fst y)


-- Syntax exercises in Ch4CorrSynth.hs

-- Match function names to type

-- 1. show
--    c) Show a => a 0> String
-- 2. (==)
--    b) Eq a => a -> a -> Bool
-- 3. fst
--    a) (a, b) -> a
-- 4. (+)
--    b) Num a => a -> a -> Bool


