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

-- 1. 
i :: Num a => a


