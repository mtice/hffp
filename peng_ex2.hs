module PP where 
    data WherePenguinsLive =
        Galapagos
      | Antarctica
      | Australia
      | SouthAfrica
      | SouthAmerica
      deriving (Eq, Show)

    data Penguin =
      Peng WherePenguinsLive 
      deriving (Eq, Show)

    gimmeWhereTheyLive :: Penguin
                    -> WherePenguinsLive
    gimmeWhereTheyLive (Peng whereitlives) = whereitlives

    galapagosPenguin :: Penguin -> Bool
    galapagosPenguin (Peng Galapagos) = True
    galapagosPenguin _ = False

    antarcticPenguin :: Penguin -> Bool
    antarcticPenguin (Peng Antarctica) = True
    antarcticPenguin _ = False

    antarcticOrGalapagos :: Penguin -> Bool
    antarcticOrGalapagos p =
        (galapagosPenguin p)
        || (antarcticPenguin p)

-- data
    humboldt :: Penguin
    humboldt = Peng SouthAmerica
    gentoo :: Penguin
    gentoo = Peng Antarctica
    macaroni :: Penguin
    macaroni = Peng Antarctica
    little :: Penguin
    little = Peng Australia
    galapagos :: Penguin
    galapagos = Peng Galapagos
