--kinds
-- 1) id :: a -> a  a? 
-- *

-- 2) r :: a -> f a 
-- a is * f is * -> *

-- string procesing

-- 1) replace all "the" in a sentence with "a"
import Data.List
import Data.Maybe
import Data.Either
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe xs  = Just xs

replaceMaybe :: Maybe String -> String
replaceMaybe Nothing = "a"
replaceMaybe stupidJust = fromJust stupidJust

replaceThe :: String -> String
replaceThe s = concat . map replaceMaybe . map notThe $ mlist
    where mlist = intersperse " " . words $ s

-- 2)
startsWithVowel :: String -> Bool
startsWithVowel "" = False
startsWithVowel (x:xs) = elem x "aeiou"
tester2 :: String
tester2 = "the two things the one"
countTheBeforeVowel :: String -> Integer
-- this is dirty. how can improve? list comp // TODO
countTheBeforeVowel xs = toInteger . length . filter (\w -> w == "the") . takeWhile (not . startsWithVowel) . words $ xs

-- 3)
countVowels :: String -> Integer
countVowels xs = toInteger . length $ [x | x <- xs, elem x "aeiou"]

-- 4) VALIDATE
newtype Word' =
    Word' String
    deriving (Eq, Show)

vowels = "aeiou"

mkWord :: String -> Maybe Word'
mkWord wrd = 
    if (length vowelCount) > (length constsCount) then Nothing else Just (Word' wrd)
    where vowelCount = [x | x <- wrd, elem x vowels]
          constsCount = [y | y <- wrd, notElem y vowels]

-- 5)
data Nat =
    Zero
  | Succ Nat
  deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ n) = 1 + natToInteger n

intToNat :: Integer -> Maybe Nat
intToNat i
   | i < 0 = Nothing
   | otherwise = Just (go i)
   where
    go 0 = Zero
    go i = (Succ (go (i - 1)))

-- MAYBE STUFF
-- 1) bool checks
isJust' :: Maybe a -> Bool
isJust' Nothing = False
isJust' (Just a) = True
 
isNothing :: Maybe a -> Bool
isNothing = not . isJust'

-- 2)
mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee b f (Just a) = (f a)
mayybee b f Nothing = b

-- 3)
fromMaybe :: a -> Maybe a -> a
fromMaybe a may = mayybee a id may

-- 4)
listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:_) = (Just x)

maybeToList :: Maybe a -> [a]
maybeToList Nothing = []
maybeToList (Just a) = a:[]
-- 5)
catMaybes :: [Maybe a] -> [a]
catMaybes xs = map fromJust xs

-- 6)
-- flipMaybe :: [Maybe a] -> Maybe [a]
-- flipMaybe xs
--    | elem 

-- EITHER THINGS
--1)
lefts' :: [Either a b] -> [a]
lefts' ers = foldr go [] ers where
    go (Left x) acc = x:acc
    go _ acc = acc
--2)
rights' :: [Either a b] -> [b]
rights' ers = foldr go [] ers where
        go (Right x) acc = x:acc
        go _ acc = acc
--3)
partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' ers = (,) ls rs where
    ls = lefts' ers
    rs = rights' ers
-- lone = Left "lone"
-- rone = Right "rone"
-- ltwo = Left "ltwo"
-- rtwo = Right "rtwo"
-- testErs = [lone, rone, ltwo, rtwo]
--4)
eitherMaybe' :: (b -> c)
             -> Either a b
             -> Maybe c
eitherMaybe' f (Left a) = Nothing
eitherMaybe' f (Right b) = Just $ f b
--5)
either' :: (a -> c)
        -> (b -> c)
        -> Either a b
        -> c
either' f g (Left a) = f a
either' f g (Right b) = g b
--6) -- guessed my way through this.. almost don't get it.
eitherMaybe'' :: (b -> c)
              -> Either a b
              -> Maybe c
eitherMaybe'' f etr = either' (const Nothing) (Just . f) etr


--- ITERATE
myIterate :: (a -> a) -> a -> [a]
myIterate f acc = acc : myIterate f (f acc)

-- myUnfoldr
myUnfoldr :: (b -> Maybe (a, b))
          -> b
          -> [a]
myUnfoldr f b = go f b (f b) where
    go f b Nothing = []
    go f b (Just (aa, bb)) = aa : (go f bb (f bb))