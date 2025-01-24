-- insert into disciplinas values (3,'Português','Lingua em constante mudança');
-- select * from disciplinas;

copy disciplinas (id_disciplinas, nome, ementa)
from 'C:\disciplinas.csv'
delimiter ','
csv header -- remove o cabeçalho do imprtação do csv
