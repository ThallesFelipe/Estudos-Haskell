{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}

soma :: (Num a) => [a] -> a
soma [] = 0
soma (x : xs) = x + soma xs

{-
    soma [2,3,4]
    = 2 + soma [3,4]
    = 2 + (3 + soma [4])
    = 2 + (3 + (4 + soma []))
    = 2 + (3 + (4 + 0))
    = 2 + (3 + 4)
    = 2 + 7
    = 9
-}