{- Fechas
   -----------
   Ejercicio 7.9.1. Definir el tipo de datos Mes para representar los doce meses y
   hacerlo instancia de Eq y Show.

   Solución: -}

data Mes = Enero | Febrero | Marzo | Abril | Mayo | Junio |
           Julio | Agosto | Septiembre | Octubre | Noviembre | Diciembe deriving (Show, Eq)

{- Ejercicio 7.9.2. Definir la función
   divisible :: Int -> Int -> Bool
   tal que (divisible x y) se verifica si x es divisible por y. Por ejemplo,
   divisible 9 3 ; True
   divisible 9 2 ; False

   Solución: -}

divisible :: Integral a => a -> a -> Bool
divisible m n | mod m n == 0 = True 
              | otherwise    = False 

{- Ejercicio 7.9.3. La definición de año bisiesto es 
   . un año divisible por 4 es un año bisiesto (por ejemplo 2008); 
   . excepción: si es divisible por 100, entonces no es un año bisiesto 
   . excepción de la excepción: si es divisible por 400, entonces es un año 
     bisiesto (por ejemplo 2000).
	 
   Definir la función
   bisiesto :: Int -> Bool
   tal que (bisiesto a) se verifica si el año a es bisiesto. Por ejemplo,
   bisiesto 2008 ; True
   bisiesto 1900 ; False
   bisiesto 2000 ; True
   bisiesto 2007 ; False

   Solución: -}

bisiesto :: Integral a => a -> Bool
bisiesto n | divisible n 400 = True
           | divisible n 100 = False
           | divisible n 4   = True
           | otherwise       = False

{- Ejercicio 7.9.4. Definir la función
   diasDelMes :: Mes -> Int -> Int
   tal que (diasDelMes m a) es el número de días del mes m del año a. Por ejemplo,
   diasDelMes Febrero 2008 ; 29
   diasDelMes Febrero 2007 ; 28

   Solución: -}

diasDelMes :: (Integral a, Num p) => Mes -> a -> p
diasDelMes Febrero a | bisiesto a = 29
                     | otherwise  = 28
diasDelMes m _ | m `elem` [Enero, Marzo, Mayo, Julio, Agosto, Octubre, Diciembe] = 31
diasDelMes _ _ = 30

{- Ejercicio 7.9.5. Definir el tipo Fecha para representar las fechas mediante el 
  día, el mes y el año. Por ejemplo,
  Main> :t F 3 Enero 2000
  F 3 Enero 2000 :: Fecha
  Main> :i Fecha
  -- type constructor
  data Fecha
  
  -- constructors:
  F :: Int -> Mes -> Int -> Fecha
  -- selectors:
  dia :: Fecha -> Int
  mes :: Fecha -> Mes
  agno :: Fecha -> Int

  Solución: -}

data Fecha = Fecha Int Mes Int
dia :: Fecha -> Int
dia  (Fecha d _ _) = d
mes :: Fecha -> Mes
mes  (Fecha _ m _) = m
agno :: Fecha -> Int
agno (Fecha _ _ a) = a

{- Ejercicio 7.9.6. Definir la función
   fechaValida :: Fecha -> Bool
   tal que (fechaValida f) se verifica si f es una fecha válida. Por ejemplo,
   fechaValida (F 29 Febrero 2008) ; True
   fechaValida (F 0 Febrero 2008) ; False
   fechaValida (F 29 Febrero 2007) ; False

   Solución: -}
   
fechaValida f = 0 < dia f && dia f <= diasDelMes (mes f) (agno f)

