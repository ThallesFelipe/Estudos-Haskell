module Main (main) where

import System.Environment (getArgs, getProgName)
import System.Exit (exitFailure)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [input, output] ->
      do
        putStrLn ("Entrada: " ++ input)
        putStrLn ("Saída  : " ++ output)
    _ ->
      do
        progNome <- getProgName
        putStrLn ("Chamada inválida do programa: " ++ progNome)
        putStrLn ("Uso: " ++ progNome ++ " <arquivo-entrada> <arquivo-saída>")
        exitFailure