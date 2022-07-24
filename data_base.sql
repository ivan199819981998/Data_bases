

set SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
start transaction;
set time_zone = "+00:00";








create table `pictures` (
  `ID_Picture` int(11) NOT null,
  `Link` varchar(150) NOT null,
  `Title` varchar(50) default null
) engine=InnoDB default charset=utf8;


insert into `pictures` (`ID_Picture`, `Link`, `Title`) values
(1, 'picture/shirt1', 'Рубашка1'),
(2, 'picture/shirt2', 'Рубашка2'),
(3, 'picture/shirt3', 'Рубашка3'),
(4, 'picture/jacket1', 'Куртка1'),
(5, 'picture/jacket2', 'Куртка2'),
(6, 'picture/pants1', 'Штаны1'),
(7, 'picture/pants2', 'Штаны2'),
(8, 'picture/shirt4', 'Рубашка4'),
(9, 'picture/shirt5', 'Рубашка5'),
(10, 'picture/jacket3', 'Куртка3'),
(11, 'picture/jacket4', 'Куртка4'),
(12, 'picture/pants3', 'Штаны3'),
(13, 'picture/pants4', 'Штаны4'),
(14, 'picture/socks1', 'Носки1'),
(15, 'picture/socks2', 'Носки2'),
(16, 'picture/socks3', 'Носки3'),
(17, 'picture/socks4', 'Носки4'),
(18, 'picture/socks5', 'Носки5'),
(19, 'picture/socks6', 'Носки6'),
(20, 'picture/pants5', 'Штаны5'),
(21, 'picture/pants6', 'Штаны6'),
(22, 'picture/shirt6', 'Рубашка6'),
(23, 'picture/cap1', 'Кепка1'),
(24, 'picture/cap2', 'Кепка2'),
(25, 'picture/cap3', 'Кепка3');



create table `products` (
  `ID_Products` int(11) NOT null,
  `Name` varchar(100) NOT null,
  `Characteristics` varchar(600) default null,
  `Description` varchar(400) default null,
  `Price` int(20) NOT null,
  `Discont_Price` int(20) NOT null,
  `Promo_Code_Price` int(20) NOT null,
  `Main_Sections` int(11) NOT null,
  `Amount` int(20) default 1,
  `ON_OF` tinyint(1) NOT null default 1 comment 'Вкл.-Выкл.'
) engine=InnoDB default charset=utf8;



insert into `products` (`ID_Products`, `Name`, `Characteristics`, `Description`, `Price`, `Discont_Price`, `Promo_Code_Price`, `Main_Sections`, `Amount`, `ON_OF`) values
(1, 'Куртка желтая', '-Цвет: желтый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошая желтая куртка', 5000, 4500, 4000, 3, 2, 1),
(2, 'Куртка черная', '-Цвет: черный;\r\n-Материал: хлопок;\r\n-Размер: M.', 'Хорошая черная куртка', 3000, 3500, 3000, 3, 4, 1),
(3, 'Куртка синяя', '-Цвет: синий;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошая синяя куртка', 3000, 2500, 2000, 3, 1, 1),
(4, 'Штаны черные', '-Цвет: черный;\r\n-Материал: синтетика;\r\n-Размер: L.', 'Хорошие черные штаны', 4500, 4000, 3500, 6, 3, 1),
(5, 'Штаны красные', '-Цвет: красный;\r\n-Материал: синтетика;\r\n-Размер: XL.', 'Хорошие красные штаны', 2000, 1500, 1000, 6, 1, 1),
(6, 'Рубашка черная', '-Цвет: черный;\r\n-Материал: синтетика;\r\n-Размер: M.', 'Хорошая черная рубашка', 1000, 800, 500, 7, 3, 1),
(7, 'Рубашка белая', '-Цвет: белый;\r\n-Материал: синтетика;\r\n-Размер: L.', 'Хорошая белая рубашка', 1000, 800, 500, 7, 1, 1),
(8, 'Рубашка синяя', '-Цвет: синий;\r\n-Материал: синтетика;\r\n-Размер: XL.', 'Хорошая синяя рубашка', 1500, 1300, 1100, 7, 5, 1),
(9, 'Носки черные', '-Цвет: черный;\r\n-Материал: хлопок;\r\n-Размер: M.', 'Хорошие черные носки', 400, 300, 200, 8, 1, 1),
(10, 'Носки белые', '-Цвет: белый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошие белые носки', 200, 150, 100, 8, 3, 1),
(11, 'Носки фиолетовые', '-Цвет: фиолетовые;\r\n-Материал: синтетика;\r\n-Размер: L.\r\n', 'Хорошие фиолетовые носки', 300, 250, 200, 8, 3, 1),
(12, 'Носки зеленые', '-Цвет: зеленый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошие зеленые носки', 100, 80, 50, 8, 4, 1),
(13, 'Кепка белая', '-Цвет: белый;\r\n-Материал: синтетика;\r\n-Размер: M.', 'Хорошая белая кепка', 600, 400, 300, 1, 1, 1);



create table `productspictures` (
  `ID_Products` int(11) NOT null,
  `ID_Picture` int(11) NOT null,
  `Type` int(5) NOT null
) engine=InnoDB default charset=utf8;



insert into `productspictures` (`ID_Products`, `ID_Picture`, `Type`) values
(1, 4, 1),
(1, 5, 2),
(2, 10, 1),
(3, 11, 1),
(4, 6, 1),
(4, 7, 2),
(4, 12, 2),
(4, 13, 2),
(5, 20, 1),
(5, 21, 2),
(6, 1, 1),
(6, 2, 2),
(7, 3, 1),
(7, 8, 2),
(8, 9, 1),
(8, 22, 2),
(9, 14, 1),
(9, 15, 2),
(10, 16, 1),
(11, 17, 1),
(12, 18, 1),
(12, 19, 2),
(13, 23, 1),
(13, 24, 2),
(13, 25, 2);


create table `productssections` (
  `ID_Products` int(11) NOT null,
  `ID_Section` int(11) NOT null
) engine=InnoDB default charset=utf8;



insert into `productssections` (`ID_Products`, `ID_Section`) values
(1, 3),
(1, 1),
(2, 3),
(2, 1),
(3, 1),
(3, 3),
(4, 1),
(4, 6),
(5, 1),
(5, 6),
(6, 1),
(6, 7),
(7, 1),
(7, 7),
(8, 1),
(8, 7),
(9, 2),
(9, 8),
(10, 2),
(10, 8),
(11, 2),
(11, 8),
(12, 2),
(12, 8),
(13, 1);



create table `sections` (
  `ID_Section` int(11) NOT null,
  `Name` varchar(100) NOT null,
  `Description` varchar(400) default null
) engine=InnoDB default charset=utf8;



insert into `sections` (`ID_Section`, `Name`, `Description`) values
(1, 'Верхняя одежда', 'Здесь вы найдете верхнюю одежду'),
(2, 'Нижнее белье', 'Здесь вы найдете нижнее белье на любой вкус'),
(3, 'Куртки', 'Здесь можно просмотреть доступные куртки'),
(6, 'Штаны', 'Здесь можно увидеть штаны'),
(7, 'Рубашки', 'Здесь собраны все рубашки'),
(8, 'Носки', 'Здесь можно просмотреть носки');


alter table `pictures`
  ADD primary key (`ID_Picture`),
  ADD unique key `Link` (`Link`);


alter table `products`
  ADD primary key (`ID_Products`),
  ADD unique key `ID_Products` (`ID_Products`),
  ADD key `products_ibfk_1` (`Main_Sections`);


alter table `productspictures`
  ADD key `productspictures_ibfk_1` (`ID_Products`),
  ADD key `productspictures_ibfk_2` (`ID_Picture`);


alter table `productssections`
  ADD key `productssections_ibfk_1` (`ID_Products`),
  ADD key `productssections_ibfk_2` (`ID_Section`);


alter table `sections`
  ADD primary key (`ID_Section`),
  ADD unique key `ID_Section` (`ID_Section`),
  ADD unique key `Section_Name` (`Name`);


alter table `pictures`
  modify `ID_Picture` int(11) NOT null auto_increment, auto_increment=26;


alter table `products`
  modify `ID_Products` int(11) NOT null auto_increment, auto_increment=14;


alter table `sections`
  modify `ID_Section` int(11) NOT null auto_increment, auto_increment=9;


alter table `products`
  ADD constraint `products_ibfk_1` foreign key (`Main_Sections`) references `sections` (`ID_Section`) ON delete cascade ON update cascade;


alter table `productspictures`
  ADD constraint `productspictures_ibfk_1` foreign key (`ID_Products`) references `products` (`ID_Products`) ON delete cascade ON update cascade,
  ADD constraint `productspictures_ibfk_2` foreign key (`ID_Picture`) references `pictures` (`ID_Picture`) ON delete cascade ON update cascade;


alter table `productssections`
  ADD constraint `productssections_ibfk_1` foreign key (`ID_Products`) references `products` (`ID_Products`) ON delete cascade ON update cascade,
  ADD constraint `productssections_ibfk_2` foreign key (`ID_Section`) references `sections` (`ID_Section`) ON delete cascade ON update cascade;
commit;


