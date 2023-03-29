-- Funções de Alta Ordem
-- São "Funções de Alta Ordem" as funções que recebem ou retornam outras funções.

-- Funções de mapeamento executam alguma operação em cada elemento de uma lista.

-- Exemplo de função de alta ordem de mapeamento:
dobra :: Int -> Int
dobra x = 2*x

dobraLista :: [Int] -> [Int]
dobraLista [] = []
dobraLista (x:xs) = dobra x : dobraLista xs -- Note que a função retorna outra função.

-- Podemos criar uma função de alta ordem que receba qualquer outra função e execute
-- sua operação de mapeamento (de uma forma genérica).
quadrado :: Int -> Int
quadrado x = x * x

mapInt :: (Int -> Int) -> [Int] -> [Int] -- Função de mapeamento genérico
mapInt _ [] = []
mapInt f (x:xs) = f x : mapInt f xs

-- Funções de filtro criam sub-listas através de elementos que compartilham certa propriedade
filtro :: (Int -> Bool) -> [Int] -> [Int]
filtro _ [] = []
filtro f (x:xs)
    | f x == True = x : filtro f xs
    | otherwise = filtro f xs

pares :: Int -> Bool
pares x = mod x 2 == 0

impares :: Int -> Bool
impares x = mod x 2 == 1

-- Exercício
buscalista :: ([Int] -> Int) -> [Int] -> Int
buscalista _ [] = -1
buscalista f (x:xs) = f (x:xs)

maior :: [Int] -> Int
maior [] = -1
maior (x:xs)
    | x > maior xs = x
    | otherwise = maior xs

menor :: [Int] -> Int
menor [] = 9999999
menor (x:xs)
    | x < menor xs = x
    | otherwise = menor xs

-- Existem funções próprias do Haskell para mapeamento e filtragem: map e filter
