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

  print (read num1 * read num2 * read num3 :: Double)