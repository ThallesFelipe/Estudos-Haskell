module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitFailure)

main :: IO ()
main = do
  argumentos <- getArgs

  case argumentos of
    [entrada, saida] -> do
      conteudo <- readFile entrada
      writeFile saida (processa conteudo)
    _ -> exitFailure

processa :: String -> String
processa = unlines . map processaAluno . lines

processaAluno :: String -> String
processaAluno linha =
  case words linha of
    [matricula, nome, nota1, nota2] ->
      let media = (read nota1 + read nota2) / 2
          situacao
            | media < 3 = "Reprovado :("
            | media < 6 = "Exame Especial."
            | otherwise = "Aprovado!"
       in unwords [matricula, nome, nota1, nota2, show media, situacao]