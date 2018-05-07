data Price = Price Integer deriving (Eq, Show)

data Manufacturer = 
    Mini
    | Mazda
    | Tata
    deriving (Eq, Show)

data Airline =
    PapuAir
    | CatapultsR'Us
    | TakeYourChancesUnited
    deriving (Eq, Show)

data Vehicle = 
    Car Manufacturer Price
    | Plane Airline
    deriving (Eq, Show)


-- 2)
isCar :: Vehicle -> Bool
isCar (Car _ _ ) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane (Plane _) = True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars [] = []
areCars xs = map isCar xs
-- 3) gets the Manufacturer of the V.
getManu :: Vehicle -> Manufacturer
getManu (Car m _) = m
-- some kind of error thing.

-- 5)
-- data Size Num (deriving Eq, Show)
-- data Vehicle = 
--     Car Manufacturer Price
--     | Plane Airline Size
--     deriving (Eq, Show)
-- isPlane :: Vehicle -> Bool
-- isPlane (Plane _ _) = True
-- isPlane _ = False



myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
daPlane = Plane PapuAir
-- daPlane = Plane PapuAir (Size 10000)

threeCs :: [Vehicle]
threeCs = [myCar, urCar, clownCar]
cvc :: [Vehicle]
cvc = [myCar, daPlane, clownCar]


            