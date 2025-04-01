module Main where

import Control.Exception (SomeException, catch)
import Data.Char (toLower)
import Data.List (sortBy)
import Data.Ord (Down (Down), comparing)
import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Text.Printf (printf)

tabela :: String -> [(Int, String, Int)]
tabela texto =
  let registros = montaTabela 0 (lines texto)
      ordenados = sortBy (comparing (Down . (\(_, _, r) -> r))) registros
   in atribuiPosicoes 1 ordenados

atribuiPosicoes :: Int -> [(Int, String, Int)] -> [(Int, String, Int)]
atribuiPosicoes _ [] = []
atribuiPosicoes i ((_, nome, regs) : resto) =
  (i, nome, regs) : atribuiPosicoes (i + 1) resto

montaTabela :: Int -> [String] -> [(Int, String, Int)]
montaTabela _ [] = []
montaTabela i (cabeca : cauda) =
  case words cabeca of
    [nome, regs] -> case reads regs of
      [(n, "")] -> (i, nome, n) : montaTabela (i + 1) cauda
      _ -> montaTabela (i + 1) cauda
    _ -> montaTabela (i + 1) cauda

pesquisa :: String -> [(Int, String, Int)] -> String -> IO ()
pesquisa tipo [] nome =
  printf "%s não encontrado entre %s.\n" nome tipo
pesquisa tipo ((c, n, r) : resto) nome
  | map toLower nome == map toLower n =
      printf "%s classificado na posição %d entre %s com %d registros.\n" nome c tipo r
  | otherwise = pesquisa tipo resto nome

go :: [(Int, String, Int)] -> [(Int, String, Int)] -> IO ()
go tabGarotos tabGarotas =
  do
    putStr "Nome: "
    nome <- getLine
    case nome of
      "" -> return ()
      _ -> do
        pesquisa "garotos" tabGarotos nome
        pesquisa "garotas" tabGarotas nome
        go tabGarotos tabGarotas

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  catch
    ( do
        nomesMeninos <- readFile "boynames.txt"
        nomesMeninas <- readFile "girlnames.txt"
        go (tabela nomesMeninos) (tabela nomesMeninas)
    )
    ( \e -> do
        putStrLn $ "Erro ao ler arquivos: " ++ show (e :: SomeException)
    )