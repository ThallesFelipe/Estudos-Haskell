cteGravitacaoUniversal :: Double
cteGravitacaoUniversal = 6.67e-11

forcaGravidade :: Double -> Double -> Double -> Double
forcaGravidade m1 m2 d = cteGravitacaoUniversal * m1 * m2 / d ^ 2

forcaTerraLua :: Double
forcaTerraLua = forcaGravidade 6e24 1e23 (4e5 * 1000)

---

salario :: Double -> Double
salario salarioBase = salarioBase + (0.1 * salarioBase) - (0.07 * salarioBase)

type Temperatura = Double

conversorCelciusFahrenheit :: Temperatura -> Temperatura
conversorCelciusFahrenheit tempC = (9 / 5 * tempC) + 32

type Nome = String

saudacao :: Nome -> String
saudacao nome = "Hello " ++ show nome ++ "!"

type Velocidade = Int

aumentaVelocidade :: Double -> Double
aumentaVelocidade v = v * 2