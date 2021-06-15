module Main where

-- Gerar lista: [1, −1, 2, −2, 3, −3, · · · , n, −n]

alter :: Int -> [Int]
alter 0 = []
alter 1 = [1, -1]
alter n = alter(n - 1) ++ [n] ++ [n * (-1)]

main = do
  a <- readLn :: IO Int
  print $ alter a