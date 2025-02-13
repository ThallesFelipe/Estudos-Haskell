-- Guards

bookCategory :: Int -> String
-- Guard clause is used for different page ranges

bookCategory pages
  | pages < 100 = "Short story"
  | pages < 300 = "Novel"
  | pages < 1000 = "SK book!"
  | otherwise = "We don't know!"

main = do
  putStrLn "The category of your book is: "
  print (bookCategory 10000)