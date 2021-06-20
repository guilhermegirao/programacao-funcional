module Main where

-- Crie a função produtoEscalar utilizando a função zip para percorrer os vetores elemento a elemento.

produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar xs ys = sum [x * y | (x, y) <- zip xs ys]

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ produtoEscalar a b