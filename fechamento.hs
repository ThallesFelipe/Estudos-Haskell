module Main where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStrLn "FECHAMENETO DE NOTAS"
  putStrLn "===================="

  putStr "Quantidade de alunos: "
  quantidadeAlunos <- readLn
  notas <- leNotas quantidadeAlunos 1
  let media = mediaTurma notas
  putStrLn ("Média da turma: " ++ show media)

leNotas :: Int -> Int -> IO [(Float, Float, Float)]
leNotas n i
  | i > n = return []
  | otherwise = do
      putStrLn ("Aluno " ++ show i)
      putStr " nota 1: "
      n1 <- readLn
      putStr " nota 2: "
      n2 <- readLn
      putStr " nota 3: "
      n3 <- readLn

      resto <- leNotas n (i + 1)
      return ((n1, n2, n3) : resto)

somaNotas :: [(Float, Float, Float)] -> Float
somaNotas [] = 0
somaNotas ((n1, n2, n3) : resto) = (n1 + n2 + n3) / 3 + somaNotas resto

mediaTurma :: [(Float, Float, Float)] -> Float
mediaTurma notas = somaNotas notas / fromIntegral (length notas)