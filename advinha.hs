module Main (main) where

import Control.Monad (when)
import Data.Char (toUpper)
import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import System.Random (randomRIO)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn ""
  putStrLn "=================="
  putStrLn "ADIVINHA O NÚMERO!"
  putStrLn "=================="
  putStrLn ""

  jogar

simOuNao :: String -> IO Bool
simOuNao pergunta = do
  putStr pergunta
  resposta <- getLine
  case map toUpper resposta of
    "S" -> return True
    "N" -> return False
    _ -> do
      putStrLn "RESPOSTA INVÁLIDA!"
      simOuNao pergunta

acertar :: Integer -> IO ()
acertar secreto = do
  putStr "Digite um número entre 1 e 1000: "
  numero <- readLn
  if numero == secreto
    then putStrLn "Parabéns, você acertou!"
    else do
      putStrLn (if numero < secreto then "Muito pequeno. <" else "Muito grande. >")
      putStrLn "Tente novamente..."
      acertar secreto

jogar :: IO ()
jogar = do
  numeroSecreto <- randomRIO (1, 1000)
  acertar numeroSecreto
  resposta <- simOuNao "Deseja jogar novamente?"
  when resposta jogar