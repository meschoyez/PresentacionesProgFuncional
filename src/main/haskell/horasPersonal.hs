import System.IO (openFile, hGetContents, IOMode (ReadMode), hClose)
import Data.List (isPrefixOf)


{- Escanea archivo buscando hora de entrada y salida para los dias martes.
   Calcula la diferencia. -}
main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode  
    contenido  <- hGetContents archivo
    let lineas = lines contenido
        registros = filter ("\"Martes" `isPrefixOf`) lineas
        entrada = map (tomarCampo 2) registros
        salida  = map (tomarCampo 3) registros
        hEntrada = map tomarHora entrada
        hSalida =  map tomarHora salida
        horas = zipWith (-) hSalida hEntrada
        pHoras = map show horas
    putStrLn $ unlines pHoras
    hClose archivo

tomarCampo :: Int -> String -> [Char]
tomarCampo n = tail . init . (!! n) . words

{- Evita error cuando no hay registro -}
tomarHora :: [Char] -> Int
tomarHora "" = 0
tomarHora n = read (takeWhile (/= ':') n) :: Int