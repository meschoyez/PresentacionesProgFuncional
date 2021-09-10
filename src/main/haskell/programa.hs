main = do
    putStrLn "Programa en Haskell"
    putStr "Ingrese su nombre "
    nombre <- getLine
    putStrLn $ "Hola " ++ nombre
