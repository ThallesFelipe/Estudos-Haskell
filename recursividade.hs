{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use even" #-}
fatorial :: Integer -> Integer
fatorial n
  | n == 0 = 1
  | n > 0 = n * fatorial (n - 1)

potDois :: Integer -> Integer
potDois n
  | n == 0 = 1
  | n > 0 = 2 * potDois (n - 1)

potDois' :: Integer -> Integer
potDois' n
  | n == 0 = 1
  | otherwise = 2 * potDois' (n - 1)

mul :: Int -> Int -> Int
mul m n
  | n == 0 = 0
  | n > 0 = m + mul m (n - 1)
  | otherwise = negate (mul m (negate n))

fib :: Int -> Int
fib n
  | n == 0 = 0
  | n == 1 = 1
  | n > 1 = fib (n - 2) + fib (n - 1)

par, impar :: Int -> Bool
par n = mod n 2 == 0
impar n = not (par n)

par' n
  | n == 0 = True
  | n > 0 = impar' (n - 1)
  | otherwise = par' (-n)

impar' n
  | n == 0 = False
  | n > 0 = par' (n - 1)
  | otherwise = impar' (-n)

fatorialTail :: Integer -> Integer
fatorialTail n = aux n 1
  where
    aux 0 acc = acc -- Quando n chega a 0, o acumulador tem o resultado final
    aux n acc = aux (n - 1) (n * acc) -- A chamada recursiva é a última operação