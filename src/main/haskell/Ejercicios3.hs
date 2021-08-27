{- Segmentos iniciales
   ------------------------
   Ejercicio 4.1. Definir la funcion iniciales tal que iniciales l es la lista de 
   los segmentos iniciales de la lista l. Por ejemplo,
   iniciales [2,3,4] ; [[],[2],[2,3],[2,3,4]]
   iniciales [1,2,3,4] ; [[],[1],[1,2],[1,2,3],[1,2,3,4]]

 -} 

{- Segmentos finales
   ----------------------
   Definir la funcion finales tal que finales l es la lista de los 
   segmentos finales de la lista l. Por ejemplo,
   finales [2,3,4] ; [[2,3,4],[3,4],[4],[]]
   finales [1,2,3,4] ; [[1,2,3,4],[2,3,4],[3,4],[4],[]]

 -}

{- Segmentos
   --------------
   Definir la función segmentos tal que segmentos l es la lista de
   los segmentos de la lista l. Por ejemplo,
   
   Main> segmentos [2,3,4]
   [[],[4],[3],[3,4],[2],[2,3],[2,3,4]]

   Main> segmentos [1,2,3,4]
   [[],[4],[3],[3,4],[2],[2,3],[2,3,4],[1],[1,2],[1,2,3],[1,2,3,4]]

 -}

{- Sublistas
   --------------
   Definir la funcion sublistas tal que sublistas l es la lista de
   las sublistas de la lista l. Por ejemplo,
   
   Main> sublistas [2,3,4]
   [[2,3,4],[2,3],[2,4],[2],[3,4],[3],[4],[]]

   Main> sublistas [1,2,3,4]
   [[1,2,3,4],[1,2,3],[1,2,4],[1,2],[1,3,4],[1,3],[1,4],[1],
   [2,3,4], [2,3], [2,4], [2], [3,4], [3], [4], []]

 -}
