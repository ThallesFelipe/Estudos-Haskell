module Main (main) where

import System.Environment (getArgs, getProgName)

main :: IO ()
main = do
  progNome <- getProgName
  putStr "O nome do programa é ...: "
  print progNome
  args <- getArgs
  putStr "Os argumentos são ...: "
  print args