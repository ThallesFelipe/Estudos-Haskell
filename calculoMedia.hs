module Main (main) where

main :: IO ()
main = do
  putStrLn "Cálculo da Média Aritmética"
  putStrLn "---------------------------------------"
  putStrLn "Digite uma sequência de números (um por linha)"
  putStrLn "Para terminar digite um valor negativo"

  lista <- lerLista

  case lista of
    [] -> putStrLn "Sequência vazia."
    _ -> do
      putStr "A média dos números digitados é: "
      print (sum lista / fromIntegral (length lista))

lerLista = do
  x <- readLn
  if x < 0
    then return []
    else do
      xs <- lerLista
      return (x : xs)