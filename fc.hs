fooEven :: Int -> Bool
fooNotEven :: Bool -> String
fooEven x =
  if x `rem` 2 == 0
    then True
    else False

fooNotEven x =
  if x == True
    then "This is an even number"
    else "This is an odd number"

main = do
    putStrLn "Example of Haskell Function Composition"
    print (fooNotEven (fooEven 2))