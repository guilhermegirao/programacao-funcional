module Main where

-- IN : String S
-- OUT: Versão de S contendo todos os caracteres em caixa baixa exceto
--     aqueles que, por serem iniciais de palavras devem aparecer em
--     caixa alta

toUpper :: Char -> [Char]
toUpper s = [x' | (x, x') <- zip ['a' .. 'z'] ['A' .. 'Z'], s == x]

upper :: String -> String
upper [] = []
upper (s : sr) = w ++ upper sr
  where
    l = toUpper (s)
    w = if (l /= "") then l else [s]

toLower :: Char -> [Char]
toLower s = [x | (x, x') <- zip ['a' .. 'z'] ['A' .. 'Z'], s == x']

lower :: String -> String
lower [] = []
lower (s : sr) = w ++ lower sr
  where
    l = toLower (s)
    w = if (l /= "") then l else [s]

titulo :: String -> String
titulo s = unwords (map (\x -> upper ([head x]) ++ lower (tail x)) w)
  where
    w = words s

main = do
  a <- getLine
  print $ titulo a