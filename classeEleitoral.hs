module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

classeEleitoral idade
  | idade < 16 = putStrLn "Não eleitor."
  | idade >= 18 && idade < 65 = putStrLn "Eleitor obrigatório."
  | otherwise = putStrLn "Eleitor facultativo."

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "Classe Eleitoral"
  putStrLn "-------------------------------------------"

  putStr "Digite a idade da pessoa: "
  idade <- readLn

  classeEleitoral idade