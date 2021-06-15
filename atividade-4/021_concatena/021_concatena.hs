-- Concatenar dois vetores

concatena :: [Int] -> [Int] -> [Int]
concatena xs ys = xs ++ ys

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ concatena a b