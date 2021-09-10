import System.IO (openFile, IOMode (ReadMode), hGetLine, hClose, hGetContents)
import Data.List (isPrefixOf, isInfixOf)

{- Leer archivo -}

main = do
    archivo <- readFile "09septiembre2019.txt"
    putStrLn archivo


{- Leer una palabra de una linea -}
{- 
main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode
    linea <- hGetLine archivo
    let campos = words linea
    putStrLn $ campos !! 2
    hClose archivo
 -}

{- Numerar las lineas -}
{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    lineas <- hGetContents archivo
    let linea = lines lineas
        numeradas = zipWith (\n lineas -> show n ++ " - " ++ lineas) [0..] linea
    putStrLn $ unlines numeradas
    hClose archivo
 -}

{- Solo las lineas con contenido -}
{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    contenido <- hGetContents archivo
    let lineas = lines contenido
        conDatos = filter (\linea -> length linea > 1) lineas
    putStrLn $ unlines conDatos
    hClose archivo
 -}

{- Solo las lineas con nombre de empleado -}
{- main = do
    archivo <- openFile "09septiembre2019.txt" ReadMode 
    contenido  <- hGetContents archivo
    let lineas = lines contenido
        registros = filter ("Empleado:" `isInfixOf`) lineas
{-         nombres = map (head . drop 3 . words) registros -}
        nombres = map ((!! 3) . words) registros
    putStrLn $ unlines nombres
{-     let numerados = zipWith (\n nombres -> show n ++ " - " ++ nombres) [0..] nombres
    putStrLn $ unlines numerados -}
    hClose archivo
 -}
