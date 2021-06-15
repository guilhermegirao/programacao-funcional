module Main where

-- Faça uma função que gere uma tupla de duas listas, (A,B), 
-- onde A é formada pelas n primeiras chaves de u e B pelos elementos restantes

divide :: [Int] -> Int -> ([Int], [Int])
divide xs n = splitAt n xs

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  print $ divide a b