module Main where

-- Concatenar dois vetores

menores :: Int -> [Int] -> [Int]
menores 0 xs = []
menores n xs
      | length xs == n = xs
      | maximum xs == minimum xs = [(length xs - n)..(length xs)]
      | otherwise = menores n [x | x <- xs, x /= maximum xs]

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ menores a b