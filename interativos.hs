module Main (main) where

main :: IO ()
main = do
  putStr "Qual o seu nome? "
  nome <- getLine
  putStr nome
  putStrLn ", Seja bem-vindo(a)!"

  putStrLn ""
  putStrLn "Vamos somar alguns números?"
  putStrLn ""

  putStr "Digite um nº: "
  numero1S <- getLine
  putStr "Digite um outro nº: "
  numero2S <- getLine
  putStrLn ""

  putStrLn "A soma dos nºs digitados: "
  let n1 = read numero1S :: Double
      n2 = read numero2S
      s = n1 + n2
  print s

  return ()