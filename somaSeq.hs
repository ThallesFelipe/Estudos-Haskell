module Main (main) where

lerESoma total = do
  n <- readLn
  if n == 0
    then return total
    else lerESoma (total + n)

main :: IO ()
main = do
  putStrLn "Digite uma sequência de números (um por linha)."
  putStrLn ""
  putStrLn "Para terminar digite o valor zero (0)."

  soma <- lerESoma 0

  putStrLn ("A soma dos números digitados é: " ++ show soma)