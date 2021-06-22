module Main where

-- IN : Natural n
-- OUT: Soma dos dígitos de n

sdig :: Int -> Int
sdig 0 = 0
sdig n = n `mod` 10 + sdig (n `div` 10)

main = do
  a <- readLn :: IO Int
  print $ sdig a