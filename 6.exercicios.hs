{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use splitAt" #-}

ultimo :: [a] -> [a]
ultimo [] = []
ultimo lista = drop (length lista - 1) lista

primeiros :: [a] -> [a]
primeiros [] = []
primeiros lista = take (length lista - 1) lista

metade lista = (take k lista, drop k lista)
  where
    k = length lista `div` 2