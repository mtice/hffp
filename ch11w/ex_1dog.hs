data PugType = PugData
data HuskyType a = HuskyData
data DogueDeBordeaux doge = DogueDeBordeaux doge

myPug = PugData :: PugType

myHusky :: HuskyType a
myHusky = HuskyData

myOtherHusky :: Num a => HuskyType a
myOtherHusky = HuskyData

myDoge :: DogueDeBordeaux Int
myDoge = DogueDeBordeaux 10

data Doggies a =
    Husky a
    | Mastiff a
    deriving (Eq, Show)

1. Type 
2. :k Doggies => Doggies * -> *
3. :k Doggies String => *
4. :t Husky 10 :: Num a => Doggies a
5. :t Husky (10 :: Integer) => Doggies Integer
6. :t Mastiff "Scooby Doo" => Doggies String
7. depends. It's both.
8. :t DogueDeBordeaux => doge -> DogueDeBordeaux doge
9. : DogueDeBordeaux "doggie!" => DogueDeBordeaux String
