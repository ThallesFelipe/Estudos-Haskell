module Main (main) where

mostraLista :: (Show a) => [a] -> IO ()
mostraLista lista
  | null lista = return ()
  | otherwise = do
      print (head lista)
      mostraLista (tail lista)

mostraListaETamanho :: (Show a) => [a] -> IO ()
mostraListaETamanho lista =
  do
    mostraLista lista
    print (length lista)

main :: IO ()
main = do
  mostraLista [0, 2 .. 30]
  mostraListaETamanho [True, False, False]