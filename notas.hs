module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

type Matricula = Int

type Nota = Float

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "======================================="
  putStrLn "       Fechamento de Notas BCC222"
  putStrLn "======================================="

  putStr "Quantidade de alunos na turma: "
  quantidadeDeAlunos <- readLn

  dados <- leDadosAlunos quantidadeDeAlunos

  let notasFinais = calculaNotaFinal dados
  putStrLn ""
  putStrLn "Notas Finais:"
  exibeLista notasFinais

  let situacoes = calculaSituacao notasFinais
  putStrLn ""
  putStrLn "Situações:"
  exibeLista situacoes

  let mediaTurma = calculaMediaTurma notasFinais
  putStr ""
  putStrLn "Média da Turma:"
  print mediaTurma

  let percentualAprovados = calculaAprovados notasFinais
  putStrLn ""
  putStrLn "Percentual de Aprovação:"
  putStr "% "
  print percentualAprovados

  let percentualReprovados = calculaReprovados notasFinais
  putStrLn ""
  putStrLn "Percentual de Reprovados:"
  putStr "% "
  print percentualReprovados

  let percentualExames = calculaExames notasFinais
  putStrLn ""
  putStrLn "Percentual de Exames:"
  putStr "% "
  print percentualExames

  putStrLn "==========================================="
  putStrLn "Thank you for using our software. It rocks!"
  putStrLn "==========================================="

-- Lê da entrada padrão a matrícula e as 3 notas de cada aluno
leDadosAlunos :: Int -> IO [(Matricula, Nota, Nota, Nota)]
leDadosAlunos n
  | n <= 0 = return []
  | otherwise = do
      putStr "Matrícula: "
      matricula <- readLn

      putStr "Nota 1: "
      nota1 <- readLn
      putStr "Nota 2: "
      nota2 <- readLn
      putStr "Nota 3: "
      nota3 <- readLn

      demais <- leDadosAlunos (n - 1)
      return ((matricula, nota1, nota2, nota3) : demais)

-- Calcula a nota final de cada aluno
calculaNotaFinal :: [(Matricula, Nota, Nota, Nota)] -> [(Matricula, Nota)]
calculaNotaFinal [] = []
calculaNotaFinal ((matricula, nota1, nota2, nota3) : demais) = (matricula, media) : calculaNotaFinal demais
  where
    media = (nota1 + nota2 + nota3) / 3

-- Exibir uma lista de pares
exibeLista :: (Show a, Show b) => [(a, b)] -> IO ()
exibeLista [] = return ()
exibeLista ((a, b) : demais) = do
  putStrLn (show a ++ " => " ++ show b)
  exibeLista demais

-- Calcula a situação de cada aluno
calculaSituacao :: [(Matricula, Nota)] -> [(Matricula, String)]
calculaSituacao [] = []
calculaSituacao ((matricula, nota) : demais) = (matricula, situacao) : calculaSituacao demais
  where
    situacao
      | nota < 3 = "Reprovado! :("
      | nota < 7 = "Exame Especial."
      | otherwise = "Aprovado! :D"

-- Calcula a média da turma
calculaMediaTurma :: [(Matricula, Nota)] -> Nota
calculaMediaTurma [] = 0
calculaMediaTurma dados = somaNotas dados / fromIntegral (length dados)
  where
    somaNotas [] = 0
    somaNotas ((_, nota) : demais) = nota + somaNotas demais

-- Calcula percentual de aprovação
calculaAprovados :: [(Matricula, Nota)] -> Float
calculaAprovados dados = 100 * contaAprovados dados / fromIntegral (length dados)
  where
    contaAprovados [] = 0
    contaAprovados ((_, nota) : demais)
      | nota >= 7 = 1 + contaAprovados demais
      | otherwise = contaAprovados demais

-- Calcula percentual de reprovação
calculaReprovados :: [(Matricula, Nota)] -> Float
calculaReprovados dados = 100 * contaReprovados dados / fromIntegral (length dados)
  where
    contaReprovados [] = 0
    contaReprovados ((_, nota) : demais)
      | nota >= 3 && nota < 7 = 1 + contaReprovados demais
      | otherwise = contaReprovados demais

-- Calcula percentual de exame
calculaExames :: [(Matricula, Nota)] -> Float
calculaExames dados = 100 * contaExames dados / fromIntegral (length dados)
  where
    contaExames [] = 0
    contaExames ((_, nota) : demais)
      | nota < 3 = 1 + contaExames demais
      | otherwise = contaExames demais