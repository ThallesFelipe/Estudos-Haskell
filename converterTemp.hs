module Main (main) where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

celsius :: Double -> Double
celsius f = (5 / 9) * (f - 32)

main :: IO ()
main = do
  putStr "Temperatura em Fahrenheit: "
  fahrenheit <- readLn

  putStrLn ("Temperatura em Celsius: " ++ show (celsius fahrenheit))