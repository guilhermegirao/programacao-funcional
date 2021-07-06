module Main where

import Data.List

-- >>> gerador5 1000
-- [1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
-- Faça divisão inteira por 2 enquanto for possível.
-- Utilize o comando de unfold.

gerador5 :: Int -> [Int]
gerador5 x = unfoldr (\i -> if i == 0 then Nothing else Just (i, i `div` 2)) x

main = do
  a <- readLn :: IO Int
  print $ gerador5 a
