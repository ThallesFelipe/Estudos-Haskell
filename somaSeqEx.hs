module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

lerESoma n s
  | n <= 0 = return s
  | n > 0 = do
      putStr "Digite um número: "
      x <- readLn
      lerESoma (n - 1) (x + s)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStr "Quantidade de números: "
  n <- readLn
  s <- lerESoma n 0

  putStr "A soma dos números digitados: "
  print s