

set SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
start transaction;
set time_zone = "+00:00";

create database IF NOT exists `site` default character SET utf8mb4 collate utf8mb4_unicode_ci;
USE `site`;


create table `pictures` (
  `ID_Picture` int(11) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `Title` varchar(50) default NULL,
  `ALT` varchar(30) NOT NULL
) engine=InnoDB default charset=utf8;



insert INTO `pictures` (`ID_Picture`, `Link`, `Title`, `ALT`) values
(1, 'picture/shirt1', 'Рубашка1', 'Картинка'),
(2, 'picture/shirt2', 'Рубашка2', 'Картинка'),
(3, 'picture/shirt3', 'Рубашка3', 'Картинка'),
(4, 'picture/jacket1', 'Куртка1', 'Картинка'),
(5, 'picture/jacket2', 'Куртка2', 'Картинка'),
(6, 'picture/pants1', 'Штаны1', 'Картинка'),
(7, 'picture/pants2', 'Штаны2', 'Картинка'),
(8, 'picture/shirt4', 'Рубашка4', 'Картинка'),
(9, 'picture/shirt5', 'Рубашка5', 'Картинка'),
(10, 'picture/jacket3', 'Куртка3', 'Картинка'),
(11, 'picture/jacket4', 'Куртка4', 'Картинка'),
(12, 'picture/pants3', 'Штаны3', 'Картинка'),
(13, 'picture/pants4', 'Штаны4', 'Картинка'),
(14, 'picture/socks1', 'Носки1', 'Картинка'),
(15, 'picture/socks2', 'Носки2', 'Картинка'),
(16, 'picture/socks3', 'Носки3', 'Картинка'),
(17, 'picture/socks4', 'Носки4', 'Картинка'),
(18, 'picture/socks5', 'Носки5', 'Картинка'),
(19, 'picture/socks6', 'Носки6', 'Картинка'),
(20, 'picture/pants5', 'Штаны5', 'Картинка'),
(21, 'picture/pants6', 'Штаны6', 'Картинка'),
(22, 'picture/shirt6', 'Рубашка6', 'Картинка'),
(23, 'picture/cap1', 'Кепка1', 'Картинка'),
(24, 'picture/cap2', 'Кепка2', 'Картинка'),
(25, 'picture/cap3', 'Кепка3', 'Картинка');


create table `products` (
  `ID_Products` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Characteristics` varchar(600) default NULL,
  `Description` varchar(400) default NULL,
  `Price` int(20) NOT NULL,
  `Discont_Price` int(20) NOT NULL,
  `Promo_Code_Price` int(20) NOT NULL,
  `Main_Picture` int(11) default NULL,
  `Main_Sections` int(11) NOT NULL,
  `Amount` int(20) default '1',
  `ON_OF` tinyint(1) NOT NULL default '1' comment 'Вкл.-Выкл.'
) engine=InnoDB default charset=utf8;



insert INTO `products` (`ID_Products`, `Name`, `Characteristics`, `Description`, `Price`, `Discont_Price`, `Promo_Code_Price`, `Main_Picture`, `Main_Sections`, `Amount`, `ON_OF`) values
(1, 'Куртка желтая', '-Цвет: желтый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошая желтая куртка', 5000, 4500, 4000, 4, 3, 2, 1),
(2, 'Куртка черная', '-Цвет: черный;\r\n-Материал: хлопок;\r\n-Размер: M.', 'Хорошая черная куртка', 3000, 3500, 3000, 10, 3, 4, 1),
(3, 'Куртка синяя', '-Цвет: синий;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошая синяя куртка', 3000, 2500, 2000, 11, 3, 1, 1),
(4, 'Штаны черные', '-Цвет: черный;\r\n-Материал: синтетика;\r\n-Размер: L.', 'Хорошие черные штаны', 4500, 4000, 3500, 6, 6, 3, 1),
(5, 'Штаны красные', '-Цвет: красный;\r\n-Материал: синтетика;\r\n-Размер: XL.', 'Хорошие красные штаны', 2000, 1500, 1000, 20, 6, 1, 1),
(6, 'Рубашка черная', '-Цвет: черный;\r\n-Материал: синтетика;\r\n-Размер: M.', 'Хорошая черная рубашка', 1000, 800, 500, 1, 7, 3, 1),
(7, 'Рубашка белая', '-Цвет: белый;\r\n-Материал: синтетика;\r\n-Размер: L.', 'Хорошая белая рубашка', 1000, 800, 500, 3, 7, 1, 1),
(8, 'Рубашка синяя', '-Цвет: синий;\r\n-Материал: синтетика;\r\n-Размер: XL.', 'Хорошая синяя рубашка', 1500, 1300, 1100, 9, 7, 5, 1),
(9, 'Носки черные', '-Цвет: черный;\r\n-Материал: хлопок;\r\n-Размер: M.', 'Хорошие черные носки', 400, 300, 200, 14, 8, 1, 1),
(10, 'Носки белые', '-Цвет: белый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошие белые носки', 200, 150, 100, 16, 8, 3, 1),
(11, 'Носки фиолетовые', '-Цвет: фиолетовые;\r\n-Материал: синтетика;\r\n-Размер: L.\r\n', 'Хорошие фиолетовые носки', 300, 250, 200, 17, 8, 3, 1),
(12, 'Носки зеленые', '-Цвет: зеленый;\r\n-Материал: хлопок;\r\n-Размер: S.', 'Хорошие зеленые носки', 100, 80, 50, 18, 8, 4, 1),
(13, 'Кепка белая', '-Цвет: белый;\r\n-Материал: синтетика;\r\n-Размер: M.', 'Хорошая белая кепка', 600, 400, 300, 23, 1, 1, 1);



create table `productspictures` (
  `ID_Products` int(11) NOT NULL,
  `ID_Picture` int(11) NOT NULL
) engine=InnoDB default charset=utf8;


insert INTO `productspictures` (`ID_Products`, `ID_Picture`) values
(1, 4),
(1, 5),
(2, 10),
(3, 11),
(4, 6),
(4, 7),
(4, 12),
(4, 13),
(5, 20),
(5, 21),
(6, 1),
(6, 2),
(7, 3),
(7, 8),
(8, 9),
(8, 22),
(9, 14),
(9, 15),
(10, 16),
(11, 17),
(12, 18),
(12, 19),
(13, 23),
(13, 24),
(13, 25);



create table `productssections` (
  `ID_Products` int(11) NOT NULL,
  `ID_Section` int(11) NOT NULL
) engine=InnoDB default charset=utf8;



insert INTO `productssections` (`ID_Products`, `ID_Section`) values
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
  `ID_Section` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(400) default NULL
) engine=InnoDB default charset=utf8;



insert INTO `sections` (`ID_Section`, `Name`, `Description`) values
(1, 'Верхняя одежда', 'Здесь вы найдете верхнюю одежду'),
(2, 'Нижнее белье', 'Здесь вы найдете нижнее белье на любой вкус'),
(3, 'Куртки', 'Здесь можно просмотреть доступные куртки'),
(6, 'Штаны', 'Здесь можно увидеть штаны'),
(7, 'Рубашки', 'Здесь собраны все рубашки'),
(8, 'Носки', 'Здесь можно просмотреть носки');


alter table `pictures`
  ADD primary key (`ID_Picture`),
  ADD unique key `Link` (`Link`),
  ADD unique key `ID_Picture` (`ID_Picture`);


alter table `products`
  ADD primary key (`ID_Products`),
  ADD unique key `ID_Products` (`ID_Products`),
  ADD key `products_ibfk_1` (`Main_Sections`),
  ADD key `Main_Picture` (`Main_Picture`);


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
  modify `ID_Picture` int(11) NOT NULL auto_increment, auto_increment=26;


alter table `products`
  modify `ID_Products` int(11) NOT NULL auto_increment, auto_increment=14;


alter table `sections`
  modify `ID_Section` int(11) NOT NULL auto_increment, auto_increment=9;


alter table `products`
  ADD constraint `products_ibfk_1` foreign key (`Main_Sections`) references `sections` (`ID_Section`) ON delete cascade ON update cascade,
  ADD constraint `products_ibfk_2` foreign key (`Main_Picture`) references `pictures` (`ID_Picture`) ON delete cascade ON update cascade;


alter table `productspictures`
  ADD constraint `productspictures_ibfk_1` foreign key (`ID_Products`) references `products` (`ID_Products`) ON delete cascade ON update cascade,
  ADD constraint `productspictures_ibfk_2` foreign key (`ID_Picture`) references `pictures` (`ID_Picture`) ON delete cascade ON update cascade;


alter table `productssections`
  ADD constraint `productssections_ibfk_1` foreign key (`ID_Products`) references `products` (`ID_Products`) ON delete cascade ON update cascade,
  ADD constraint `productssections_ibfk_2` foreign key (`ID_Section`) references `sections` (`ID_Section`) ON delete cascade ON update cascade;
commit;
