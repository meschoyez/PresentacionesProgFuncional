import System.IO (openFile, IOMode (ReadMode), hGetContents, hClose, hGetLine)
import Data.Char (toUpper, toLower, toTitle)
import Data.List (intercalate, isInfixOf, isPrefixOf)

{- Leer archivo -}

{- main = do
    archivo <- openFile "programa.hs" ReadMode
    contenido <- hGetLine archivo
    putStrLn contenido
    hClose archivo
 -}
{- main = do
    archivo <- readFile "programa.hs"
    appendFile "progCaps.txt" (map toUpper archivo)
 -}

{- main = do
    let texto = unwords ["hey","there","guys"]
    writeFile "progCaps.txt" texto
 -}
{- Leer una palabra de una linea -}

{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode
    linea <- hGetLine archivo
    let campos = words linea
    putStrLn $ campos !! 1
    hClose archivo
 -}

{- Numerar las lineas -}
{- main = do
    archivo <- openFile "programa.hs" ReadMode 
    lineas <- hGetContents archivo
    let linea = lines lineas
        numeradas = zipWith (\n lineas -> show n ++ ": " ++ lineas) [0..] linea
    putStrLn $ unlines numeradas
    hClose archivo
 -}

{- Solo las lineas con contenido -}
{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    contenido <- hGetContents archivo
    let lineas = lines contenido
        conDatos = filter (\linea -> length linea > 1) lineas
{-         conDatos = filter (\l -> not (null l)) lineas -}
    putStrLn $ unlines conDatos
    hClose archivo -}


{- Solo las lineas con nombre de empleado -}
{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    contenido  <- hGetContents archivo
    let lineas = lines contenido
        registros = filter ("\"Empleado" `isPrefixOf`) lineas
{-         nombres = map (head . drop 3 . words) registros -}
        nombres = map (tail . init . (!! 3) . words) registros
{-     putStrLn $ unlines nombres -}
        numerados = zipWith (\n nomb -> show n ++ " - " ++ nomb) [1..] nombres
    putStrLn $ unlines numerados
    hClose archivo -}

main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    contenido  <- hGetContents archivo
    let lineas = lines contenido
        registros = filter ("\"Martes" `isPrefixOf`) lineas
        entrada = map (tail . init . (!! 2) . words) registros
        salida = map (tail . init . (!! 3) . words) registros
        hEntrada = map (\n -> read (takeWhile (/= ':') n) :: Int) entrada
        hSalida =  map (\n -> read (takeWhile (/= ':') n) :: Int) salida
{-         numerados = zipWith (\n nomb -> show n ++ " - " ++ nomb) [1..] nombres -}
        horas = zipWith (-) hSalida hEntrada
        pHoras = map show horas
    putStrLn $ unlines $ map show horas
    hClose archivo

