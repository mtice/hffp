multi0   = x * y
  where x = 5
        y = 6

-- 1. let x = 3; y = 1000 in x * 3 + y
multi1   = x * 3 + y
 where x = 3
       y = 1000
    
-- 2. let y = 10; x = 10 * 5 + y in x * 5
multi2    = x * 5
  where x = 10 * 5 + y
        y = 10
-- 3.
-- let x = 7
--     y = negate x
--     z = y * 10 in z / x + y
multi3    = z / x + y
  where x = 7
        y = negate x
        z = y * 10