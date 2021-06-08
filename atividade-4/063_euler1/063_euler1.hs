module Main where

-- Calcule a soma de todos os números de 1 até n que são múltiplos de 3 ou 5. Utilize uma única list compreension.

euler1 :: Int -> Int
euler1 n = 
        sum $ [x | x <- [1..size], mod x 3 == 0 || mod x 5 == 0] 
        where
          size = n - 1

main = do
  a <- readLn :: IO Int
  print $ euler1 a