module Main where

-- Retorna uma sublista de u cujos números sejam maiores que x

maioresQue :: Int -> [Int] -> [Int]
maioresQue n [] = []
maioresQue n (x:xs)
            | x > n = x:maioresQue n xs
            | otherwise = maioresQue n xs

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ maioresQue a b