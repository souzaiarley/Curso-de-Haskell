-- Listas
-- Declaração de lista: 
listavazia = []
listanum = [1,2,3,4]
listachar = ['1','2','3','4']
listapar = [0, 2 .. 10]
listaimpar = [1, 3 .. 10]

-- Para "construir" uma lista:
lista1 = 1:2:3:[]
lista2 = 'a':'b':'c':[]

-- Para concatenar duas listas:
primeira = [1,2,3,4,5]
segunda = [6,7,8,9,10]
terceira = primeira ++ segunda

-- Operadores head e tail:
-- head: retorna a cabeça da lista (primeiro elemento)
-- tail: retorna o restante da lista

-- O formato genérico de uma lista: (x:xs), onde x é a cabeça e xs o corpo
comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (x:xs) = 1 + comprimento xs

-- Utilizando null e guardas:
comprimento2 :: [Int] -> Int
comprimento2 lista
    | null lista = 0
    | otherwise = 1 + comprimento2 (tail lista)

-- O haskell contém a função pré-definida "length", que calcula o comprimento da lista
-- o "null" é outra função pré-definida que verifica se uma lista está vazia

-- Função que retorna o cubo de todos os elementos de uma lista:
aoCubo :: Int -> Int
aoCubo x = x*x*x

cubo :: [Int] -> [Int]
cubo [] = []
cubo (x:xs) = aoCubo x : cubo xs

-- Outra forma de execução (feita por mim):
cubo2 :: [Int] -> [Int]
cubo2 lista
    | null lista = []
    | otherwise = aoCubo : cubo (tail lista) 
        where aoCubo = head lista^3

-- Outros exercícios:
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

find :: Char -> [Char] -> Bool
find c [] = False
find c (x:xs)
    | c == x = True
    | otherwise = find c xs

maior :: [Int] -> Int
maior [] = 0
maior (x:xs)
    | x > maior xs = x
    | otherwise = maior xs

raizes :: Float -> Float -> Float -> [Float]
raizes a b c
    | delta < 0 = []
    | delta == 0 = positivo : []
    | delta > 0 = negativo : positivo : []
    where
        delta = (b^2) - (4*a*c)
        positivo = ((-b) + sqrt delta) / (2*a)
        negativo = ((-b) - sqrt delta) / (2*a)

-- Listas por Compreensão:
    -- São aquelas formadas a partir de outras listas já existentes, seguindo uma
-- notação definida
list1 = [1,2,3,4,5]
list_quadratica = [x*x | x <- list1]

-- Também podemos dar limitações para definir a lista a ser criada:
lista = [x | x <- [1..10], mod 10 x == 0] -- Para todo x de [1...10], desde que x divida 10 

-- Exercícios
multiplos :: Int -> [Int]
multiplos n = [x | x <- [n..n*10], mod x n == 0]

primo :: Int -> Bool
primo n
    | length [x | x <- [1..n], mod n x == 0] == 2 = True
    | otherwise = False

-- Outras funções para listas:
--    take (pega os primeiros n elementos de uma lista)
--    drop (retorna uma copia da lista sem os primeiros n elementos)
--    init (retorna copia de uma lista menos o ultimo elemento)
--    !! (um operador que retorna o n elemento de uma lista)