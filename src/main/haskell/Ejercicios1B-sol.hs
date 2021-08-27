-- B
{- 
Escriba una funcion recursiva que calcule el cociente de la
division entera utilizando solamente sumas y restas.
 -}

import Distribution.Simple.Utils (cabalVersion)
division :: Integral a => a -> a-> a
division m n
    | m < n = 0
    | otherwise = 1 + division (m-n) n

{- >>> division 10 1
10
-}

{-
Escriba una funcion recursiva que calcule el producto de los
enteros entre a y b:
   prodAB a b = a * (a+1) * (a+2) * ... * (b-1) * b
 -}

prodAB :: (Integral a) => a -> a -> a
prodAB a b
    | a == b = b
    | a < b = a * prodAB (a+1) b
    | otherwise = error "No converge"

{- >>> prodAB 4 3  
No converge
-}

{- 
Escriba una funcion que calcule la cantidad de cifras de un
entero:
   cantCifras 123 = 3
 -}

cantCifras :: Int -> Int
cantCifras n
   | n == 0 = 0
   | n > 0 = 1 + cantCifras (div n 10)
   | otherwise = error "No converge"

{- >>> cantCifras 1234 -}

{- 
Dada la representacion de fechas como tupla (day, month, year),
definir la funcion showFecha :: (Int, Int, Int) -> [Char].
Ejemplos: 
   showFecha (10, 12, 2013) = "10 de Diciembre de 2013"
   showFecha (21,  0, 2021) = "21 de Enero de 2021"
Recordar que Int es de la clase Show, y se puede usar la
instruccion show para convertir a string.
 -}

meses = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio",
    "Agosto","Septiembre", "Octubre","Noviembre","Diciembre"]
showFecha :: (Int, Int, Int) -> [Char]
showFecha (d,m,a) = show d ++ " de " ++ meses !! (m-1) ++ " de " ++ show a

