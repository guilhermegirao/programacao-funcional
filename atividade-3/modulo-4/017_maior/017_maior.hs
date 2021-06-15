module Main where

-- Retorna o maior elemento da lista

maior :: [Int] -> Int
maior [x] = x
maior (x:xs) 
      | x > rest = x
      | otherwise = rest
        where 
          rest = maior xs

main = do
  a <- readLn :: IO [Int]
  print $ maior a