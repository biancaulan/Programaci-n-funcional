module CalendarioInteractivo (main) where

import Calendario (printCalendario)

-- Función principal
main :: IO ()
main = do
    year <- solicitarAño
    columns <- solicitarColumnas
    putStrLn "\nCalendario generado:\n"
    printCalendario columns year

-- Solicita al usuario un año válido.
solicitarAño :: IO Int
solicitarAño = do
    putStrLn "Introduce el año (un número positivo, menor a 10000):"
    input <- getLine
    case readMaybe input of
        Just year | year > 0 && year < 10000 -> return year
        _ -> do
            putStrLn "Año no válido. Prueba de nuevo."
            solicitarAño

-- Solicita al usuario un número válido de columnas (3 o 4).
solicitarColumnas :: IO Int
solicitarColumnas = do
    putStrLn "Introduce el número de columnas (3 o 4):"
    input <- getLine
    case readMaybe input of
        Just cols | cols == 3 || cols == 4 -> return cols
        _ -> do
            putStrLn "Valor no válido. Valores válidos: 3 o 4."
            solicitarColumnas

-- Función auxiliar para leer números de forma segura.
readMaybe :: Read a => String -> Maybe a
readMaybe s = case reads s of
    [(x, "")] -> Just x
    _         -> Nothing