create table groups
(
id INTEGER PRIMARY KEY,
number INTEGER not null
);

create table students
(
id INTEGER PRIMARY KEY,
full_name TEXT NOT NULL,
group_id INTEGER NOT NULL
);

create table statistics
(
id INTEGER PRIMARY KEY,
full_name TEXT NOT NULL,
group_id INTEGER NOT NULL,
date DATE NOT NULL
);

insert into groups (number)
VALUES (303),
(402);

insert into students (group_id, full_name)
VALUES (2, 'Тростин С.А.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Булатова Г.Р.'),
(2, 'Akhunzada Ghulam Abbas'),
(2, 'Кудашкин А.Е.'),
(2, 'Лихорадов И.И.'),
(2, 'Гераськин В. М.'),
(2, 'Дурнаев Н.С.'),
(2, 'Балашов В.В.'),
(2, 'Шабарин Игорь Александрович'),
(2, 'Akhunzada Ghulam Abbas'),
(2, 'Тростин С.А.'),
(2, 'Кудашкин А.Е.'),
(2, 'Александров К.В.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Сазонов Д. А.'),
(2, 'Булатова Г.Р.'),
(2, 'Балашов В.В.'),
(2, 'Плаксин Д.В.'),
(2, 'Арянов В.А.'),
(2, 'Макшев Н.И.'),
(2, 'Матвеев М.Д.'),
(2, 'Арянов В.А.'),
(2, 'Сазонов Д. А.'),
(2, 'Антонов К. Ю'),
(2, 'Александров К.В.'),
(2, 'Гурьков Н.Д.'),
(2, 'Макшев Н.И.'),
(2, 'Плаксин Д.В.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Матвеев М.Д.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Седики Худжа Юсуф'),
(2, 'Седики Худжа Юсуф'),
(2, 'Седики Худжа Юсуф'),
(2, 'Гурьков Н.Д.'),
(2, 'Александров К.В.'),
(2, 'Тростин С.А.'),
(2, 'Антонов К. Ю'),
(2, 'Булатова Г.Р.'),
(2, 'Плаксин Д.В.'),
(2, 'Балашов В. В.'),
(2, 'Кудашкин А.Е.'),
(2, 'Макшев Н.И.'),
(2, 'Арянов В.А.'),
(2, 'Лихорадов И.И.'),
(2, 'Ломайкин А.С.'),
(2, 'Гераськин В.М.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Седики Худжа Юсуф'),
(2, 'Булатова Г.Р.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Гераськин В.М.'),
(2, 'Балашов В.В.'),
(2, 'Тростин С.А.'),
(2, 'Гераськин В. М.'),
(2, 'Шабарин И.А'),
(2, 'Лихорадов И.И.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Ахунзада Г.А'),
(2, 'Седики Худжа Юсуф'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Булатова Г.Р.'),
(2, 'Антонов К. Ю'),
(2, 'Александров К.В'),
(2, 'Сазонов Д. А.'),
(2, 'Арянов В.А.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Кудашкин А.Е.'),
(2, 'Гераськин В. М.'),
(2, 'Тростин С.А.'),
(2, 'Балашов В.В.'),
(2, 'Сазонов Д. А.'),
(2, 'Арянов В.А.'),
(2, 'Александров К. В.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Плаксин Д.В'),
(2, 'Макшев Н.И.'),
(2, 'Александров К.В.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Булатова Г.Р.'),
(2, 'Плаксин Д.В.'),
(2, 'Кудашкин А.Е.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Арянов В.А.'),
(2, 'Макшев Н.И.'),
(2, 'Гурьков Н.Д.'),
(2, 'Балашов В. В.'),
(2, 'Матвеев М.Д.'),
(2, 'Булатова Г.Р.'),
(2, 'Кудашкин А.Е.'),
(2, 'Балашов В. В.'),
(2, 'Гераськин В. М.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Шабарин И. А.'),
(2, 'Сазонов Д. А.'),
(2, 'Кудашкин А.Е.'),
(2, 'Булатова Г.Р.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Гурьков Н.Д.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Александров К.В'),
(2, 'Арянов В.А.'),
(2, 'Балашов В. В.'),
(2, 'Макшев Н.И.'),
(2, 'Плаксин Д.В.'),
(2, 'Плаксин Д.В.'),
(2, 'Гурьков Н.Д.'),
(2, 'Александров К.В.'),
(2, 'Сазонов Д. А.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Матвеев М.Д.'),
(2, 'Арянов В.А.'),
(2, 'Макшев Н.И.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Александров К.В.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Булатова Г.Р.'),
(2, 'Гурьков Н.Д.'),
(2, 'Арянов В.А.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Балашов В. В.'),
(2, 'Кудашкин А.Е.'),
(2, 'Макшев Н.И.'),
(2, 'Булатова Г.Р.'),
(2, 'Гераськин В. М.'),
(2, 'Кудашкин А.Е.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Кудашкин А.Е.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Макшев Н.И.'),
(2, 'Плаксин Д.В.'),
(2, 'Булатова Г.Р.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Арянов В.А.'),
(2, 'Гераськин В. М.'),
(2, 'Сазонов Д. А.'),
(2, 'Плаксин Д.В.'),
(2, 'Арянов В.А.'),
(2, 'Сазонов Д. А.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Седики Худжа Юсуф'),
(2, 'Булатова Г.Р.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Арянов В.А.'),
(2, 'Седики Худжа Юсуф'),
(2, 'Сазонов Д. А.'),
(2, 'Матвеев М.Д.'),
(2, 'Макшев Н.И.'),
(2, 'Гераськин В. М.'),
(2, 'Кудашкин А.Е.'),
(2, 'Булатова Г.Р.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Седики Худжа Юсуф'),
(2, 'Булатова Г.Р.'),
(2, 'Кудашкин А.Е.'),
(2, 'Арянов В.А.'),
(2, 'Парамонов Олег Николаевич'),
(2, 'Макшев Н.И.'),
(1, 'Казакова И.С.'),
(1, 'Котков С.Н.'),
(1, 'Квашнин К.А.'),
(1, 'Логинов В.В.'),
(1, 'Зевайкин А.Е.'),
(1, 'Симатов В.В'),
(1, 'Малов К.И.'),
(1, 'Манин Д.И.');

insert into statistics (date, group_id, full_name)
VALUES
('19.03.2021',	'2' ,'Сазонов Д. А.'),
('19.03.2021','2','	Кудашкин А.Е.'),
('19.03.2021', '2','	Булатова Г.Р.'),
('19.03.2021', '2'	,'Седики Худжа Юсуф'),
('19.03.2021', '2'	,'Гурьков Н.Д.'),
('19.03.2021', '2','Парамонов Олег Николаевич'),
('19.03.2021', '2','Александров К.В'),
('19.03.2021', '2','Арянов В.А.'),
('19.03.2021', '2','Балашов В. В.'),
('19.03.2021', '2','Макшев Н.И.'),
('19.03.2021', '2','Плаксин Д.В.'),
('20.03.2021', '2','Плаксин Д.В.'),
('20.03.2021', '2','Гурьков Н.Д.'),
('20.03.2021', '2','Александров К.В.'),
('20.03.2021', '2','Сазонов Д. А.'),
('20.03.2021', '2','Седики Худжа Юсуф'),
('20.03.2021', '2','Матвеев М.Д.'),
('20.03.2021', '2','Арянов В.А.'),
('20.03.2021', '2','Макшев Н.И.'),
('22.03.2021', '2','Седики Худжа Юсуф'),
('26.03.2021', '2','Александров К.В.'),
('26.03.2021', '2','Седики Худжа Юсуф'),
('26.03.2021', '2','Булатова Г.Р.'),
('26.03.2021', '2','Гурьков Н.Д.'),
('26.03.2021', '2','Арянов В.А.'),
('26.03.2021', '2','Парамонов Олег Николаевич'),
('26.03.2021', '2','Балашов В. В.'),
('26.03.2021', '2','Кудашкин А.Е.'),
('26.03.2021', '2','Макшев Н.И.'),
('27.03.2021', '2','Булатова Г.Р.'),
('27.03.2021',	'2','Гераськин В. М.'),
('27.03.2021', '2','Кудашкин А.Е.'),
('27.03.2021','2','Парамонов Олег Николаевич');
