suma' :: Int -> Int -> Int
suma' x y = x + y

sucesor :: Int -> Int
sucesor = suma' 1

anterior :: Int -> Int
anterior = suma' (-1)
