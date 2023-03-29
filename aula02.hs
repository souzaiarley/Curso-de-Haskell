-- Método padrão de condicionais utiliza "if-then-else":
maior :: Int -> Int -> Int
maior a b = if a > b
    then a
    else b

menor :: Int -> Int -> Int
menor a b = if a < b
    then a
    else b

-- Também podemos utilizar o método de condicionais com guardas:
maiorGuardas :: Int -> Int -> Int
maiorGuardas a b
    | a > b = a
    | otherwise = b

menorGuardas :: Int -> Int -> Int
menorGuardas a b
    | a < b = a
    | otherwise = b

-- Exercícios
isPair :: Int -> String
isPair x = if mod x 2 == 0
    then "PAR"
    else "IMPAR"

charcase :: Char -> String
charcase c
    | (c >= 'A') && (c <= 'Z') = "Maiusculo"
    | (c >= 'a') && (c <= 'z') = "Minusculo"
    | otherwise = "NAO eh letra"

funcao :: Int -> Int -> Int -> Int
funcao a b c
    | a == 0 = b^2 + 3*c
    | a == 1 = 2*c^2 - 3*c
    | a == 2 = 3*c - b^2
    | otherwise = 0