-- multi choice
-- d, b, d, b

-- currying
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appendCatty :: String -> String
appendCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- 1. appendCatty "whooo" is woopsmrowwoohoo!" 
-- 2. frappe "1"
-- 3. frappe (appendCatty "2")
-- 4. appendCatty (frappe "blue")
-- 5. cattyConny (frappe "pink")
--               (cattyConny "green" (appendCatty "blue"))
-- 6. cattyConny (flippy "Pugs" "are") "awesome"


-- Recursion
-- 2. 
addToN :: (Eq a, Num a ) => a -> a
addToN n
  | n /= 0    = n + (addToN (n - 1))
  | otherwise = 0

multSum :: (Integral a) => a -> a -> a
multSum _ 0 = 0
multSum x y = x + (multSum x (y -1))

data DividedResult =
    Result Integer
  | DividedByZero

divByFix


mc91 :: Integer a => a ->
mc91 n
  | n > 100 = n -10
  | otherwise =  mc91 $ mc91 $ (n + 11)