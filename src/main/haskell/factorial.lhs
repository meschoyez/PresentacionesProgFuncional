{- Calculo del valor factorial

Expresion como se estila en imperativo
-}

> fact :: Int -> Int
> fact 0 = 1                -- (fact 1)
> fact n = n * fact (n - 1) -- (fact 2)

{- Veamos los pasos de resolucion

  fact 3
==> por (fact 2)
  3 * fact (3 - 1)
==> por definicion de (-)
  3 * fact 2
==> por (fact 2)
  3 * (2 * fact (2 - 1))
==> por definicion de (-)
  3 * (2 * fact 1))
==> por (fact 2)
  3 * (2 * (1 * fact (1 - 1)))
==> por definicion de (-)
  3 * (2 * (1 * fact 0))
==> por (fact 1)
  3 * (2 * (1 * 1))
==> por definicion de (*)
  3 * (2 * 1)
==> por definicion de (*)
  3 * 2
==> por definicion de (*)
  6

Pero si ingreso un negativo

  fact (-3)
==> por (fact 2)
  (-3) * fact ((-3) - 1)
==> por definicion de (-)
  (-3) * fact (-4)
==> por (fact 2)
  (-3) * ((-4) * fact ((-4) - 1))
==> por definicion de (-)
  (-3) * ((-4) * fact (-5)
==> por (fact 2)
  (-3) * ((-4) * ((-5) * fact ((-5) - 1)))
==> repite indefinidamente
  ...

-}

{-
El problema de recursion se puede evitar con versiones alternativas.

Podemos usar funciones definidas por partes.
-}

> factorial :: Int -> Int
> factorial n
>     | n == 0 = 1                     -- (factorial 1)
>     | n > 0  = n * factorial (n - 1) -- (factorial 2)
>     | otherwise  = error "Negativo"  -- (factorial error) 

{- 
O bien, podemos usar la estructura de decision. No se puede obviar la parte else.
-}

> fact' :: Int -> Int
> fact' n = if n > 0 then n * fact' (n - 1)
>           else if n == 0 then 1 else error "Negativo"

{- 
Una alternativa mas orientada a lo funcional es utilizar otras
funciones mas simples en el sentido de composicion de funciones.
 -}

> factorial' :: Int -> Int
> factorial' 0 = 1
> factorial' n = product [1..n]
