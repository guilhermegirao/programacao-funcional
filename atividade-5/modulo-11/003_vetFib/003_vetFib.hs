module Main where

-- Gere os n primeiros termos da série de Fibonacci

vetFib :: Int -> [Int]
vetFib 0 = []
vetFib 1 = [0]
vetFib 2 = [0, 1]
vetFib n = vetFib (n - 1) ++ atual
  where
    n3 = (vetFib n) !! (n - 3)
    n2 = (vetFib n) !! (n - 2)
    atual = [n3 + n2]

main = do
  a <- readLn :: IO Int
  print $ vetFib a