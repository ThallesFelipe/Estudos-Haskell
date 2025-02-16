module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

formaTernoPitagorico a b c = do
  hSetBuffering stdout NoBuffering

  if a < 0 || b < 0 || c < 0
    then putStrLn "NÚMEROS INVÁLIDOS!"
    else
      if (a ^ 2 + b ^ 2) == c ^ 2
        then putStrLn "Os números formam um terno pitagórico."
        else putStrLn "Os números NÃO formam um terno pitagórico."

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "Verificação de ternos pitagóricos"
  putStrLn "-----------------------------------------"
  putStr "Digite o primeiro número positivo .....: "
  numero1 <- readLn
  putStr "Digite o segundo número positivo ......: "
  numero2 <- readLn
  putStr "Digite o terceiro número positivo .....: "
  numero3 <- readLn

  formaTernoPitagorico numero1 numero2 numero3