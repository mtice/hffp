-- 1.
k :: (a, b) -> a
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)
-- a) :t k is k :: (a, b) -> a
-- b) :t k2 is k2 :: (String a, Num b) => f (a, b) -> a
--    wrong.. Just [Char]. no params. Just result of everything on right. 
-- c) k1, k3

-- 2. 
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
