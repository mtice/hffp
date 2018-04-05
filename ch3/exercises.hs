module LoadToSeeCode where
-- 1.
--  a) concat [[1, 2, 3], [4, 5, 6]]
--   good
--  b) ++ [1, 2, 3] [4, 5, 6]
--    (++) [1, 2, 3] [4, 5, 6]
--  c) (++) "hello" " world"
--    good
--  d) -- ["hello" ++ " world]
--   ["hello" ++ " world"]
--  e) 4 !! "hello"
--    ("hello") !! 4
--  f) (!!) "hello" 4
--    good
--  g) take "4 lovely"
--    take 4 "lovely"
--  3) take 3 "awesome"
--    good

-- 2.
--  a) concat [[1 * 6], [2 * 6], [3 * 6]]
--   d) [6, 12, 18]
--  b) "rain" ++ drop 2 "elbow"
--   c) "rainbow"
--  c) 10 * head [1, 2, 3]
--   3) 10
--  d) (take 3 "Julie") ++ (tail "yes")
--    a) "Jules"
--  e) concat [tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]]
--   b) [2,3,5,6,8,9]

--  BUILDING FUNCTIONS  --
-- 2.
-- ex. input: "Hello World", output "ello World"
fex xs = drop 1 xs
-- a. "Curry is awesome", "Curry is awesome!"
fa xs = xs ++ "!"
-- b. "Curry is awesome!", "y"
fb xs = [(xs !! 4)]
-- c. "Curry is awesome!", "awesome!"
fc xs = drop 9 xs

-- LOAD THIS FILE FOR #2

-- 3.
thirdLetter :: [Char] -> Char
thirdLetter xs = xs !! 2

-- 4.
letterIndex :: Int -> Char
letterIndex x = xs !! x
    where xs = "Curry is awesome"

-- 5.
rvrs :: [Char] -> [Char]
rvrs xs = awesome ++ " " ++ is " " ++ curry
   where curry = take 5 xs
         is = (take 2 (drop 6 xs))
         awesome = (drop 9 xs)
-- 6. 
 -- LOAD THIS FILE --



    