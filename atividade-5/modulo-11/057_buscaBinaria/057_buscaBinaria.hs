module Main where

--IN : Lista u de chaves ordenadas ascendentemente e valor x de mesmo tipo base de u
--OUT: Posição de u onde se encontra x ou -1 se x não estiver em u. A busca deve ser binária.

buscaBin' :: [Int] -> Int -> Int -> Int -> Int
buscaBin' xs x e d
  | e >= d = -1
  | (xs !! meio) == x = meio
  | otherwise = busca
  where
    meio = e + ((e + d) `div` 2)
    busca =
      if (xs !! meio) < x
        then buscaBin' xs x (meio + 1) d
        else buscaBin' xs x e (meio - 1)

buscaBin :: [Int] -> Int -> Int
buscaBin xs v = buscaBin' xs v 0 (length xs - 1)

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  print $ buscaBin a b