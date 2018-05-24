module FirstMappend where
import Data.Monoid

-- From MOptional.hs
data Optional a =
    Nada
  | Only a
  deriving (Eq, Show)

instance Monoid a => Monoid (Optional a) where
    mempty = Nada
    mappend Nada Nada = Nada
    mappend Nada (Only a) = Only a
    mappend (Only a) (Only b) = Only (a <> b)
    mappend (Only a) Nada = Only a

newtype First' a =
    First' { getFirst' :: Optional a }
    deriving (Eq, Show)

instance Monoid (First' a) where
    mempty = First' Nada
    mappend = (<>)

firstMappend :: First' a -> First' a -> First' a
firstMappend (First' Nada) b = b
firstMappend a _             = a

type FirstMappend = First' String -> First' String -> First' String -> Bool

type FstId = First' String -> Bool

-- | QuickCheck generator for First'
firstGen :: Arbitrary a => Gen (First' a)
firstGen = do
    a <- arbitrary
    frequency [(1, return $ First' Nada), (3, return $ First' (Only a))]

instance Arbitrary a =>
         Arbitrary (First' a) where
    arbitrary = firstGen