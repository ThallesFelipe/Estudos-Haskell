{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use isAsciiLower" #-}
{-# HLINT ignore "Use isAsciiUpper" #-}
valorAbsoluto :: Int -> Int
valorAbsoluto n = if n >= 0 then n else -n

sinal :: Int -> Int
sinal n =
  if n < 0
    then -1
    else
      if n == 0
        then 0
        else 1

sinal' :: Int -> Int
sinal' n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1

max3 :: Int -> Int -> Int -> Int
max3 a b c =
  if a > b && a > c
    then a
    else
      if b > a && b > c
        then b
        else c

max3' :: Int -> Int -> Int -> Int
max3' a b c
  | a > b && a > c = a
  | b > a && b > c = b
  | otherwise = c

vabs :: Integer -> Integer
vabs n
  | n >= 0 = n
  | n < 0 = -n

analisaIMC :: Float -> String
analisaIMC imc
  | imc <= 18.5 = "Abaixo do peso."
  | imc <= 25.0 = "Peso normal."
  | imc <= 30.0 = "Sobrepeso."
  | otherwise = "Obesidade."

min3 :: Int -> Int -> Int -> Int
min3 a b c
  | a < b && a < c = a
  | b < c = b
  | otherwise = c

descreveLetra :: Char -> String
descreveLetra letra
  | letra >= 'a' && letra <= 'z' = "Lower case."
  | letra >= 'A' && letra <= 'Z' = "Upper case"
  | otherwise = "Not a ASCII letter."

areaTriangulo :: (Floating a, Ord a) => a -> a -> a -> a
areaTriangulo a b c
  | medidasValidas = sqrt (s * (s - a) * (s - b) * (s - c))
  | otherwise = 0
  where
    medidasValidas =
      a > 0
        && b > 0
        && c > 0
        && a < b + c
        && b < a + c
        && c < a + b

    s = (a + b + c) / 2

calculaAnalisaIMC :: (Floating a, Ord a) => a -> a -> String
calculaAnalisaIMC peso altura
  | imc <= 18.5 = "Abaixo do peso."
  | imc <= 25.0 = "Peso normal."
  | imc <= 30.0 = "Sobrepeso."
  | otherwise = "Obesidade."
  where
    imc = peso / altura ^ 2

numRaizes :: Double -> Double -> Double -> Int
numRaizes a b c
  | delta > 0 = 2
  | delta == 0 = 1
  | otherwise = 0
  where
    delta = b ^ 2 - 4 * a * c

precoRetrato :: Integer -> String -> Float
precoRetrato individuos diaSemana = precoBase + taxaExtra * precoBase
  where
    precoBase
      | individuos == 1 = 100
      | individuos == 2 = 130
      | individuos == 3 = 150
      | individuos == 4 = 165
      | individuos == 5 = 175
      | individuos == 6 = 180
      | otherwise = 185
    taxaExtra
      | diaSemana == "saturday" || diaSemana == "sunday" = 0.2
      | otherwise = 0