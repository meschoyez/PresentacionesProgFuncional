{- Cartas Españolas -}

data Palo = Espada | Oro | Copa | Basto deriving (Show, Eq, Ord, Enum)

valor40 = [1..7] ++ [10..12]
valor50 = [1..12]

data Carta = Carta Int Palo
--  deriving (Show) 

instance Show Carta where
    show (Carta v p) = show v ++ " de " ++ show p

mazo40 = [Carta v p | p <- [Espada ..], v <- valor40]

mazo50 = [Carta v p | p <- [Espada ..], v <- valor50]

-- putStrLn unlines ( map show mazo50 )
