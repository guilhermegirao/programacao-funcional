module Main where

-- IN : Número inteiro positivo, n
-- OUT: Verdadeiro se n for um quadrado perfeito e falso do contrário (Um quadrado perfeito é um número inteiro cuja raiz quadrada é também um número inteiro). Não utilizar operadores ou funções que retornem números reais.

quadperf :: Int -> Bool
quadperf n = busca 0 n
    where busca r s | r > s = False
                    | d2 < n = busca (d + 1) s
                    | d2 > n = busca r (d - 1)
                    | otherwise = True
              where d = (r + s) `div` 2
                    d2 = d * d

main = do
  a <- readLn :: IO Int
  print $ quadperf a