module Main where

-- IN : Um inteiro positivo x
-- OUT: Um inteiro positivo equivalente a x, mas com os dígitos na ordem inversa

revAux :: Int -> Int -> Int
revAux 0 y = y
revAux x y = revAux (x `div` 10) (y * 10 + x `mod` 10)

rev :: Int -> Int
rev x = revAux x 0

main = do
  a <- readLn :: IO Int
  print $ rev a