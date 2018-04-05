module Ch4CorrectingSyntax where

-- 1. Here, we want a function that adds 1 to the length of a string argument
--    and returns that result.

   x = (+)

   f xs = w `x` 1
        where w = length xs

-- 2. This is supposed to be the identity function, id. 
      -- \X = x
    id' = \x -> x
    -- or x = x

-- 3. When  fixed, this function will return 1 from the value (1, 2).
      -- fst' (a b) = A
      fst' = \(a, b) -> a
      -- or (a, b) = a
