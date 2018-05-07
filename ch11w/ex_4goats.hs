{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- {-# LANGUAGE FlexibleInstances #-}
class TooMany a where
    tooMany :: a -> Bool
instance TooMany Int where
    tooMany n = n > 42
newtype Goats =
    Goats Int deriving (Eq, Show, TooMany)

-- not needed with GeneralizedNewtypeDeriving
-- instance TooMany Goats where
--     tooMany (Goats n) = tooMany n

-- Logic Goats
newtype Goaty = Goaty (Int, String) deriving Show
instance TooMany Goaty where
    tooMany (Goaty (x, _)) = x > 42

newtype Goat3 = Goat3 (Int, Int) deriving Show
instance TooMany Goat3 where
    tooMany (Goat3 (x, y)) = x + y > 42

-- newtype (Num a, TooMany a) => GoatFun = (a, a) deriving Show





