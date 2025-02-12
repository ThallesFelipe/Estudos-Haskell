densidadePopulacional :: (Float, Float) -> Float
densidadePopulacional (populacao, area) = densidade
    where densidade = populacao / area

main = do
    print (densidadePopulacional (110000000.25, 850.78))