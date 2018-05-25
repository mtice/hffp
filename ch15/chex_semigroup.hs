{-# LANGUAGE CPP #-}
module SemiGex where

import Data.Semigroup
import Test.QuickCheck
import Test.Hspec

data Trivial = Trivial deriving(Eq, Show)

instance Semigroup Trivial where
    _ <> _ = Trivial
    -- or (<>) = Trivial

instance Monoid Trivial where
    mempty = Trivial
    mappend = (<>)

--------

-- instance Arbitrary Trivial where
--     arbitrary = return Trivial

-- semigroupAssoc :: (Eq m, Semigroup m) => m -> m -> m -> Bool
-- semigroupAssoc a b c =
--     (a <> (b <> c)) == ((a <> b) <> c)
-- type TrivAssoc = Trivial -> Trivial -> Trivial -> Bool
-- main :: IO ()
-- main =
--     quickCheck (semigroupAssoc :: TrivAssoc)
    