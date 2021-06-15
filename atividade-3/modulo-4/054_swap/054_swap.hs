module Main where

-- Trocar dois elementos de uma lista

swap :: [Int] -> Int -> Int -> [Int]
swap xs n m 
  | tam >= n && tam >= m = esquerda ++ [elemento_i] ++ meio ++ [elemento_j] ++ direita
  | otherwise = xs
  where
    tam = length xs
    esquerda = take n xs
    meio = take (m - n - 1) (drop (n + 1) xs)
    direita = drop (m + 1) xs
    elemento_i = xs !! m 
    elemento_j = xs !! n

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ swap a b c
