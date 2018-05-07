--just imports Data.Char
import Data.Char

-- Ch9Ex
-- 2)
onlyUpper :: String -> String
onlyUpper xs = filter isUpper xs
-- filter isUpper "HbEfLrLxO"

-- 3)
capFirst :: String -> String
capFirst "" = ""
capFirst (x:xs) = toUpper x : xs

-- 4)
capRec :: String -> String
capRec "" = ""
capRec (x:xs) = toUpper x : capRec xs
-- cap xs = map toUpper xs

-- 5,6)
capFirst' :: String -> Char
-- --capFirst "" = ''
capFirst' = toUpper . head