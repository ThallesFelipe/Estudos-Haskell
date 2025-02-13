areaTriangulo :: Double -> Double -> Double -> Double
areaTriangulo a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2

minhaFuncao :: (Num a) => a -> a
minhaFuncao x = 3 + f x + f a + f b
  where
    f x = x + 7 * c
    a = 3 * c
    b = f 2
    c = 10

queridaVariavel = num `div` length lista
  where
    num = 10
    lista = [1, 2, 3, 4, 5]

areaTri :: Floating a => a -> a -> a -> a
areaTri a b c = (c * h) / 2
  where
    h = b * sinAlpha
    sinAlpha = sqrt (1 - cosAlpha ^ 2)
    cosAlpha = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)