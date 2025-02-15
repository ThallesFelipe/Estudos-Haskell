{-
1)
    58 /= 58 == False
    :: Bool

2)
    abs == negate
    Erro de tipo: (==) não está definido para funções

3)
    False < True == True
    :: Bool

4)
    "elefante" > "elegante" == False ('f' < 'g')
    :: Bool

5)
    min 'z' 'h' == 'h'
    :: Char

6)
    max "amaral" "ana" == "ana" ('n' > 'm')
    :: String

7)
    show True == "True"
    :: String

8)
    show 2025 == "2025
    :: String

9)
    show 'A' == "'A'"
    :: String

10)
    show "adeus" == "\"adeus\""
    :: String

11)
    show max == Erro pois show não é definido para funções.

12)
    read "()" == ()
    :: Read a => a

13)
    read "123" == Erro de sintaxe

14)
    read "123" :: Int == 123
    :: Int

15)
    mod (read "123") 100 == 23
    :: (Integral a, Read a) => a

16)
    read "'@'" == '@'
    :: Char

17)
    read "@" :: Char == Erro de sintaxe

18)
    read "\"marcos\"" :: String == "marcos"
    :: String

19)
    read "marcos" :: String == Erro de sintaxe

20)
    succ 'M' == 'N'
    :: Char

21)
    fromEnum 'A' == 65
    :: Int

22)
    toEnum 65 :: Char == 'A'
    :: Char

23)
    toEnum 0 == ()
    :: Enum a => a

24)
    not (toEnum 0) == True
    :: Bool

25)
    maxBound :: Int == 9223372036854775807
    :: Int

26)
    signum (-13) == -1
    :: Num a => a

27)
    fromInteger 99 :: Double == 99.0
    :: Double

28)
    fromInteger 99 :: Rational == 99 % 1
    :: Rational

29)
    fromInteger 99 == 99
    :: Num a => a

30)
    toRational (-4.5) ==  (-9) % 2
    :: Rational

31)
    fromIntegral 17 :: Double == 17.0
    :: Double

32)
    sin (pi/2) == 1.0
    :: Floating a => a

33) floor (3 * pi / 2) == 4
    :: Integral a => a
-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use logBase" #-}

areaCirculo :: (Floating a) => a -> a
areaCirculo r = pi * r ^ 2

numDegraus :: (Integral b, RealFrac a) => a -> a -> b
numDegraus alturaDegrau alturaDesejada =
  ceiling (alturaDesejada / alturaDegrau)

dobro :: (Num a) => a -> a
dobro x = x * 2

aprovado :: (Num a, Ord a) => a -> Bool
aprovado nota = nota >= 6

myLog :: (Floating a) => a -> a -> a
myLog x b = log x / log b

possuiRaizesReais :: (Num a, Ord a) => a -> a -> a -> Bool
possuiRaizesReais a b c = (b ^ 2 - 4 * a * c) >= 0