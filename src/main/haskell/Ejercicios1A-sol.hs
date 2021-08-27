-- A
{- 
Escriba una funcion recursiva que calcule el resto de la
division entera utilizando solamente restas.
 -}

import System.Directory.Internal.Prelude (Integral)
resto :: Integral a => a -> a -> a
resto m n
    | m < n = m
    | otherwise = resto (m-n) n

{- >>> resto 10 9 
1
-}

{- 
Escriba una funcion recursiva que calcule la sumatoria de los
enteros entre a y b:
   sumarAB a b = a + (a+1) + (a+2) + ... + (b-1) + b
 -}

sumarAB :: Integral a => a -> a -> a
sumarAB x y
     | x == y = x + y
     | x < y  = x + sumarAB (x+1) y
     | otherwise = error "No converge"

{- >>> sumarAB 1 5 
20
-}

{- 
Escriba una funcion que calcule la suma de las cifras de un
entero:
   sumaCifras 123 = 6
 -}

sumaCifras :: Integral a => a -> a
sumaCifras 0 = 0
sumaCifras n = mod n 10 + sumaCifras (div n 10)

{- >>> sumaCifras 1234 
10
-}

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
