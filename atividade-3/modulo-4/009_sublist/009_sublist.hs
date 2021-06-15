module Main where

-- Defina a função sublist que obtém uma sublista passando início, fim e a lista. 
-- Se forem utilizados números negativos, interprete-os como sendo contando a partir do fim da lista. 
-- O índice final não entra na lista.

sublist :: Int -> Int -> [Int] -> [Int]
sublist n m xs = drop pos1 . take pos2 $ xs
    where
      tam = length xs
      pos1
        | n < 0 = n + tam
        | otherwise = n
      pos2
        | m < 0 = m + tam
        | otherwise = m

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO [Int]
  print $ sublist a b c
