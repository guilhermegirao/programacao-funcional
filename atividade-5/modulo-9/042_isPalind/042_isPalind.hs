module Main where

-- IN : Uma string qualquer S
-- OUT: Verdadeiro se S é um palíndromo e falso do contrário

isPalind :: String -> Bool
isPalind [] = True
isPalind [x] = True
isPalind (x : xs)
  | x == (last xs) = isPalind (init xs)
  | otherwise = False

main = do
  a <- getLine
  print $ isPalind a