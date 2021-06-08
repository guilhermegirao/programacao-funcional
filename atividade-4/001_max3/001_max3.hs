module Main where

-- Defina a função max3 tal que max3 x y z é o máximo entre x, y e z. 

max3 :: Int -> Int -> Int -> Int
max3 x y z
   | x >= y && x >= z = x
   | x < y && y > z = y
   | otherwise = z

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ max3 a b c
