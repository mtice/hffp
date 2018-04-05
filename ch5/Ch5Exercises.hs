-- 1. value of type [a]
   -- c) a list owhose elements are all of some type a
-- 2. function of type [[a]] -> [a]
  -- a) take a list of strings as an argument
-- 3. function of type [a] -> Int -> a
  -- b) returns one element of type a from a list
-- 4. function :: (a, b) -> a
  -- c) takes tuple, returns first value

-- DETERMINE THE TYPE -- 

-- 1. 
--   a) (* 9) 6
--     Num a => a
--   b) head [(0,"doge"),(1,"kitteh")]
--     Num a => (a, [Char])
--   c) head [(0 :: Integer ,"doge"),(1,"kitteh")]
--     (Integer, [Char])
--   d) if False then True else False
--     Bool
--   e) length [1, 2, 3, 4, 5]
--     Int
--   f) (length [1, 2, 3, 4]) > (length "TACOCAT")
--     Bool

-- 2. x = 5;y = x + 5; w = y * 10;
--    w :: Num a => a
-- 3. x = 5; y = x + 5; z y = y * 10;
--    z :: Num a -> a -> a
-- 4. x = 5; y = x + 5; f = 4 / y;
--     f :: Fractional a => a

-- Does it compile --
-- 1. bigNum = (^) 5 $ 10; wahoo = bigNum $ 10;
--    no. bigNum is a value, not a function
-- 2. x = print; y = print "wohoo!";z = x "hello world";
--    yup. z = print
-- 3. a = (+); b = 5; c = b 10; d = c 200;
--   noper. b is a value.
-- 4. a = 12 + b; b = 10000 * c;
--   noper b not in scope when declaring a


-- TYPE VAR OR SPECIFIC TYPE CONSTRUCTOR --
-- 1. f :: Num a => a -> b -> Int -> Int
--  a = constrained, b = full, concrete, concrete
-- 2. f :: zed -> Zed -> Blah
--  full, concrete, concrete
-- 3. f :: Enum b => a -> b -> C
--   full, constrained, concrete
-- 4. f :: f -> g -> C
--   full, full, concrete

-- WRITE A TYPE SIGNATURE --
1. functionH :: [a] -> a;
   functionH (x:_) = x;
2. functionC :: Ord a => a -> a -> Bool
   functionC x y =
    if (x > y) then True else False
3. functionS :: (a, b) -> b
   functionS (x, y) = y

-- Given Type, write function --

-- example
-- myFunc :: (x -> y)
--        -> (y -> z)
--        -> c
--        -> (a, x) -> (a, z)
-- myFunc xToY yToZ _ (a, x) = (a, (yToZ (xToY x)))

-- 1. i :: a -> a
--    i x = x
-- 2. c :: a -> b -> a
--    c x y = x
-- 3. c'' :: b -> a -> b
--    c x y = x yes
-- 4. c' :: a -> b -> b
--    c x y -> y
-- 5. r :: [a] -> [a]
--    r [x : xs] = xs
-- 6. co :: (b -> c) -> (a -> b) -> a -> c
--    co bToC aToB a = bToC (aToB a)
--    co g f x = g (f x)
-- 7. a :: (a -> c) -> a -> a
--    a aToC x = aToC x
--    a f x = f x
-- 8. a' :: (a -> b) -> a -> b
--    a' aToB x = aToB x
--    a' f x = x

-- FIX IT--
 -- 1-2 fixIt_sing.hs
 -- 3   fixIt_arith.hs


-- TYPE KWON DO -- 

1. 
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g (f x)

2.
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w (q x)

3.
data X
data Y
data Z
xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (a, b) = (xz a, yz b)

4.
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f g x = (fst (g (f x)))



