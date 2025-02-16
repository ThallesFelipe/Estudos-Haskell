module Main (main) where

main :: IO ()
main = do
  putStrLn "Digite um número:"
  num1 <- getLine
  putStrLn "Digite outro número:"
  num2 <- getLine
  putStrLn "Digite outro número:"
  num3 <- getLine
  putStr "Produto dos números digitados: "
  let n1 = read num1 :: Double
      n2 = read num2
      n3 = read num3
      produto = n1 * n2 * n3
  print produto