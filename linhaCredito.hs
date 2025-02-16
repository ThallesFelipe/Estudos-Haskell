module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "Análise de Crédito"
  putStrLn "-------------------------------------------"

  putStr "Salário bruto: "
  salarioBruto <- readLn

  putStr "Valor da prestação: "
  valorPrestacao <- readLn

  if valorPrestacao <= (salarioBruto * 0.3)
    then putStrLn "O emprétimo pode ser concedido."
    else putStrLn "O emprétimo NÃO pode ser concedido."