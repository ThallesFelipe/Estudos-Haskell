{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

produto [] = 1
produto (x:xs) = x * produto xs

{-
    produto [2,3,4]
    = 2 * produto [3,4]
    = 2 * (3 * produto [4])
    = 2 * (3 * (4 * produto []))
    = 2 * (3 * (4 * 1))
    = 2 * (3 * 4)
    = 2 * 12
    = 24
-}