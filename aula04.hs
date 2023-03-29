-- Recursão - Exercícios
divisao :: Int -> Int -> Int
divisao x y
    | x == y = 0
    | y > x = x
    | otherwise = divisao (x-y) y

multiplicacao :: Int -> Int -> Int
multiplicacao x y
    | y == 0 = 0
    | otherwise = multiplicacao x (y-1) + x

mdc :: Int -> Int -> Int
mdc x y
    | x > y = mdc (x-y) y
    | x < y = mdc y x
    | x == y = x

-- Recursão em cauda ocorre quando é feita uma chamada recursiva, garantindo que 
-- não há mais nada para ser executado depois da chamada da função recursiva
fatorialcauda :: Int -> Int -> Int
fatorialcauda n acumulado
    | n == 0 = acumulado
    | otherwise = fatorialcauda (n-1) (n*acumulado) 

fibonaccicauda :: Int -> Int -> Int -> Int
fibonaccicauda a b n
    | n == 1 = b
    | otherwise = fibonaccicauda b (a+b) (n-1) 