-- Tuplas: São estruturas de dados heterogêneas, semelhantes às structs de C/C++

-- Tuplas são definidas de forma semelhante às listas, mas com uso de parênteses:

lista = [1,2,3,4] -- Uma lista
tupla = (12345, "iarley", 23.2) -- Uma tupla

-- Note que a tupla contém elementos de tipos diferentes. Por este motivo é considerada heterogênea.

-- Nas tuplas a ORDEM IMPORTA.
-- (123, "iarley") != ("iarley", 123)

-- Quando uma tupla contém dois membros, ele é chamada de "par" ou "2-upla"
-- As funções "fst" e "snd" trabalham com este tipo de tupla:
-- fst (primeiro elemento)
-- snd (segundo elemento)

-- O uso da palavra reservada "type" permite a criação de sinônimos para tipos já existentes:
type Nota = Float
type Nome = String
type Aluno = (Nome, Nota)
type Turma = [Aluno]

-- Utilizando os sinônimos definidos anteriormente, vamos criar uma função que retorna uma lista
-- de alunos cuja nota seja maior que um valor passado como parâmetro (aprovados):
aprovados :: Turma -> Float -> [Aluno]
aprovados turma n = [(name, nota) | (name, nota) <- turma, nota >= n]

-- Exercício
type Ponto = (Float, Float, Float)

distancia :: Ponto -> Ponto -> Float
distancia (xa, ya, za) (xb, yb, zb) = sqrt (x + y + z)
    where
        x = (xb-xa)^2 
        y = (yb-ya)^2
        z = (zb-za)^2