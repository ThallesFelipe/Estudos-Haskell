module Main (main) where
import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

main :: IO ()

main = do
  hSetBuffering stdout NoBuffering

  putStrLn "Digite uma frase:"
  frase <- getLine

  if frase == reverse frase
    then putStrLn "É um palíndromo."
    else putStrLn "Não é um palíndromo."