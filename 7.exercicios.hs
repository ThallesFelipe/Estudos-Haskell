{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Eta reduce" #-}
lista = [10, 20 .. 50]

obter2Primeiros = take 2 lista

obter3Ultimos = drop (length lista - 3) lista

troca :: (a, b) -> (b, a)
troca (x, y) = (y, x)

segundo :: [a] -> a
segundo xs = head (tail xs)

const :: a -> b -> a
const x y = x

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

apply :: (f -> f) -> f -> f
apply f x = f x

flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x

pair :: a -> b -> (a, b)
pair x y = (x, y)

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

mostra :: Show a => (String, a) -> String
mostra (nome, idade) = "Nome: " ++ nome ++ ", idade: " ++ show idade