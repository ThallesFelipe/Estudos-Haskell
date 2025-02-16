module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Text.Printf (printf)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "AUMENTO SALARIAL."
  putStrLn "-----------------"
  putStrLn ""

  salarioInicial <- prompt "Salário inicial: "
  anoInicial <- prompt "Ano de contratação: "
  anoAtual <- prompt "Ano atual: "

  let salarioAtual = calculaNovoSalario 1.5E-2 salarioInicial anoInicial anoAtual
  putStrLn (printf "Salário atual após %i anos: R$ %.2f" (anoAtual - anoInicial) salarioAtual)

calculaNovoSalario :: Double -> Double -> Int -> Int -> Double
calculaNovoSalario taxa salarioInicial anoInicial anoAtual
  | anoInicial >= anoAtual = salarioInicial
  | otherwise = calculaNovoSalario (2 * taxa) ((1 + taxa) * salarioInicial) (anoInicial + 1) anoAtual

prompt mensagem = do
  putStr mensagem
  readLn