module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

calculaImposto :: IO ()
calculaImposto = do
  hSetBuffering stdout NoBuffering

  putStrLn "Cálculo do Imposto."
  putStr "Digite o salário: "
  salario <- readLn

  if salario < 500
    then putStrLn ("Imposto calculado: " ++ show (salario * 0.05))
    else
      if salario < 850
        then putStrLn ("Imposto calculado: " ++ show (salario * 0.10))
        else
          putStrLn ("Imposto calculado: " ++ show (salario * 0.15))

atualizaSalario :: IO ()
atualizaSalario = do
  hSetBuffering stdout NoBuffering

  putStrLn "Cálculo do Novo Salário."
  putStr "Digite o salário: "
  salario <- readLn

  if salario < 450
    then putStrLn ("Novo salário: " ++ show (salario + 100))
    else
      if salario < 750
        then putStrLn ("Novo salário: " ++ show (salario + 75))
        else
          if salario <= 1500
            then putStrLn ("Novo salário: " ++ show (salario + 50))
            else putStrLn ("Novo salário: " ++ show (salario + 25))

classificacao :: IO ()
classificacao = do
  hSetBuffering stdout NoBuffering

  putStrLn "Classificação do Salário."
  putStr "Digite o salário: "
  salario <- readLn

  if salario <= 750
    then putStrLn "Mal remunerado. :("
    else putStrLn "Bem remunerado! :)"

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "--------------------------------"
  putStrLn "Opções: "
  putStrLn "--------------------------------"
  putStrLn "1. Imposto"
  putStrLn "2. Novo salário"
  putStrLn "3. Classificação"
  putStrLn "--------------------------------"
  putStr "Digite a opção desejada: "
  opcao <- readLn
  putStrLn ""

  if opcao == 1
    then calculaImposto
    else
      if opcao == 2
        then atualizaSalario
        else
          if opcao == 3
            then classificacao
            else putStrLn "OPÇÃO INVÁLIDA!"