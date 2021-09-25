
{- Al finalizar esta ejercitación se tendrá un módulo útil
   para gestionar datos de tiempo en formato de horas y minutos.

   Se deben contemplar las siguientes restricciones:
    - Los minutos estarán restringidos a valores entre 0 y 59
    - Las horas deben ser mayores a cero

   Nota: Revisar lo presentado en "tema-9.pdf" de "Class Materials"
 -}

{- 1- Definir el tipo sinónimo de dato Hora que almacenará una
      hora del día normalizada en minutos.
      El día comienza a las 00:00 -}

data Hora = Int deriving (Show, Eq)

