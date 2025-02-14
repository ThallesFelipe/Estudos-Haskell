{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Use sum" #-}
calcular =
  let x = 10
      y = 20
   in x + y

somaQuadradados :: (Num a) => a -> a -> a
somaQuadradados a b = quadradoA + quadradoB
  where
    quadradoA = a ^ 2
    quadradoB = b ^ 2

type Nome = String

type Idade = Int

type Pessoa = (Nome, Idade)

pessoa :: Pessoa
pessoa = ("Ana", 21)

numeros :: [Int]
numeros = [1 .. 100]

numerosDobrados = map (* 2) numeros

temCabeca :: [a] -> Maybe a
temCabeca [] = Nothing
temCabeca (cabeca : _) = Just cabeca

-- tamanhoLista :: [a] -> Int
-- mapear :: (a -> b) -> [a] -> [b]
-- filtro :: (a -> Bool) -> [a] -> [a]

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

formataPessoa :: Pessoa -> String
formataPessoa p = "Nome: " ++ fst p ++ ", Idade: " ++ show (snd p) ++ " anos"

areaCirculo :: (Floating a) => a -> a
areaCirculo raio =
  let piVal = 3.14159
   in piVal * raio ^ 2

contido :: (Eq a) => a -> [a] -> Bool
contido _ [] = False
contido y (x : xs)
  | x == y = True
  | otherwise = contido y xs

somaLista :: (Num a) => [a] -> a
somaLista [] = 0
somaLista (x : xs) = x + somaLista xs

somaLista' :: (Num a) => [a] -> a
somaLista' = foldr (+) 0

maior :: (Ord a) => (a, a) -> a
maior (a, b)
  | a >= b = a
  | otherwise = b

ehPar :: (Integral a) => a -> Bool
ehPar n = mod n 2 == 0

ehPar' n = even n

ehPar'' = even

apenasPares :: (Integral a) => [a] -> [a]
apenasPares xs = filter ehPar xs

apenasPares' = filter ehPar''

avaliarIdade :: Pessoa -> String
avaliarIdade p
  | snd p < 18 = fst p ++ " é menor de idade!"
  | otherwise = fst p ++ " é maior de idade!"