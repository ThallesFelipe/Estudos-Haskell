module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()

prompt mensagem = do
  putStr mensagem
  readLn

main = do
  hSetBuffering stdout NoBuffering

  putStrLn ""

  nota1 <- prompt "Nota 1: "
  nota2 <- prompt "Nota 2: "
  nota3 <- prompt "Nota 3: "

  let media = (nota1 + nota2 + nota3) / 3
  putStrLn ("Média: " ++ show media)
  putStrLn ""

  putStr "Situação: "
  if media < 3
    then putStrLn "Reprovado!"
    else if media < 7
        then putStrLn "Exame Especial."
        else putStrLn "Aprovado!"