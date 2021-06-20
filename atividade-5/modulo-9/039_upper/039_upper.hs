module Main where

-- IN : Uma string S
-- OUT: Versão em caixa alta da string S

toUpper :: Char -> [Char]
toUpper s = [x' | (x, x') <- zip ['a' .. 'z'] ['A' .. 'Z'], s == x]

upper :: String -> String
upper [] = []
upper (s : sr) = w ++ upper sr
  where
    l = toUpper (s)
    w = if (l /= "") then l else [s]

main = do
  a <- getLine
  print $ upper a