-- Casamento de padrões
padroes :: Int -> String
padroes 1 = "Um"
padroes 2 = "Dois"
padroes 3 = "Tres"
padroes x = "Nao esta entre 1 e 3"
-- Ao utilizar a função, passando um parâmetro, o interpretador testa os padrões, de
-- cima para baixo, a fim de encontrar o padrão em que o parâmetro se encaixa.

-- O "_" pode ser usado para valores gerais, conhecido como "Padrão Coringa".

-- Exemplos utilizando o Padrão Coringa:
padroes2 :: [Int] -> Int
padroes2 [] = 0
padroes2 (_:t) = 1 + padroes2 t

type Tupla4 = (Int, Int, Int, Int)
padroes3 :: Tupla4 -> String
padroes3 (_, _, _, fourth)
    | fourth > 10 = "Maior que 10"
    | otherwise = "Nao maior que 10"

-- Note que, caso não ocorra nenhuma operação com algum parâmetro, simplesmente
-- utilizamos o Padrão Coringa.

-- Exercício
opp :: (Int, (Int, Int)) -> Int
opp (1, (p, s)) = p + s
opp (2, (p, s)) = p - s
opp _ = 0