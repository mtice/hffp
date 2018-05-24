module Cyper where
import Data.Char



-- TODO NOT JUST LOWERCASE
-- a == 0, z == 25
chToInt :: Char -> Int
chToInt c = ord c - ord 'a'

indexToUcode :: Int -> Int
indexToUcode n = n + ord 'a'
--- do it with uppercase.
--GET THIS TO WORK.
fShiftByNum :: (Int -> Int -> Int) -> Char -> Int -> Int
fShiftByNum f c n = mod (f (chToInt c) n) ((+) 1 (chToInt 'z'))

shiftBy :: Char -> Int -> Char
shiftBy c n = chr . indexToUcode . fShiftByNum (+) c $ n

unShiftBy :: Char -> Int -> Char
unShiftBy c n = chr . indexToUcode . fShiftByNum (-) c $ n


ceasar :: String -> Int -> String
ceasar message n = map (\ch -> shiftBy ch n) message

unCeasar :: String -> Int -> String
unCeasar message n = map (\ch -> unShiftBy ch n) message
