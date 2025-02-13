media :: Double -> Double -> Double
media x y = (x + y) / 2

notaFinal :: Double
notaFinal = media 7 8.2

descriminante :: Double -> Double -> Double -> Double
descriminante a b c = b ^ 2 - 4 * a * c

ladosTriangulo :: Float -> Float -> Float -> Bool
ladosTriangulo a b c =
    a > 0 &&
    b > 0 &&
    c > 0 &&
    a + b > c &&
    a + c > b &&
    b + c > a