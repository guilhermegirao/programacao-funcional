module Main where

import Data.List

-- >>> gerador4 1000
-- [1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
-- Faça divisão inteira por 2 enquanto for possível.
-- Utilize o comando iterate e depois o takeWhile.

gerador4 :: Int -> [Int]
gerador4 x = takeWhile (>= 1) $ iterate (\i -> i `div` 2) x

main = do
  a <- readLn :: IO Int
  print $ gerador4 a
