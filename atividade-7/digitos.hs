module Main where

import Data.List

-- >>> digitos 1235412
-- [1,2,3,5,4,1,2]
-- Extraia todos os dígitos de um número utilizando operador de divisão inteira e módulo com unfold ou iterate.

digitos :: Int -> [Int]
digitos x = reverse $ unfoldr (\i -> if i == 0 then Nothing else Just (i `mod` 10, i `div` 10)) x

main = do
  a <- readLn :: IO Int
  print $ digitos a