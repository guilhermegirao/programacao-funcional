module Main where

--IN : Lista de números u
--OUT: Verdadeiro se u é ordenada e falso do contrário

ordenada :: [Int] -> Bool
ordenada [] = True
ordenada [x] = True
ordenada u
  | (head u) <= (head rest) = ordenada rest
  | otherwise = False
  where
    rest = tail u

main = do
  a <- readLn :: IO [Int]
  print $ ordenada a