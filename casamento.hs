distancia :: (Floating a) => (a, a, a) -> (a, a, a) -> a
distancia (x1, y1, z1) (x2, y2, z2) =
  sqrt ((x1 - x2) ^ 2 + (y1 - y2) ^ 2 + (z1 - z2) ^ 2)

opp :: (Int, (Int, Int)) -> Int
opp (1, (m, n)) = m + n
opp (2, (m, n)) = m - n
opp _ = 0

sucessorDoPrimeiro :: (Num a, Enum a) => [a] -> a
sucessorDoPrimeiro [] = 0
sucessorDoPrimeiro (x : _) = succ x

flista :: (Num a) => [a] -> a
flista (x : y : _) = x + y
flista [x] = x
flista _ = 0