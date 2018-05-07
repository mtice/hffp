data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

type Gardner = String

-- 1)
data Garden =
    Garden Gardener FlowerType
    deriving Show
-- sum of products:: 
-- data Garden = 
--     Gardenia Gardener
--     | Daisy Gardener
--     | Rose Gardener
--     | Lilac Gardener
--     deriving Show
