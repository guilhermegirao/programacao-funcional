module Main where

--Pegar o menor número entre a, b e c

min3 :: Int -> Int -> Int -> Int
min3 a b c
   | a <= b && a <= c = a
   | a > b && b < c = b
   | otherwise = c

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ min3 a b c