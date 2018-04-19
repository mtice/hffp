-- pg. 192 Will They Work?
-- 1. y
-- 2. y
-- 3. n
-- 4. y

-- Chapter Exercieses
-- 1. The Eq class
--  c) makes equality tests possible
-- 2. typeclass Ord
--  b,c,d
-- 3. a
-- 4. c
-- 5. a

-- Does it Type check?
-- 1. data Person = Person Bool
--  printPerson :: Person -> IO ()
--  printPerson person = putStrLn (show person)
-- No. Person doesn't have show instance

-- 2. noper. No Eq instance
-- 3. Blah or Woot, fail. no Eq needs same type, no Ord
-- 4. yep

-- Given a datatype declaration, what can we do?
data Rocks =
    Rocks String deriving (Eq, Show)
data Yeah =
    Yeah Bool deriving (Eq, Show)
data Papu =
    Papu Rocks Yeah deriving (Eq, Show)
-- 1. phew = Papu "chases" True
--   negative. Rocks and Yeah not String and Bool

-- 2. truth = Papu (Rocks "chomskydoz")
--                 (Yeah True)
-- Yep. This time you are passing in a Rocks and a True

-- 3. equalityForall :: Papu -> Papu -> Bool
--    equalityForall p p' = p == p'
-- yep. Derives Eq.

-- 4. comparePapus :: Papu -> Papu -> Bool
--    comparePapus p p' = p > p'
-- noper. No Ord instance.

-- Match the Types

-- 2-4. 
f :: Float
f = 1.0
-- Can't do Num a => a because it's too General
-- can do Fractional a => a and RealFrac a => a becuase
-- Float has instances of both

-- 5 - 6. 
freud :: a -> a
freud x = x

-- freud :: Ord a => a -> a works
-- freud :: Int a => a -> a works

-- 7 
myX = 1::Int
sigmund :: Int -> Int
sigmund x = myX
-- sigmund :: a -> a negative. too general

-- 8
sigmund' :: Int -> Int
sigmund' x = myX

-- sigmund':: Numa => a -> a negative. Too general.

-- 9
-- import Data.List
-- jung :: Ord a => [a] -> a
-- jung xs = head (sort xs)

-- jung :: [Int] -> Int
-- yes. 

-- 10. yes
-- 11. no

--  Type Kwon Do Two-- 
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (f a) == b

arith :: Num b 
         => (a->b)
         -> Integer
         -> a
         -> b
arith f i a = (f a) + fromInteger i
-- :i fromInteger Integer -> a but + will type it to (f a) which is b



