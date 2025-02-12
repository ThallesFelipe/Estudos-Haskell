{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}

dobro x = x + x

quadruplo x = dobro (dobro x)

quadrado_do_dobro :: Int -> Int
quadrado_do_dobro x = (2 * x) ^ 2

s = s0 + (v0 * t) + (0.5 * a * t ^ 2)
  where
    s0 = 100
    v0 = 15
    a = -9.81
    t = 8

x = 3

y = 4

a = (4 / 3) * pi * sin (x ^ 2) - 1

b = (x ^ 2 * y ^ 3) / (x + y) ^ 2

c = (1 / x ^ 2 - y) - exp (-(4 * x)) + (35 / y) ** (1 / 3) * (x * y) ** (1 / 2)

area_circulo r = pi * r ^ 2

celcius_para_fahrenheit c = (9 / 5 * c) + 32

lados_triangulo a b c =
  a + b > c
    && a + c > b
    && b + c > a