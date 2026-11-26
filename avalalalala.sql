#exercicio 1
SELECT *
FROM reservas
WHERE aluguel_id = (SELECT MAX(aluguel_id) FROM reservas);

#exercicio 2
SELECT cliente_id, data_inicio, data_fim
FROM reservas
ORDER BY preco_total DESC
LIMIT 1;

#exercicio 3
SELECT h.tipo, a.nota, a.comentario
FROM avaliacoes AS a
JOIN hospedagens AS h ON h.hospedagem_id = a.hospedagem_id
WHERE a.nota = (SELECT MAX(nota) FROM avaliacoes);

#exercicio 4

SELECT
    a.nota,
    a.comentario,
    p.nome AS proprietario,
    e.cidade
FROM avaliacoes AS a
JOIN hospedagens AS h
    ON h.hospedagem_id = a.hospedagem_id
JOIN proprietarios AS p
    ON p.proprietario_id = h.proprietario_id
JOIN enderecos AS e
    ON e.endereco_id = h.endereco_id
WHERE LOWER(h.tipo) IN ('hotel', 'hoteis');