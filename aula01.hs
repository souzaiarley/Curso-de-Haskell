-- Para comentar, utilizar "--"

polinomio :: Int -> Int
polinomio x = x*x + 10*x + 2

-- Cálculo do quadrado de um inteiro
quadrado :: Int -> Int
quadrado x = x*x

-- Soma
soma :: Int -> Int -> Int
soma x y = x + y

-- Triplica
triplica :: Int -> Int
triplica x = x*3

-- Exercícios
areaCirculo :: Float -> Float
areaCirculo r = pi*r*r

perimetroCirculo :: Float -> Float
perimetroCirculo r = 2*pi*r

hipotenusa :: Float -> Float -> Float
hipotenusa a b = sqrt (a*a + b*b)

diferencaArea :: Float -> Float -> Float
diferencaArea r1 r2 = abs (areaCirculo r1 - areaCirculo r2)
-- função abs para devolver o valor absoluto

-- Outras funções:
--    abs (valor absoluto)
--    ceiling (menor inteiro maior (ou igual) que o argumento)
--    floor (maior inteiro menor (ou igual) que o argumento)
--    cos (cosseno de um valor em radianos)
--    div (divisao inteira)
--    mod (resto da divisão)
--    exp (valor correspondente a e^n)
--    lcm (mmc entre dois números)
--    pi (valor de pi)
--    round (inteiro mais próximo do argumento)
--    span (separa uma lista em duas partes e retorna em uma tupla, sendo a primeira parte o prefixo mais longo que satisfaz uma condição p e a segunda parte o resto da lista)
--    minimum / maximum (retornam o valor mínimo e máximo de uma lista)
--    sum / product (retornam a soma e o produto dos elementos de uma lista)
--    reverse (retorna uma lista invertida)
--    replicate n x (retorna uma lista com um elemento x repetido consecutivamente n vezes)
--    repeat n (retorna uma lista infinita composta somente do elemento n)
--    cycle x (retorna uma lista infinita onde todos os elementos são elementos de x, sendo repetidos de forma cíclica)