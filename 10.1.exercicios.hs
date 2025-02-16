{-# LANGUAGE BlockArguments #-}

module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStr "Altura (m): "
  altura <- readLn
  putStr "Sexo (f/m): "
  sexo <- getLine
  if sexo == "F" || sexo == "f"
    then putStrLn ("Peso ideal: " ++ show (62.1 * altura - 44.7))
    else
      if sexo == "M" || sexo == "m"
        then putStrLn ("Peso ideal: " ++ show (72.7 * altura - 58))
        else putStrLn "Sexo inválido."