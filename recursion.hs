-- Recursão

-- Uma função se chama

fatorial :: Int -> Int
fatorial 0 = 1 -- Caso base
fatorial n = n * fatorial (n - 1)

main = do
    putStr "Fatorial do seu número é: "
    print (fatorial 50)