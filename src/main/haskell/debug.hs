module Debug where

suma' :: Int -> Int -> Int
suma' x y = x + y

sucesor :: Int -> Int
sucesor = suma' 1

anterior :: Int -> Int
anterior = suma' (-1)

{- factorial' :: (Eq p, Num p, Enum p) => p -> p -}
factorial' :: Int -> Int
factorial' 0 = 1
factorial' n = product [1..n]

