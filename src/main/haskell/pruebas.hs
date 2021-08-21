doble x = x + x
cuadruple x = doble (doble x)
factorial' n = product [1..n]
media ns = sum ns `div` length ns

{- 
Un comentario
multilinaa
de Haskell
Ctl + Shift + a
 -}

-- Una linea es Ctl + Shift + 7

a = b + c  -- Un comentario
  where
    b = 1
    c = 2

-- Funciones siempre devuelven un resultado
-- sumaDoble :: Integer -> Integer -> Integer
sumaDoble :: Num a => a -> a -> a
sumaDoble x y = 2*(x + y)

fact' :: Integer -> Integer
fact' n = if n > 0 then n * fact' (n - 1)
          else if n == 0 then 1
          else error "Negativo"

-- No es segura para factorial
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)


factorial :: Integer -> Integer
factorial n
    | n == 0    = 1
    | n > 0     = n * factorial (n - 1)
    | otherwise = error "Negativo"


cortarEn :: Int -> [a] -> ([a], [a])
cortarEn n xs = (take n xs, drop n xs)

(<>) :: Bool -> Bool -> Bool
True <> True  = True
True <> False = False


test2 :: [Char] -> Bool
test2 ('a':_) = True
test2 _       = False

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
sumar x y = x + y   -- (c)

siguiente ::  Integer -> Integer
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
