-- Recupere o nome e o telefone das produtoras localizadas no bairro ‘Meireles’.
SELECT nome, telefone
FROM produtora
WHERE bairro  = 'Meireles';

-- Recupere o nome, a data, o horário e o valor de todos os eventos agendados para o dia 28/07/2021.
SELECT nome, data, hora, valor
FROM evento
WHERE data = '2021-07-28';

-- Recupere para cada evento, os dados do evento e os dados da produtora.
select e.cod_evento, e.nome, e.data, e.hora, e.valor, p.cod_produtora, p.nome, p.telefone, p.logradouro, p.bairro, p.numero, p.cidade,  p.cep 
from evento as e 
join produtora as p on e.cod_produtora = p.cod_produtora;

-- Recupere para cada evento, os dados do evento e os dados da produtora e o local.
select e.cod_evento, e.nome, e.data, e.hora, e.valor, p.cod_produtora, p.nome, p.telefone, p.logradouro, p.bairro, p.numero, p.cidade,  p.cep, 
l.cod_local, l.nome_local, l.logradouro , l.bairro, l.numero, l.cidade, l.cep 
from evento as e 
join produtora as p on e.cod_produtora = p.cod_produtora
join local as l on e.cod_local = l.cod_local;

-- Recupere o nome de todos os eventos que foram realizados no “Castelão”.
select e.nome
from evento as e join local as l on e.cod_local = l.cod_local
where l.nome_local = 'Castelão';

-- Recupere o nome da produtora que realizou o evento “Fortal 2019”.
select p.nome
from evento as e join produtora as p on e.cod_produtora = p.cod_produtora
where e.nome = 'Fortal 2019';


-- Recupere os nomes das produtoras que realizaram eventos com um valor maior do que 500 mil no “Centro de Eventos do Ceará”.
select p.nome
from produtora as p
join evento as e on e.cod_produtora = p.cod_produtora
join local as l on e.cod_local = l.cod_local
where e.valor > 500000 and l.nome_local = 'Centro de Eventos do Ceará'

-- Recupere o nome das pessoas que compraram ingressos para eventos realizados no dia 10/05/2019 em Fortaleza.
select i.nome
from ingresso as i 
join evento as e on i.cod_evento = e.cod_evento
join local as l on e.cod_local = l.cod_local
where e.data = '2019-05-10' and l.cidade = 'Fortaleza';