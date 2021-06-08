module Main where

-- Retorna o maior elemento da lista

maior :: [Int] -> Int
maior [x] = x
maior (x:xs) = 
      if x > rest then x
      else rest
        where 
          rest = maior xs

main = do
  a <- readLn :: IO [Int]
  print $ maior a