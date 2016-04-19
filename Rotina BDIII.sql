Ao término de cada dia de realização de provas, deve-se executar uma rotina que verifica
os tempos dos competidores e apura quais devem passar para a próxima fase (8 melhores
qualificados), alocando, automaticamente, tais competidores nas raias da série em questão.
O competidor com melhor tempo deve ser posicionado na raia 4. O segundo melhor na raia
5. O terceiro melhor na raia 3. O de quarto tempo na raia 6, e assim por diante.


CREATE Event "atualizar_series" ON Schedule Every 1 Day On 
Do
Begin
UPDATE 



//todo Para cada serie, faz um select da tabela de participantes, por um mesmo id_serie (ex: 1) e ordena por 
ordem crescente de tempo.
//todo Com o resultado do select, preenche as proximas séries com  os menores tempos de até 8 competidores,
começando pela raia 4, 5 e 3, 6 e 2, 7 e 1, e finalmente 8.

create or replace PROCEDURE "Atualiza_series" 
Is CURRENT_TIMESTAMP 