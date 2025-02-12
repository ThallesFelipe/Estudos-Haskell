-- Pattern Matching

coffeType :: String -> String
coffeType "Espresso" = "Strong and Bold"
coffeType "Latte" = "Milky and Weird!"
coffeType "Cappuccino" = "Frothy and Rich"
coffeType _ = "Unkown coffee type"

main = do
    putStrLn "Your coffee description is: "
    print(coffeType "Espresso")
    print(coffeType "Latte")
    print(coffeType "Bread")