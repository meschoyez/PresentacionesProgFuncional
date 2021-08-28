import Data.Data

data Dia
  = Lunes
  | Martes
  | Miercoles
  | Jueves
  | Viernes
  | Sabado
  | Domingo
  deriving (Show, Enum, Eq)

sig :: Num a => a -> a
sig c = c + 1

{- >>>sig 16
17
-}

doble x = x + x

cuadruple x = doble (doble x)

factorial' n = product [1 .. n]

media ns = sum ns `div` length ns

{-
Un comentario
multilinaa
de Haskell
Ctl + Shift + a
 -}

-- Una linea es Ctl + Shift + 7

a = b + c -- Un comentario
  where
    b = 1
    c = 2

-- Funciones siempre devuelven un resultado
-- sumaDoble :: Integer -> Integer -> Integer
sumaDoble :: Num a => a -> a -> a
sumaDoble x y = 2 * (x + y)

fact' :: Integer -> Integer
fact' n =
  if n > 0
    then n * fact' (n - 1)
    else
      if n == 0
        then 1
        else error "Negativo"

-- No es segura para factorial
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

factorial :: Integer -> Integer
factorial n
  | n == 0 = 1
  | n > 0 = n * factorial (n - 1)
  | otherwise = error "Negativo"

cortarEn :: Int -> [a] -> ([a], [a])
cortarEn n xs = (take n xs, drop n xs)

(<>) :: Bool -> Bool -> Bool
True <> True = True
True <> False = False

test2 :: [Char] -> Bool
test2 ('a' : _) = True
test2 _ = False

{-
siguiente = (1+)  -- (a)
siguiente 5       -- (b)

siguiente 5
==> por (a)
1 + 5
==> por (+)
6
 -}

sumar :: Integer -> Integer -> Integer
sumar x y = x + y -- (c)

siguiente :: Integer -> Integer
siguiente = sumar 1 -- (d)

{-
siguiente 5
==> por (d)
sumar 1 5
==> por (c)
1 + 5
==> por (+)
6
 -}

{- Definir una funcion para calcular el numero
   de bits necesario para representar un valor

   29 -> 14(1) -> 7(0) -> 3(1) -> 1(1)
-}

bits :: Int -> Int
bits 0 = 1
bits 1 = 1
bits n = 1 + bits (div n 2)

{- >>> bits 8
4
 -}

bits' :: Int -> Int
bits' n
  | n == 0 || n == 1 = 1
  | n > 1 = 1 + bits (div n 2)
  | otherwise = error "Valor Negativo"

{- >>> bits' (-15)
Valor Negativo
-}

{- Definir una funcion para convertir el numero
   en binario

   29 -> 14(1) -> 7(0) -> 3(1) -> 1(1)
-}

binario :: Int -> [Char]
binario n
  | n == 1 = ['1']
  | n == 0 = ['0']
  | n > 1 = binario (div n 2) ++ show (mod n 2)
  | otherwise = error "Valor Negativo"

{- >>> binario 128
"10000000"
-}


{- Lista de valores x+y cuando x es distinto de y
   para rango [5,10]
-}

lista1 = [ x+y | x <- [5..10], y <- [5..10], x /= y ]

{- >>> lista1 
[11,12,13,14,15,11,13,14,15,16,12,13,15,16,17,13,14,15,17,18,14,15,16,17,19,15,16,17,18,19]
-}

lista2 = [ (x,y) | x <- [5..10], y <- [5..10], x == y+2 ]

{- >>> lista2 
[(7,5),(8,6),(9,7),(10,8)]
-}

lista3 = [ x^2 | x <- [5..10] ]
{- >>> lista3 
[25,36,49,64,81,100]
-}
