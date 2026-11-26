#17/11

/*
1 consulta

apos as consultas, a plataforma solicitou algumas mudanças.Foi observado que nao temos a quantidade de propriedades por proprietarios
tambem foi pedido que alterassemos a tabela alugueis para 'reservas'oq mais faz sentido para o banco.
*/

ALTER TABLE proprietarios
ADD qnt_hospedagem INT;

#renomeando o nome da tabela

ALTER TABLE reserva
RENAME TO reservas;


