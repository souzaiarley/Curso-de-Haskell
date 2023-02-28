-- Para fazermos definições locais de uma função, utilizamos "where"
heron :: Float -> Float -> Float -> Float
heron a b c = sqrt (p*(p-a)*(p-b)*(p-c))
    where
        p = (a+b+c)/2
    -- Neste exemplo, definimos "p" por meio do uso de "where"

-- Exercícios
raizes :: Float -> Float -> Float -> Int
raizes a b c
    | delta < 0 = 0
    | delta == 0 = 1
    | delta > 0 = 2
    where
        delta = (b^2) - (4*a*c)

-- Também podemos usar "let" e "in" para fazer definições
areacilindro :: Float -> Float -> Float
areacilindro r h = let areabase = pi * r * r
                       arealado = 2 * pi * r * h
                   in 2*areabase + arealado
            -- Neste caso, as definições ocorrem no começo

-- Exercício: Heron com let-in
heron2 :: Float -> Float -> Float -> Float
heron2 a b c = let p = (a+b+c)/2
               in sqrt (p*(p-a)*(p-b)*(p-c))