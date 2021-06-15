module Main where

-- Gerar Lista [m, m+1, m+2, ..., m+n-1]

sequencia :: Int -> Int -> [Int]
sequencia 0 x = []
sequencia x y = y : sequencia (x - 1) (y + 1)

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ sequencia a b