-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 08 Lut 2018, 14:36
-- Wersja serwera: 5.7.19-17-log
-- Wersja PHP: 7.1.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `25847318_raprtdg`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `playlist_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Zrzut danych tabeli `animal`
--

INSERT INTO `animal` (`id`, `name`, `hourly_rate`, `description`, `address`, `playlist_id`) VALUES
(1, 'Mani i Wiosna', '80.00', '<p>Brak</p>', 'Encyklopedyczna 16, Warszawa', 'PLZT3Hkt-_O3xt0ZyCsbgkZE8oVM-PNDrY'),
(2, 'Fela', '45.00', '<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>zabranie z mieszkania smaczk&oacute;w</p>\r\n	</li>\r\n	<li>\r\n	<p>zapiÄcie Feli szelek oraz smyczy</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze&ndash; w pobliĹźu jest park do kt&oacute;rego moĹźna siÄ wybraÄ</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Fela moĹźe na spacerze siÄ zapieraÄ i kĹaĹÄ, wtedy warto przekonaÄ jÄ do dalszego spaceru smaczkami.</p>', 'Broniewskiego 54/14, Warszawa', 'PLZT3Hkt-_O3xSCDtEqjSOgOTKhe3JIx9C'),
(3, 'Pepper', '40.00', '<p><strong>Kod: </strong>13 kluczyk 6467</p>\r\n\r\n<p><strong>Czas wizyty:</strong>&nbsp;spacer od wyjĹcia z mieszkania 60 min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia:</strong></p>\r\n\r\n<p>Pani jest w domu, wyda psa i marchewki. Dzieci mogÄ spaÄ, wiÄc proĹba o wejĹcie kodem. Pies uwielbia marchewki i jest bardzo grzeczny.</p>', 'Bronikowskiego 55/13, Warszawa', 'PLZT3Hkt-_O3xYvpVNDRij_zFFPfudpcFQ'),
(4, 'Franek', '45.00', '<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>PrzedziaĹ godzinowy:&nbsp;</strong>14.00-&shy;16.00</p>\r\n\r\n<p><strong>Kod:&nbsp;</strong>S5097 dzwonek</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Franek to sympatyczny i energiczny piesek. Lubi swojÄ obecnoĹÄ podkreĹliÄ szczekaniem. Zdarza mu siÄ szczekaÄ na biegnÄcych ludzi lub jadÄcych na rowerze. Nie jest agresywnyw stosunku do innych ps&oacute;w oraz ludzi. JeĹli bÄdzie bardzo brudny moĹźna go wykÄpaÄ w wannie. Szelki oraz smycz (flexi) przewaĹźnie leĹźÄ na podĹodze przy drzwiach albo w Ĺazience. Worki na kupy leĹźÄ na stole w salonie.</p>', 'Pokorna 2/755, Warszawa', 'PLZT3Hkt-_O3wlNygCAskw9moCL_ThAWq9'),
(5, 'Toto, Lord, Zizi', '45.00', '<p><strong>Toto</strong>-&shy; jamnik, <strong>Lord</strong>-&shy; pudel, <strong>Zizi</strong>-&shy; chihuahua</p>\r\n\r\n<p>W mieszkaniu jest teĹź kot MiluĹ</p>\r\n\r\n<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>Kod:&nbsp;</strong>2601 kluczyk 7247&ndash; przy bramie, 601 kluczyk 7247&ndash; przy klatce</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp), <em><strong>na g&oacute;rÄ nie wchodzimy</strong></em></p>\r\n	</li>\r\n	<li>\r\n	<p>spacerujemy w pobliskim lesie ze wszystkimi psami</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miski (w klatkach teĹź) i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, psy)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Toto oraz Zizi sÄ zamkniÄte w kennel klatkach, Lord biega luzem. ZakĹadamy Zizi szelki/kamizelkÄ. W mieszkaniu sÄ 3 smycze flexi (p&oacute;Ĺka przy wejĹciu). Wymieniamy w klatkach podkĹady (w szufladzie w Ĺazience). Po spacerze zamykamy psy w klatkach.</p>', 'Strumykowa 29c/601, Warszawa', 'PLZT3Hkt-_O3xTHYeceQQ873iqdeEsgZYh'),
(6, 'Gwel', '40.00', '<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>zabranie psa na spacer do fortu</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Gwel moĹźe wchodziÄ do fosy, jest Ĺwietnym pĹywakiem. Uwielbia nosiÄ i bawiÄ siÄ patykami.</p>', 'ObroĹcĂłw Tobruku 38/104, Warszawa', 'PLZT3Hkt-_O3zc99m39vzjBQwp7IId-gRY'),
(7, 'Pusia', '35.00', '<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>Spacery:</strong> wtorek i czwartek</p>\r\n\r\n<p><strong>PrzedziaĹ godzinowy:&nbsp;</strong>najlepiej wykonaÄ do godziny 15.00</p>\r\n\r\n<p><strong>Kod:&nbsp;</strong>s6512 dzwonek</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;</p>\r\n\r\n	<p>zabranie psa na spacer do lasu lub Fortu Bema</p>\r\n	</li>\r\n	<li>\r\n	<p>w parku i lesie moĹźna spuĹciÄ Pusie ze smyczy</p>\r\n	</li>\r\n	<li>\r\n	<p>naleĹźy bardzo uwaĹźaÄ by nie zjadĹa nic na spacerze! Potrafi jeĹÄ takĹźe kupy wiÄc trzeba zwracaÄ na niÄ duĹźÄ uwagÄ&ndash; moĹźna zabieraÄ jej z pyska gdyby coĹ zĹapaĹa ale lepiej nie dopuĹciÄ do takiej sytuacji</p>\r\n	</li>\r\n	<li>\r\n	<p>nie ze wszystkimi psami siÄ polubi</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody z dzbanka brita</p>\r\n	</li>\r\n	<li>\r\n	<p>podajemy Pusi kilka <strong>(!!!!)</strong> granulek karmy z biaĹego pojemnika do zabawki &ndash; rolka na podĹodze</p>\r\n	</li>\r\n	<li>\r\n	<p>pozwalamy Pusi zaczÄÄ jeĹÄ dopiero w chwili naszego&nbsp;wyjĹcia</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Pani bardzo dba o czystoĹÄ w domu, wiÄc bardzo istotne jest zachowanie czystoĹci po psie i sobie. ProszÄ nie wchodziÄ do mieszkania w butach, bardzo dokĹadnie umyÄ i wytrzeÄ psu Ĺapki po spacerze i posprzÄtaÄ po nim jeĹli siÄ zaĹatwi.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Na stole w kuchni jest biaĹy pojemnik z Pusi karmÄ &ndash; jest to porcja na CAĹY dzieĹ, wiÄc na koniec wrzucamy do zabawki zaledwie kilka granulek</p>\r\n	</li>\r\n	<li>\r\n	<p>Pusi szuflada z jej rzeczami jest po prawej stronie na dole po wejĹciu do kuchn</p>\r\n	</li>\r\n	<li>\r\n	<p>rÄczniki do wytarcia Pusi Ĺapek sÄ na klatce w kuchni</p>\r\n	</li>\r\n	<li>\r\n	<p>po spacerze Pusia ma grzecznie czekaÄ na wytarcie Ĺap lub zabranie do wanny na rÄczniku</p>\r\n	</li>\r\n	<li>\r\n	<p>radio jest wĹÄczone caĹy czas</p>\r\n	</li>\r\n</ul>', 'OsmaĹczyka 28 m. 9, Warszawa', 'PLZT3Hkt-_O3wFpRyWBfd5lOaD0Hs6v0R0'),
(8, 'Fela i Neon', '60.00', '<p><strong>Fela </strong>(mieszaniec) i <strong>Neon </strong>(beagle)</p>\r\n\r\n<p><strong>Czas wizyty:</strong>&nbsp;60 min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Neon uczulony jest na woĹowinÄ, jagniÄcinÄ, nabiaĹ, kukurydzÄ, ziemniaki, nie wolno podawaÄ mu tych pokarm&oacute;w. Neon niedowidzi, niedosĹyszy. Neon i Fela mogÄ siÄ baÄ innych ps&oacute;w i na nie szczekaÄ. ProĹba, aby unikaÄ kontaktu z innymi psami.</p>', 'Kostki Potockiego 2G m. 90, Warszawa', 'PLZT3Hkt-_O3xdGuLznTJv-40ROeRuJqCU'),
(9, 'ZÄbek', '40.00', '<p><strong>Czas wizyty:</strong>&nbsp;40&nbsp;min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie kota, misek, wszystkich pomieszczeĹ do kt&oacute;rych ma kot dostÄp, kuweta)</p>\r\n	</li>\r\n	<li>\r\n	<p>posprzÄtanie kuwety i dookoĹa niej, umycie miseczek, wywietrzyÄ mieszkanie</p>\r\n	</li>\r\n	<li>\r\n	<p>karmienie wedĹug instrukcji</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie wykonanych czynnoĹci</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak kot je</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, kuweta, kot)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>&nbsp;</p>', 'Radziwie    7/235, Warszawa', 'PLZT3Hkt-_O3zgt74-Zk7of8iohLq7Vc4O'),
(10, 'FulfiĹ', '40.00', '<p><strong>Czas wizyty:</strong>&nbsp;40 min.</p>\r\n\r\n<p><strong>Kod:&nbsp;</strong>07777</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie kota, misek, wszystkich pomieszczeĹ do kt&oacute;rych ma kot dostÄp, kuweta)</p>\r\n	</li>\r\n	<li>\r\n	<p>posprzÄtanie kuwety i dookoĹa niej, umycie miseczek, wywietrzyÄ mieszkanie</p>\r\n	</li>\r\n	<li>\r\n	<p>karmienie-&nbsp;suche do peĹna we wszystkich miskach (jedzenie w szufladzie przy lod&oacute;wce)</p>\r\n	</li>\r\n	<li>\r\n	<p>woda do poĹowy misek, bo kot wylewa, woda z kranu</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie wykonanych czynnoĹci</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak kot je</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, kuweta, kot)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Kuweta jest w Ĺazience, odchody wyrzucamy do wc. Fulfisiowi moĹźna otworzyÄ balkon na czas wizyty. Kota trzeba duĹźo przytulaÄ, bo bardzo tÄskni.</p>\r\n\r\n<p>&nbsp;</p>', 'Konstruktorska 10a / 53, Warszawa', 'PLZT3Hkt-_O3xQgDQy7ILc49_uQBeJ8Pi5'),
(11, 'Maurycy i Marcel', '35.00', '<p><strong>Czas wizyty:</strong>&nbsp;40&nbsp;min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie kota, misek, wszystkich pomieszczeĹ do kt&oacute;rych ma kot dostÄp, kuweta)</p>\r\n	</li>\r\n	<li>\r\n	<p>posprzÄtanie kuwety i dookoĹa niej, umycie miseczek, wywietrzyÄ mieszkanie</p>\r\n	</li>\r\n	<li>\r\n	<p>karmienie wedĹug instrukcji</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie wykonanych czynnoĹci</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak kot je</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, kuweta, kot)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p><strong>1. Jedzenie: </strong>Zapasy w najniĹźszej szufladzie i na dole w szafce pod blatem po lewo. Rano po 1 saszetce na p&oacute;Ĺ. Marcel szybko zjada swoje i dobiera siÄ do drugiej miski. Pilnuj proszÄ Ĺźeby Maurycy miaĹ szanse zjeĹÄ. MoĹźesz postawiÄ jego miskÄ w przedpokoju albo obok telewizora komodzie w duĹźym pokoju, tam Marcel nie wchodzi. Potem na dzieĹ sucha karma po 1-2 ĹyĹźeczki. Wieczorem teĹź po poĹowie saszetki. Maurycy lubi suche chrupki, wiÄc jak wyczerpie juĹź limit dzienny, a nadal czeka przy misce, to naleĹźy mu podaÄ. PamiÄtaj, Ĺźeby wodÄ do picia wymieniaÄ przy kaĹźdym karmieniu. Maurycy jak chce piÄ to wchodzi do wanny-&nbsp; uĹÄ cieniutki strumieĹ wody wtedy. Wbrew zasadom zdrowego odĹźywiania, dajÄ im czasem kabanoski jako przekÄski. Marcel da siÄ za to pokroiÄ. RozkĹadam je po mieszkaniu- na stole, kanapie, na drapaku. Niech trochÄ wysiĹku bÄdzie. Czasem teĹź rzucam mu po mieszkaniu, niech pobiega za nimi.</p>\r\n\r\n<p><strong>2. Kuwetka:</strong> SprzÄtanie minimum 2 razy dziennie np. rano i wieczorem. ZostawiĹam obok kuwety ĹopatkÄ, woreczki, neutralizator i perfumy do tego przeznaczone. Nie wyrzucaj Ĺźwirku do kibelka. Brudna ĹopatkÄ moĹźeszumyÄ w kibelku szczotkÄ do wc. Jak poczujesz, ze kuweta nawet sprzÄtniÄta, brzydko pachnie, wsyp do niej cale opakowanie neutralizatora. MoĹźesz tez tego uĹźyÄ jeĹli zdarzy siÄ kt&oacute;remuĹ nie trafiÄ do kuwety, tylko obok (posyp kaĹuĹźe, odczekaj aĹź wsiÄknie i zamieÄ). Ale generalnie oba sÄ porzÄdnymi kotkami i grzecznie korzystajÄ z kuwetki, czasem tylko leniwce sikajÄ na stojÄco. Dodatkowy Ĺźwirek zostawiĹam koĹo pralki. Marcel sporadycznie umaĹźe sobie dupkÄ (ma ta dĹuĹźszÄ sierĹÄ), uĹźywam wtedy chusteczek dla niemowlÄt.</p>\r\n\r\n<p><strong>3. Okna (bardzo waĹźne!!!)</strong> Nie otwieraj ich na oĹcieĹź. Jedynie uchylaj. Kocury nie wykazywaĹy do tejpory zainteresowania uchylonym oknem, ale nigdy nic nie wiadomo. Zamykaj wiec wszystkie okna przy wyjĹciu z domu. MogÄ wychodziÄ na balkon, ale tylko pod kontrolÄ i w twojej obecnoĹci.</p>\r\n\r\n<p><strong>4. Zabawa:</strong>&nbsp;Zabawki sÄ w pufie w salonie. Maurycy lubi r&oacute;Ĺźowe pi&oacute;rka i kuleczki z folii aluminiowej. CzÄsto chowa siÄ w kanapie w ciÄgu dnia. Jego miejsce to dekoder w duĹźym pokoju-&nbsp;nie pozwalam tam wchodziÄ MĹodemu. Chyba tylko on lubi drapak. Marcel czasem aportuje. Lubi jak siÄ go czesze. (Maurycy zdecydowanienie). Maurycy ma swoje humory. Nie zmuszaj go do niczego, nie gĹaszcz na sile itp. Jak bÄdzie prychaĹ, zostaw w spokoju. Sam zadecyduje czy i kiedy przyjdzie. Jak mu siÄ cos nie podoba potrafi ugryĹşÄ. Ale potrafi tez poĹoĹźyÄ siÄ na kolanach pomiziaÄ siÄ i pomruczeÄ. Bedzie wtedy tuliĹ i wsysaĹ wszyje. A jak jest zadowolony to leĹźy na Ĺrodku pokoju i pokazuje brzuszek. Marcel pozwala braÄ siÄ na rÄce, gĹaskaÄ do woli. Generalnie jest bezproblemowy.</p>', 'Ĺukowska 4/64, Warszawa', 'PLZT3Hkt-_O3xMBVvXaJYK7XS4IwYP1Oxo'),
(12, 'Yuki', '35.00', '<p><strong>Czas wizyty:</strong>&nbsp;30 min.</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>zabranie psa na spacer wkoĹo bloku</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Yuki naleĹźy pomoc przy wchodzeniu na schodach przed blokiem. W mieszkaniu sÄ r&oacute;wnieĹź 2 koty.</p>', 'Baborowska 5/39, Warszawa', 'PLZT3Hkt-_O3wD5T8upm5AZade8vLA-Mg-'),
(13, 'Pola', '40.00', '<p><strong>Czas wizyty:</strong>&nbsp;30 min.</p>\r\n\r\n<p><strong>PrzedziaĹ godzinowy:&nbsp;</strong>14.00-&shy;16.00</p>\r\n\r\n<p><strong>Kod:&nbsp;</strong>5 kluczyk 5705, przy bramie 105 kluczyk 5705</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ dokt&oacute;rych pies ma dostÄp)</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Pola jest zamykana w klatce w kuchni. ProĹba by jÄ tak zostawiaÄ oraz by jej nie spuszczaÄ ze smyczy.</p>', 'Anielewicza 3/5 mieszkania 5, Warszawa', 'PLZT3Hkt-_O3x5NM_gRtjazEJr9A5oI9ne'),
(14, 'Rot i Tola', '50.00', '<p><em><strong>Kamera w domu</strong></em></p>\r\n\r\n<p><strong>Czas wizyty:</strong>&nbsp;1,5 h.</p>\r\n\r\n<p><strong>PrzedziaĹ godzinowy:&nbsp;</strong>najlepiej wykonaÄ do godziny 15.00</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie ps&oacute;w, misek, rzut na mieszkanie &ndash; na g&oacute;rÄ nie wchodzimy)</p>\r\n	</li>\r\n	<li>\r\n	<p>zabranie ps&oacute;w na spacer do lasu Kabackiego</p>\r\n	</li>\r\n	<li>\r\n	<p>psy wychodzÄ z posesji na smyczy, jednak po wejĹciu do lasu puszczamy je luzem, aby mogĹy siÄ wybiegaÄ &ndash; jest to bardzo istotne dla wĹaĹciciela ps&oacute;w</p>\r\n	</li>\r\n	<li>\r\n	<p>w trakcie spaceru Äwiczymy z TolÄ spokojne mijanie ludzi, aby na nich nie skakaĹa</p>\r\n	</li>\r\n	<li>\r\n	<p>zabawy z psami w trakcie spaceru</p>\r\n	</li>\r\n	<li>\r\n	<p>proste Äwiczenia z psami w celu aktywnoĹci umysĹowej</p>\r\n	</li>\r\n	<li>\r\n	<p>nagrywamy psy na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem</p>\r\n	</li>\r\n	<li>\r\n	<p>odkĹadamy smycz na miejsce</p>\r\n	</li>\r\n	<li>\r\n	<p>myjemy miskÄ i nalewamy ĹwieĹźej wody</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, psy)</p>\r\n	</li>\r\n	<li>\r\n	<p>upewniamy siÄ, Ĺźe drzwi od domu sÄ zamkniÄte!</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p><strong>Rot:</strong></p>\r\n\r\n<ul>\r\n	<li>wraca na zawoĹania chociaĹź czasami z op&oacute;Ĺşnieniem- najlepiej wtedy go woĹaÄ i jednoczeĹnie iĹÄ w przeciwnym kierunku, on siÄ bardzo pilnuje i szybko przybiegnie</li>\r\n	<li>lubi zabawy w przeciÄganie i szarpanie</li>\r\n	<li>lubi takĹźe biegaÄ za patykami chociaĹź Tola jest zawsze szybsza i on czÄsto odpuszcza</li>\r\n	<li>uwielbia tarzaÄ siÄ w Ĺniegu lub wchodziÄ do wody (nawet kaĹuĹźy) gdy jest taka moĹźliwoĹÄ</li>\r\n	<li>w lato gdy jest ciepĹo spacery sÄ nad jeziorkiem by m&oacute;gĹ popĹywaÄ</li>\r\n	<li>jest ĹwieĹźo po kastracji wiÄc waĹźny jest ruch dla niego, poniewaĹź ma tendencje do tycia, a przytyÄ nie moĹźe, bo&nbsp;wtedy miewa problemy ze stawami</li>\r\n</ul>\r\n\r\n<p><strong>Tola:</strong></p>\r\n\r\n<ul>\r\n	<li>jest mĹoda i energiczna wiÄc wymaga wiÄcej uwagi</li>\r\n	<li>wraca zawsze na zawoĹanie</li>\r\n	<li>niestety bardzo skacze na ludzi przy powitaniu wiÄc naleĹźy jÄ tego oduczaÄ:</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<p>gdy widzimy Ĺźe ktoĹ siÄ pojawia w naszym polu widzenia lub idzie w naszÄ stronÄ &ndash; woĹamy TolÄ do siebie</p>\r\n	</li>\r\n	<li>\r\n	<p>prosimy by usiadĹa i tak czekamy aĹź ktoĹ nas minie i dopiero zwalniamy komende i idziemy dalej lub nakierowujemy smakoĹykiem na pozyzjÄ przy nodze i w ten spos&oacute;b mijamy ludzi. CaĹy czas chwalimy jÄ, m&oacute;wimy do niej, odwracamy jej uwage gdy tylko odwr&oacute;ci od nas spojrzenie- cmokajÄc woĹajÄc po imieniu itd.</p>\r\n	</li>\r\n	<li>\r\n	<p>nagradzamy za skupienie na nas i brak reakcji na obcego czĹowieka</p>\r\n	</li>\r\n	<li>\r\n	<p>na gĹ&oacute;wnych drogach gdzie jest duĹźo ludzi zaleca siÄ stosowanie linki &ndash; w razie gdyby zdecydowaĹa siÄ skoczyÄ na kogoĹ i nie reagowaĹa na nasze woĹanie, zawsze moĹźemy to powstrzymaÄ</p>\r\n	</li>\r\n	<li>\r\n	<p>nie wolno dopuĹciÄ do skakania, poniewaĹź kaĹźda taka sytuacja utrwala jej zachowanie</p>\r\n	</li>\r\n	<li>\r\n	<p>informujemy ludzi by nie pozwalali na siebie skakaÄ i jej nie zachÄcali</p>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Äwiczymy z TolÄ takĹźe inne komendy (np. siad, leĹźeÄ, Ĺapa, zostaĹ itd. itp. - nie chodzi o szkolenie, a proste Äwiczenia dla aktywnoĹci umysĹowej</p>\r\n	</li>\r\n	<li>\r\n	<p>uwaĹźamy by nie zjadaĹa na spacerach Ĺmieci</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>Zar&oacute;wno Toli jak i Rotowi nie pozwalamy siÄ zbytnio oddalaÄ w gĹÄb lasu-&nbsp;trzeba bardzo bardzo uwaĹźaÄ na dziki!!!</strong></em></p>', 'KormoranĂłw 18, Warszawa', 'PLZT3Hkt-_O3wKrHGSAf6ASnhBBW3po27s'),
(15, 'testowy', '55.00', '<p>test</p>', 'duĹźa 5f/29, Marki', 'PLZT3Hkt-_O3xrsxXbnr9dAfGUExi2D3TD'),
(16, 'Arbat', '20.00', '<p>Arbat -&gt; szczenior ogar polski&nbsp;</p>\r\n\r\n<p>WspaniaĹy to mogÄ o nim napsiac.&nbsp;</p>\r\n\r\n<p>Adres ObroĹc&oacute;w Tobruku 31/53 piÄtro 5&nbsp;</p>\r\n\r\n<p>Kod #9446&nbsp;</p>\r\n\r\n<p>Jest Gosposia.</p>\r\n\r\n<p>Na wejĹcie wszystko tak jak zawsze przy kaĹźdym zleceniu.&nbsp;</p>\r\n\r\n<p>Na wprost drzwi jest komoda (Ĺrodkowa szuflada to rzeczy psa)<br />\r\n- tam znajdziesz smycz, szelki, worki na odchody i smaki na spacer&nbsp;</p>\r\n\r\n<p>Przed wyjĹciem z domu podaje siÄ mu wodÄ. JeĹli w kuchni bÄdzie stal lek do uszu to podajesz lek do uszu. Po wkropleniu do jednego ucha przecierasz &nbsp;alkoholem aby odkaziÄ i dopiero po odkaĹźeniu zakraplasz drugie ucho.&nbsp;</p>\r\n\r\n<p>Wizyta w sumie to 60 minut&nbsp;<br />\r\nProĹba wiec aby te czynnoĹci w domu byĹy doĹÄ sprawnie.&nbsp;</p>\r\n\r\n<p>Wszystko jest intuicyjne. Kuchnia na widoku, miska na widoki. Kran r&oacute;wnieĹź.&nbsp;</p>\r\n\r\n<p>Na spacer wychodzi na fort (tam gdzie Gwel i Pusia )</p>\r\n\r\n<p>Fort znajduje siÄ wychodzÄc z klatki za kawiarnia Akuku w prawo. Jest bramka w ogrodzeniu kt&oacute;ra spokojnie tez wr&oacute;cisz wklepujÄc ten kod od klatki.&nbsp;</p>\r\n\r\n<p>Arbat jest szkolony wiec bardzo duĹźo potrafi.</p>', 'ObroĹcĂłw Tobruku 31/53', 'Hmfj'),
(17, 'Psiaki strumykowa', '25.00', '<p>OPIEKA NAD ZWIERZÄTAMI DARIA GODLEWSKA<br />\r\nToto-jamnik, Lord-pudel, Zizi-chihuahua<br />\r\nW mieszkaniu jest teĹź kot MiluĹ&nbsp;</p>\r\n\r\n<p><br />\r\nAdres: Strumykowa 29c/601, 5 pietro<br />\r\nKod: 2601 kluczyk 7247 &ndash; przy bramie, 601 kluczyk 7247 &ndash; przy klatce Czas wizyty: 60min.<br />\r\nCzynnoĹci:<br />\r\n- SMS na wejĹcie &bdquo;jestem u......&rdquo;<br />\r\n- nagranie filmiku na wejĹcie (pokazanie ps&oacute;w, misek, wszystkich pomieszczeĹ do kt&oacute;rych psy majÄ dostÄp), na g&oacute;rÄ nie wchodzimy<br />\r\n- spacerujemy w pobliskim lesie ze wszystkimi psami<br />\r\n- nagranie ps&oacute;w na spacerze<br />\r\n- po powrocie, jeĹli psy sÄ mokre wycieramy je rÄcznikiem<br />\r\n- odkĹadamy smycze na miejsce<br />\r\n- myjemy miski (w klatkach teĹź) i nalewamy ĹwieĹźej wody<br />\r\n- nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, psy)<br />\r\n- SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;<br />\r\n- SMS z informacja jak byĹo maks 30 minut po wyjĹciu<br />\r\nInformacjÄ dotyczÄce zlecenia:<br />\r\nToto oraz Zizi sÄ zamkniÄte w kennel klatkach, Lord biega luzem. ZakĹadamy Zizi szelki/kamizelkÄ. W mieszkaniu sÄ 3 smycze flexi (p&oacute;Ĺka przy wejĹciu). Wymieniamy w klatkach podkĹady (w szufladzie w Ĺazience). Po spacerze zamykamy psy w klatkach.<br />\r\nOPIEKA NAD ZWIERZÄTAMI DARIA GODLEWSKA TEL. 530 999 491<br />\r\nKAĹťDÄ INSTRUKCJÄ OBOWIÄZUJE R&Oacute;WNIEĹť ZAĹÄCZNIK UMOWY SPOS&Oacute;B WYKONYWANIA ZLECENIA WIÄC POZA TYM CO JEST W INSTRUKCJI, KONIECZNE JEST STOSOWANIE SIÄ DO ZALECEĹ Z PUNKT&Oacute;W UMOWY ZLECENIE I ZAĹÄCZNIK&Oacute;W<br />\r\nPrzypominamy, Ĺźe zgodnie z podpisanymi dokumentami, obowiÄzuje klauzula poufnoĹci. Wszystkie informacje zawarte w instrukcjach sÄ danymi kt&oacute;rymi moĹźe dysponowaÄ wyĹÄcznie firma i opiekunowie w czasie wykonywania zleceĹ.</p>', 'Strumykowa 29c/601', 'brak'),
(18, 'Filho', '20.00', '<p><br />\r\nFilho<br />\r\nAdres: Ordona 7b/152 Kod: 0540071,<br />\r\nCzas wizyty: 60 min.<br />\r\nCzynnoĹci:<br />\r\n-SMS na wejĹcie &bdquo;jestem u......&rdquo;<br />\r\n- nagranie filmiku na wejĹcie (pokazanie psa, misek, wszystkich pomieszczeĹ do kt&oacute;rych pies ma dostÄp)<br />\r\n- nagranie psa na spacerze<br />\r\n- po powrocie, jeĹli pies jest mokry wycieramy psa dokĹadnie rÄcznikiem (rÄcznik leĹźy przed drzwiami mieszkania)<br />\r\n- odkĹadamy smycz na miejsce<br />\r\n- myjemy miskÄ i nalewamy ĹwieĹźej wody<br />\r\n&nbsp; OPIEKA NAD ZWIERZÄTAMI DARIA GODLEWSKA TEL. 530 999 491<br />\r\n- nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, pies)<br />\r\n- SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;<br />\r\n- SMS z informacja jak byĹo maks 30 minut po wyjĹciu<br />\r\nInformacjÄ dotyczÄce zlecenia:<br />\r\nFilho raczej nie spuszczamy, chyba, Ĺźe na lince. Linka, smycz, smaki w pierwszych drzwiach szafy po prawej stronie od wejĹcia. Zazwyczaj zakĹadamy pomaraĹczowÄ obroĹźÄ i smycz. Na spacer moĹźna zabraÄ smaki. Po wejĹciu od mieszkania na lewo jest woda i miska z jedzeniem.<br />\r\nKAĹťDÄ INSTRUKCJÄ OBOWIÄZUJE R&Oacute;WNIEĹť ZAĹÄCZNIK UMOWY SPOS&Oacute;B WYKONYWANIA ZLECENIA WIÄC POZA TYM CO JEST W INSTRUKCJI, KONIECZNE JEST STOSOWANIE SIÄ DO ZALECEĹ Z PUNKT&Oacute;W UMOWY ZLECENIE I ZAĹÄCZNIK&Oacute;W<br />\r\nPrzypominamy, Ĺźe zgodnie z podpisanymi dokumentami, obowiÄzuje klauzula poufnoĹci. Wszystkie informacje zawarte w instrukcjach sÄ danymi kt&oacute;rymi moĹźe dysponowaÄ wyĹÄcznie firma i opiekunowie w czasie wykonywania zleceĹ.</p>', 'Ordona 7b/152', 'beak'),
(19, 'Mucha zastÄpstwo', '20.00', '<p>&nbsp; MUSZKA Poznanska 12 m 115 200 kluczyk 1492 Suczka 8 miesiecy kundelek czarny &nbsp;Chodzi tylko na obr&oacute;Ĺźce i smczy flexi (w szafce po prawej w przedpokoju zaraz przy wejsciu do domu) Zalatwia sie szybko za blokiem - taki skwerek z trawa. Spacery na polach mokotowskich lub na skwerku batalionu AK (jesli nie chce isc i sie zapiera) &nbsp;lub inny park jak wygodniej. Standardowo zabawa, komendy itp. Nie znosi deszczu, sniegu itp. Nie chce wtedy wychodzic poza teren bloku - staramy siÄ jÄ zachÄcaÄ, ale jeĹli stawia bardzo duĹźy op&oacute;r, to chodzimy z niÄ po skwerku przy bloku i czeamy az sie zalatwi, a w domu cwiczymy komendy, bawimy siÄ z niÄ. Po spaacerze dajemy jej jedzenie - naszykowane na blacie w kuchni, wymieniamy wodÄ, wytrzec lapki i dupke chusteczkami mokrymi, zeby utrzymywac czystosc w domu :) Rzeczy psa sa tuz przy wejsciu w szafce po prawej.</p>', 'PoznaĹska 12/115 Warszawa', 'Brak jeszcze'),
(20, 'Wolfis', '35.00', '<p><strong>Czas wizyty:</strong>&nbsp;60min, (40min. spacer, 20min. pozostaĹe czynnoĹci)</p>\r\n\r\n<p><strong>Kod:</strong>&nbsp;30 kluczyk 5692</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie kota, misek, wszystkich pomieszczeĹ do kt&oacute;rych ma kot dostÄp, kuweta)</p>\r\n	</li>\r\n	<li>\r\n	<p>posprzÄtanie kuwety i dookoĹa niej, umycie miseczek, wywietrzyÄ mieszkanie</p>\r\n	</li>\r\n	<li>\r\n	<p>spacerujemy z Wolfisem 40 min. szybkim krokiem, intensywny spacer</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie psa na spacerze</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie wykonanych czynnoĹci</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak kot je</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Spacer z Wolfisem powinien byÄ intensywny, prowadzony szybkim krokiem, poniewaĹź w okolicy nie ma moĹźliwoĹci spuszczenia psa ze smyczy. Dziadunio jest starszym pieskiem, wiec moĹźe mu siÄ zdarzyÄ nabrudziÄ w mieszkaniu, naleĹźy to posprzÄtaÄ. NaleĹźy mu teĹź zmieniÄ pieluchÄ (schowane w szafce po prawej stronie od wejĹcia). SprzÄtamy kuwetÄ. Kuweta znajduje siÄ w Ĺazience, jest schowana w szafce pod umywalkÄ. Sprawdzamy jak siÄ majÄ koty.</p>', 'Sarmacka 18/30, Miasto', 'Brak'),
(21, 'RyĹ i Tosia', '35.00', '<p><strong>Klucz pod wycieraczka (tam go zostawiamy po wizycie)</strong></p>\r\n\r\n<p><strong>Czas wizyty:</strong>&nbsp;40&nbsp;min.</p>\r\n\r\n<p><strong>Kod:</strong> 12 kluczyk 5060</p>\r\n\r\n<p><strong>CzynnoĹci:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SMS na wejĹcie &bdquo;jestem u......&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku na wejĹcie (pokazanie kota, misek, wszystkich pomieszczeĹ do kt&oacute;rych ma kot dostÄp, kuweta)</p>\r\n	</li>\r\n	<li>\r\n	<p>posprzÄtanie kuwety i dookoĹa niej, umycie miseczek, wywietrzyÄ mieszkanie</p>\r\n	</li>\r\n	<li>\r\n	<p>karmienie- jedna saszetka mokrego na dwa talerzyki i chrupki,</p>\r\n	</li>\r\n	<li>\r\n	<p>woda- miska stoi przy zlewie w kuchni</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie wykonanych czynnoĹci</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak koty jedzÄ</p>\r\n	</li>\r\n	<li>\r\n	<p>nagranie filmiku jak zostawiamy mieszkanie przed wyjĹciem (okna, miski, kuweta, kot)</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS na wyjĹcie &bdquo;wyszĹam od..........&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p>SMS z informacja jak byĹo maks 30 minut po wyjĹciu</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>InformacjÄ dotyczÄce zlecenia</strong></p>\r\n\r\n<p>Woda w miseczce w wannie. Kuweta jest po prawej stronie w Ĺazience, we wnÄce. Posiedzenie chwile z kotami na balkonie jak bÄdzie pogoda.</p>', 'NatoliĹska 2/12, Warszawa', 'Brak'),
(22, 'Skipper', '35.00', '<p>Brak</p>', 'KrasiĹskiego 59/13, Warszawa', 'Brak'),
(23, 'Iggy', '35.00', '<p>Brak</p>', 'Browarna 4/23, Warszawa', 'Brak'),
(24, 'Mia', '0.00', '<p>UzupeĹniÄ</p>', 'KÄpna 2b/107, Warszawa', 'PLZT3Hkt-_O3zh8EsxlnZEc2fZoPRWScyj');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `hourly_rate_visit` decimal(5,2) DEFAULT NULL,
  `hourly_rate_drive` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Zrzut danych tabeli `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `hourly_rate_visit`, `hourly_rate_drive`) VALUES
(1, 'daria', 'daria', 'dariagodlewska@dariagodlewska.pl', 'dariagodlewska@dariagodlewska.pl', 1, NULL, '$2y$13$GtB7iR69Dremf184PCC6Zuh1Kn/.QdJuuvh.OH8KgbbSCbtTRhZbS', '2018-02-06 14:11:54', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', '0.00', '0.00'),
(3, 'daria1', 'daria1', 'daria@daria.pl', 'daria@daria.pl', 1, NULL, '$2y$13$ilmxdN7nn6nlj3P2nW.6yurloPExgtF8rLC1gLqJSbVAbQ05bCLtC', '2018-02-06 14:37:20', NULL, NULL, 'a:0:{}', NULL, NULL),
(5, 'Natalia Michalska', 'natalia michalska', 'natalia@dariagodlewska.pl', 'natalia@dariagodlewska.pl', 0, NULL, '$2y$13$E6usziinX/WDB8lCofOQrelm0DLJtnUwwfQmTyluq.wRBVcyItZc.', '2017-12-31 09:24:48', NULL, NULL, 'a:0:{}', '22.90', '15.00'),
(6, 'Sylwia PaĹatyĹska', 'sylwia paĹatyĹska', 'sylwia@dariagodlewska.pl', 'sylwia@dariagodlewska.pl', 0, NULL, '$2y$13$xpImlMA4goUPq1N01NPUGuUNQNb5.vtaAU.BeTtjCT/KuSWaxuBse', '2017-12-26 15:22:57', NULL, NULL, 'a:0:{}', '17.00', '15.00'),
(7, 'Sebastian StrÄk', 'sebastian strÄk', 'sebastian@dariagodlewska.pl', 'sebastian@dariagodlewska.pl', 0, NULL, '$2y$13$pioFGdBLiVEZoWZycR3f4uIMfQNW.EYa6kozqiQPvr3BxvGPIdbdK', '2018-01-26 15:52:30', NULL, NULL, 'a:0:{}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `raport`
--

CREATE TABLE IF NOT EXISTS `raport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `r_lat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `r_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_31AFD144A76ED395` (`user_id`),
  KEY `IDX_31AFD1448E962C16` (`animal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=58 ;

--
-- Zrzut danych tabeli `raport`
--

INSERT INTO `raport` (`id`, `user_id`, `animal_id`, `message`, `r_lat`, `r_long`, `date`) VALUES
(1, 1, 2, 'Jestem w pracy na mendelejewa. Kocham CiÄ.', '52.25444335944121', '20.893610001260186', '0000-00-00 00:00:00'),
(2, 1, 14, 'Jestem', '52.24519927644115', '20.90511175188635', '0000-00-00 00:00:00'),
(3, 1, 14, 'Jade', '52.32711955679346', '21.112520532694788', '0000-00-00 00:00:00'),
(4, 1, 3, 'Test', '52.30284449183596', '21.09033395538208', '0000-00-00 00:00:00'),
(5, 1, 3, 'test', '52.24098550000001', '20.903029999999998', '0000-00-00 00:00:00'),
(6, 1, 2, 'Test', '52.3361206197449', '21.12718176711009', '0000-00-00 00:00:00'),
(7, 1, 8, 'Test', '52.33601278247815', '21.12703841064506', '0000-00-00 00:00:00'),
(8, 1, 5, 'test', '52.2296756', '21.012228699999998', '2017-11-22 01:08:18'),
(9, 6, 1, 'Wiosna radosnie mnie przywitala, Mania byla spokojna i grzecznie czekala. Na spacerze z Wiosna chodzilysmy po lesie, biegala sobie luzem. wszedzie bylo jej pelno, nosila tez patyki i czaila sie na ptaki. Robila kupe i siku. W domu pila wode z czystej miski, ktora wczesniej umylam. Mania spokojna jak zwykle. Bardzo cieszyla sie gdy spotkala znajomego psa, wtedy sie mocno rozweselila. Na spacerze byla spokojna. Duzo weszyla. Robila kupe i siku.', '52.2717713742328', '20.971368109114717', '2017-11-23 12:26:53'),
(10, 6, 1, 'U dziewczyn wszystko dobrze. Wiosna pelna energii biegala po lesie, ale tez kladla sie na ziemi i potrzebowala uwagi i pieszczot. Wymizialam ja tyle ile potrzebowala. Co jakis czas na chwilke nurkowala w lesie, a gdy ja wolalam szybko do mnie wracala z duza radoscia. Mania nieco spokojniejsza, ald rownoe wesola co Wiosna. Pewnie dzisiaj chodzila bez pilki. Potem nosila patyki. Obie robily kupki. A w domu pily swieza wode, ktora im nalalam.', '52.28997565964278', '20.929439306625625', '2017-11-28 12:11:21'),
(11, 1, 19, 'Test', '52.25702074367139', '20.892967960270727', '2017-12-11 10:59:01'),
(12, 5, 3, 'Papper wytarzal siÄ dzisiaj w ĹwieĹźym Ĺniegu na trawie, gryzl wszystkie patyki ktĂłre leĹźaĹy na jego drodze, witaj siÄ z napotkanymi pieskami a jego kolega- taki wilczek daĹ mu dzisiaj nawet buziaka ahaha. Ich znajomoĹÄ ze spaceru na spacer jest coraz bardziej przyjacielska =) Pepper zrobiĹ kupe w trakcie spaceru. Na koniec wytarlam mu Ĺapki', '52.1331054', '21.0688775', '2017-12-20 09:20:16'),
(13, 5, 14, 'Rot z TolÄ buszowali dzisiaj wĹrĂłd Ĺniegu. Jak siÄ zapuscili w las to nie bardzo chcieli wracaÄ. Zrobili oboje kupe. W domu umylam ich miske i nalalam ĹwieĹźej wody', '52.1419607', '21.018547', '2017-12-20 11:34:50'),
(14, 5, 15, 'Wolfis w bardzo specyficzny i zabawny sposĂłb wita siÄ z napotkanymi pieskami- nie macha ogonkiem, jest peĹna powaga (zabawnie marszczy czoĹo przy tym) a jak pieski odchodzÄ od niego to Wolfis wtedy do nich skacze okazujÄc dopiero zainteresowanie i chÄÄ zabawy =D zrobil kupe na spacerze. Wyprowadzilam na siku Dziadunia i Bingo, zmienilam pieluche Dziaduniowi, Bingo miaĹ czystÄ. Umylam miseczki zwierzakĂłw, nalalam czystej wody, wyczyscilam kuwete i przewietrzylam mieszkanie.', '52.1588523', '21.0800717', '2017-12-20 13:40:15'),
(15, 5, 3, 'Pepper grzecznie witaĹ sie z kaĹźdym napotkanym pieskiem- a byĹo ich sporo o tej porze. ZrobiĹ 2kupy. Na koniec wytarlam mu Ĺapki', '52.1332436', '21.0662608', '2017-12-20 15:34:04'),
(16, 5, 14, 'Rot i Tola na koniec spaceru bardzo niegrzeczni. Jeszcze w lesie, przy ogrodzeniach znalezli pojemniki po/z jogurtami/serkami  i zupeĹnie siÄ nie sĹuchali. Jak po nich poszĹam to Rot wziÄĹ opakowanie w pyszczek i zaczÄĹ zwiewac dalej w las- nagle miaĹ siĹy na biegi (!!) Ahaha. WiÄc gdyby mieli rozwolnienie to zapewne po tym . Zrobili oboje kupe. Duzo pieskĂłw dziĹ w lesie byĹo wiÄc gĹĂłwnie Tola siÄ wybiegala. W domu umylam ich miski i nalalam ĹwieĹźej wody', '52.1409323', '21.0183937', '2017-12-21 12:47:06'),
(17, 5, 20, 'Jak przyszlam to na podĹodze w salonie leĹźaĹa kupa- sprzatnelam jÄ. Wolfis zrobiĹ kupe na spacerze. Wyprowadzilam na siku Dziadunia i Bingo - zmienilam pieluche Dziadunia, ta Bingo byĹa czysta. Umylam miseczki zwierzakĂłw, nalalam czystej wody, wyczyscilam kuwete i przewietrzylam mieszkanie.', '52.1605002', '21.0771626', '2017-12-21 14:38:18'),
(18, 6, 23, 'Iggi byĹ krĂłcej na spacerze ze wzglÄdu na przeziÄbienie. Ciagle kaszlaĹ, robiĹ rzadka kupe, wydaje mi sie ze pojawiĹa sie w niej krew. Iggi trzas sie i ciÄgnÄĹ do domu. Przez reszte wizyty posiedzialam z nim w domu. Troche go wygĹaskaĹam.', '52.23930208128413', '21.02416921018769', '2017-12-21 15:04:39'),
(19, 5, 4, 'Franio jak zawsze wesoĹek i piewszy na spacer. TrochÄ siÄ upaÄkaĹ wiÄc po spacerze umylam go w wannie - przepraszam, zostaĹo w wannie trochÄ piachu ale dzialala tylko deszczownica wiÄc mylam go polewajac wodÄ z kubka. Nie zrobiĹ kupy. Umylam jego miseczki i nalalam ĹwieĹźej wody', '52.2418632', '20.9877426', '2017-12-21 16:34:44'),
(20, 5, 15, 'Kotki na chomiczowce miaĹam przyjemnosc w ciÄgu wizyty poznaÄ wszystkie cztery ale tylko dwa - europejczyk i czarny byli ze mnÄ caĹy czas. KtĂłryĹ kotek (wydaje mi siÄ Ĺźe ten najwiÄkszy, srebrny) po zjedzeniu puszki zwymiotowal przy Ĺazience. SÄdzÄ Ĺźe ten bo jak w koĹcu przyszedĹ zjeĹÄ to wcinal jak opÄtany. Umylam wszystkie miski, nalalam ĹwieĹźej wody i wyczyscilam kuwety. Talerzyki z mokrym jedzeniem zostawiĹam bo kotki nie zjadly wszystkiego.', '52.2766617', '20.9484963', '2017-12-22 10:15:02'),
(21, 5, 14, 'Tola z Rotem spotkali w lesie pieska z ktĂłrym oboje siÄ bawili. Rot rĂłwnieĹź trochÄ pobiegal. Dzisiaj oboje siÄ sĹuchali. Zrobili kupÄ. W domu umylam ich miski i nalalam ĹwieĹźej wody. Niestety mimo wytarcia ich to zostawili brudne Ĺlady na podĹodze w domu =/', '52.1361236', '21.0206356', '2017-12-22 12:12:39'),
(22, 5, 23, 'Wywabilam Iggiego wg rady Sylwii parowkami i to chyba jedyny sposĂłb. Na spacerze ciÄgnÄĹ i baĹ siÄ rĂłĹźnych rzeczy- haĹasĂłw, wiÄkszych psĂłw. ZrobiĹ kupe', '52.2410701', '20.9997174', '2017-12-22 15:07:05'),
(23, 5, 12, '30min u Yuki to hardcore - w biegu wszystko =) nie zrobiĹa na spacerze kupy. Kotki dostaĹy mokrÄ karmÄ i suche do miseczki. Umylam wszystkie miski zwierzakĂłw i nalalam im ĹwieĹźej wody. Wyczyscilam kuwety i przewietrzylam mieszkanie', '52.2398869', '20.9130085', '2017-12-23 08:15:00'),
(24, 5, 15, 'U kotkĂłw chomiczowka daĹam im puszke- nie zjadĹy wszystkiego wiÄc zostawiĹam. Umylam im wszystkie miseczki, nalalam ĹwieĹźej wody i dosypalam suchego jedzenia. Sprzatnelam kuwety i wywietrzylam mieszkanie.', '52.2736649', '20.9669911', '2017-12-23 10:11:04'),
(25, 5, 15, 'Kotki wyglodniale, miauczaly jak tylko przyszĹam. Umylam ich miseczki, daĹam Ĺniadanie- zjedli szybko caĹoĹÄ. MajÄ ĹwieĹźÄ wodÄ w czystych miseczkach, kuwety sprzÄtniete, mieszkanie przewietrzone', '52.1565678', '21.0823074', '2017-12-23 11:28:49'),
(26, 5, 14, 'Tola lataĹa po lesie jak poparzona. Niewyrzyta dzis jest. Rot nostalgicznie po deszczu czlapal. Zrobili kupe. W domu umylach ich miski, nalalam ĹwieĹźej wody i daĹam Ĺniadanie. Nie mam filmikĂłw z przyjĹcia i wyjĹcia bo byĹ Marcin z p.Gabrysia', '52.1404522', '21.0182334', '2017-12-23 13:05:13'),
(27, 5, 10, 'Fulfis tulil siÄ i chÄtnie bawiĹ. Jak tylko coĹ innego robilam to miauczal Ĺźeby siÄ nim zainteresowac. Sprzatnelam jego kuwete, umylam wszystkie miseczki, nalalam ĹwieĹźej wody i dosypalam suchego jedzenia.', '52.1876914', '20.9902382', '2017-12-23 14:32:50'),
(28, 5, 21, 'Kotki byĹo sĹychaÄ jeszcze zanim weszĹam do mieszkania- tak miauczaly =) jak weszĹam od razu zaczÄĹy domagaÄ siÄ jedzenia. Umylam ich miseczki, nalalam ĹwieĹźej wody, nasypalam suchej karmy i dalam mokre jedzenie- nie zjedli wszystkiego. Przewietrzylam mieszkanie i sprzatnelam kuwete.', '52.239715444966', '20.986904602502932', '2017-12-23 17:31:12'),
(29, 5, 15, 'Kotki na sarmackiej 21 dostaĹy Ĺniadanko -\r\n zjadĹy wszystko bardzo szybko =) umylam im miseczki i nalalam ĹwieĹźej wody. Przewietrzylam mieszkanie i sprzatnelam kuwety.', '52.1584148', '21.0833014', '2017-12-24 08:01:09'),
(30, 5, 15, 'Kotki Biedronki - Sam, Charlie, Indie\r\nPodalam leki Charlie ktĂłre leĹźaĹy w kuchni. Umylam wszystkie miseczki, nalalam ĹwieĹźej wody w fontannach. Charlie nie zjadl caĹego mokrego jedzenia. Indie zjadĹa caĹe mokre jedzenie i troche suchego poskubala. Sam staraĹ siÄ wyjadac suche z kaĹźdej miseczki po trochu wiÄc jak wyszĹam to bardzo prawdopodobne Ĺźe mu sie to udaĹo. Sprzatnelam kuwety.', '52.1702134', '21.0669209', '2017-12-24 09:27:28'),
(31, 5, 14, 'DaĹam Rotowi i Toli Ĺniadanie- Rot jakby tydzieĹ nie jadĹ mruczal i skakaĹ jak nakladalam =) zjedli wszystko, umylam miski, nalalam ĹwieĹźej wody. Na spacerze duĹźo psĂłw byĹo wiÄc Tola pobiegala chwile. Oboje z Rotem zrobili kupe', '52.1404514', '21.01832', '2017-12-24 10:56:33'),
(32, 5, 12, 'Podalam Yuki 100ml kroplowki  - wiÄcej mi siÄ nie udalo. Miala juz dosyc leĹźenia i zaczela siÄ krÄciÄ. Kroplowka bardzo wolno mi splywala. DaĹam jej jedzenie oraz wyprowadzilam na siku.', '52.2801663', '20.9234495', '2017-12-24 13:36:06'),
(33, 5, 15, 'Europejczyk i czarny Brytyjczyk czekali przy drzwiach na przyjĹcie. Po chwili pojawil siÄ wyglodnialy srebrny Brytyjczyk i chyba siÄ do mnie juz przekonaĹ bo ocieral siÄ o mojÄ nogÄ i towarzyszyl mi caĹÄ wizyte. BiaĹy Brytyjczyk niestety nawet na chwilÄ siÄ nie pojawil- gdzies siÄ zaszyl. Przewietrzylam mieszkanie, umylam wszystkie miski, nalalam ĹwieĹźej wody, nasypalam kotkom suchÄ karmÄ bo zjadĹy prawie wszystko (zawartoĹÄ puszki zostaĹa zjedzona w caĹoĹci) i wyczyscilam ich kuwety', '52.2903982', '20.9305452', '2017-12-24 14:42:45'),
(34, 5, 15, 'Heidi byĹa wobec mnie nieufna ale Diego podchodziĹ i dawaĹ siÄ gĹaskaÄ to i Heidi podchodzila. DaĹam im suchÄ karmÄ wg rozpiski oraz Diego jego leki. Nie zjedli wszystkiego. Miseczki majÄ umyte a kuwete sprzÄtnieta', '52.2357631', '21.0034791', '2017-12-24 15:41:47'),
(35, 5, 14, 'Rocik z TolÄ byli tacy szczÄĹliwi jak przyszĹam =D aĹź przykro byĹo wychodziÄ i ich zostawiaÄ. WypuĹciĹam ich na podwĂłrko ale sami to za bardzo nie chcieli tam przebywaÄ wiÄc rzucalam im ich kĂłĹko- oboje sobie pobiegali.', '52.1659024', '21.0160423', '2017-12-24 21:28:00'),
(36, 5, 15, 'Kotki Biedronki - Sam, Charlie, Indie\r\nJak przyszlam to od razu przywital mnie Charlie i Sam. Ĺasili siÄ dopĂłki nie daĹam im jedzenia. Indie czekal pod stoĹem przy misce. Indie i Charlie zjedli w poĹpiechu swoje mokre jedzenie, Sam palaszowal suche. Dalam Charliemu dawkÄ leku ktĂłrÄ miaĹ dostaÄ. Umylam miseczki i sprzatnelam kuwety', '52.1684972', '21.0892138', '2017-12-24 22:10:30'),
(37, 5, 14, 'Rot z TolÄ zrobili sobie w nocy wĹasnÄ wigiliÄ - zjedli chleb tostowy ktĂłry lezal w kuchni na blacie. Co nie zmienia faktu Ĺźe Ĺniadania nie mogli siÄ doczekaÄ. Zjedli w tempie ekspresowym. Umylam ich miski i nalalam ĹwieĹźej wody. W lesie oboje szaleli- Rot teĹź duĹźo biegaĹ. MiaĹ mnĂłstwo energii i super radosny byĹ. Zrobili kupe. Po spacerze wytarlam ich', '52.1384734', '21.0182184', '2017-12-25 09:00:56'),
(38, 5, 15, 'Kotki Biedronki - Sam, Charlie, Indie\r\nSam to mnie juz chyba pokochaĹ- nie odstÄpuje mnie na krok i caĹy czas siÄ Ĺasi. Charlie zwymiotowala na podĹogÄ- sprzatnelam. TrawkÄ poĹknÄĹa i to spowodowaĹo wymioty. CaĹa trĂłjka zjadĹa Ĺniadanie ale Ĺźadne nie zjadĹo w caĹoĹci. Charlie dostal swoje leki. Sam siÄ dobieral do karmy suchej Indie. Umylam ich miseczki, nalalam wody i sprzatnelam kuwety', '52.1735579243128', '21.07948316914549', '2017-12-25 10:20:40'),
(39, 5, 15, 'Kotki Sarmacka 21- Arnold i Mamed\r\nJak przyszĹam to byĹo laszenie siÄ i miauczenie- jak daĹam jedzenie to juĹź nie byĹo interakcji. Z Mamedem pobawilam siÄ wÄdkÄ, Arnold nie byĹ zainteresowany ĹźadnÄ zabawkÄ. Za to zauwaĹźyĹam Ĺźe podoba mu siÄ ĹaĹcuch czerwony na choince ktĂłry z niej zwisa oraz maĹa czerwona bombka ktĂłrÄ sobie pewnie sami stracili. Zjedli caĹe Ĺniadanie. Umylam ich miseczki, nalalam ĹwieĹźej wody, dosypalam suchej karmy, wyczyscilam im kuwety i przewietrzylam mieszkanie', '52.1585945', '21.0839554', '2017-12-25 11:17:02'),
(40, 5, 10, 'Fulfisiek byĹ strasznie spragniony czuĹoĹci wiÄc go wymizialam i wyprzytulalam. Umylam jego miseczki, nalalam ĹwieĹźej wody i nasypalam suchego bo juz niewiele miaĹ. Ale nie miaĹ ochoty na jedzenie. W szafce w kuchni gdzie jest zwirek i jego jedzenie sÄ teĹź jego zabawki - wyjelam dwie i zostawiĹam Ĺźeby miaĹ siÄ czym bawiÄ. Zainteresowal siÄ nimi. Wyczyscilam mu kuwete.', '52.2102915', '21.0212027', '2017-12-25 12:46:17'),
(41, 5, 21, 'Trzeba uwaĹźaÄ wchodzÄc i wychodzÄc z mieszkania na Rysia ktĂłry zwiewa - pobiegĹ mi na kolejne piÄtro i przy wejĹciu i przy wyjĹciu. Ostatnio jak byĹam nie prĂłbowaĹ nawet... Oboje z Tosia przyszli na przytulanie chociaĹź jak juĹź zjedli to Tosia sie odseparowala, Rys siÄ mizial. Umylam im miski wszystkie, dosypalam suchego jedzenia, dalam mokre - nie zjedli wszystkiego, nalalam ĹwieĹźej wody. WyczyĹcilam ich kuwete i przewietrzylam mieszkanie', '52.2204869', '21.0200833', '2017-12-25 13:39:25'),
(42, 5, 15, 'Tuto jest przecudowny - pozytywny, turla siÄ,  Ĺasi, przytula. Jak wychodziĹam to schowaĹ siÄ pod ĹĂłĹźko- zabawny widok bo maĹy to on nie jest a gramolil siÄ i wpychal jak mĂłgĹ. ZrobiĹ kupÄ do wanny - sprzatnelam. Sprzatnelam jego kuwete, umylam wszystkie miski, dosypalam suchego jedzonka i przewietrzylam mieszkanie', '52.2197192', '21.016159', '2017-12-25 14:32:42'),
(43, 5, 12, 'Yuki bardzo sĹabiutka, lekko siÄ zatacza jak chodzila. Umylam zwierzakom wszystkie miski, nalalam ĹwieĹźej wody, dosypalam kotkom suchego jedzenia, sprzatnelam kuwety i przewietrzylam mieszkanie', '52.2474258', '20.9114269', '2017-12-25 15:45:18'),
(44, 5, 15, 'Kotki ChomiczĂłwka- Fuks, Chanda, Chmurek, Rudolf\r\n\r\nJak przyszĹam to nawet Chmurek siedziaĹ przy wejĹciu. Niestety jest na tyle nieufny Ĺźe jeszcze tylko raz siÄ na chwile wychylil zza kanapy. Umylam wszystkie miseczki, nalalam czystej wody, nasypalam suchej karmy oraz daĹam mokre jedzenie. Fuks staral siÄ wyjesc z kaĹźdego talerzyka. Rudolf siÄ polasil a Chanda mnie bacznie obserwowala. Wyczyscilam kuwety i przewietrzylam mieszkanie', '52.2760853', '20.9601913', '2017-12-25 16:56:16'),
(45, 5, 15, 'Kotki Biedronki- Sam, Charlie, Indie\r\n\r\nWszyscy troje przywitali mnie wyglodniali. Zjedli wszystko z rana. Umylam ich miseczki i dolalam wody. DaĹam suche i mokre jedzenie. Charlie dostaĹ swojÄ dawkÄ leku. Kolacje Charlie i Indie zjedli caĹÄ - mokre. Sam nawet do miski nie podszedĹ, leĹźaĹ pod stoĹem. Charlie siÄ caĹy czas przymilala wiÄc jÄ pomizialam. Sprzatnelam kuwety', '52.1680552', '21.0888351', '2017-12-25 18:34:38'),
(46, 5, 15, 'Kotki Biedronki- Sam, Charlie, Indie\r\n\r\nGĹodomorki chodziĹy za mnÄ aĹź im daĹam jedzenie. Charlie dostaĹ swoje leki. On i Indie zjedli od razu swoje mokre jedzenie. Sam zjadĹ trochÄ swojego i prĂłbowaĹ wyjeĹÄ suche Charliego. Dzisiaj jest bardzo przytulasny, bardziej niĹź Charlie. Umylam im wszystkie miseczki przed jedzeniem, nalalam ĹwieĹźej wody, przewietrzylam mieszkanie i wyczyscilam kuwety.', '52.1577338', '21.0825764', '2017-12-26 11:01:20'),
(47, 5, 15, 'Kotki Sarmacka 21 - Arnold i Mamed\r\n\r\nZe wzglÄdu na to Ĺźe ktoĹ byĹ w mieszkaniu wczoraj/ dzisiaj nie jestem pewna kiedy Arnold i Mamed jedli- poza tym co im wczoraj daĹam rano na pewno coĹ jedli wiÄcej do mojego przyjĹcia teraz- po miskach widzialam bo zostawiĹam wczoraj umyte. W kaĹźdym razie daĹam im mokre jedzenie wg instrukcji- zjedli wszystko od razu. Umylam ich miseczki i nalalam czystej wody. Sprzatnelam tylko wokĂłĹ kuwet poniewaĹź nic nie byĹo narobione. Pytanie czy zrobili od wczoraj kupe ? Bo wczoraj jak rano byĹam nie byĹo Ĺźadnej zrobionej, teraz rano rĂłwnieĹź nie. Przewietrzylam rĂłwnieĹź trochÄ mieszkanie.', '52.1567578', '21.0827504', '2017-12-26 11:58:19'),
(48, 5, 15, 'Diego i Heidi\r\nDiego i Heidi gĹodni byli mocno bo jak tylko weszĹam to mocno miauczeli i nie odstepowali mnie na krok. Umylam im miseczki, nasypalam suchej karmy- Diego dostaĹ swoje leki. Potem wymizialam oboje chociaz Diego byĹ bardziej chÄtny do przytulanek, Heidi nieĹmiaĹo. Sprzatnelam kuwete', '52.2331914', '21.000106', '2017-12-26 13:11:48'),
(49, 5, 14, 'Rot z TolÄ siÄ wyszaleli bo mieli towarzystwo w postaci mojego Oblaka i Maksia (psa mojego brata). Biegali wspolnie po krzakach, za patykami, Tola z Oblakiem odgrywali MMA. Oboje zrobili na spacerze kupe. W domu wytarlam ich a jeszcze przed wyjĹciem na spacer umylam ich miski i nalalam czystej wody. Jak wrĂłciliĹmy z lasu to byĹ Marcin wiÄc nie nagrywalam wyjĹcia', '52.1353935', '21.0303613', '2017-12-27 11:40:41'),
(50, 5, 15, 'Koty Biedronki- Sam, Charlie, Indie\r\nCaĹa trĂłjka wyglodniala i zniecierpliwiona czekaĹa na mnie przy drzwiach. Umylam ich miseczki, dolalam wody, nalozylam suchego i mokrego jedzenia. Charlie dostal swoje leki. Charlie i Indie zjedli mokra karme od razu. W salonie na podĹodze byĹy wymiociny z trawka- sprzatnelam. Na podĹodze w kuchni kepka sierĹci Sama. Indie dzisiaj sporo miauczal, lasil siÄ i potrzebowaĹ kontaktu. Sam i Charlie jak zawsze. Sprzatnelam ich kuwety i wywietrzylam mieszkanie', '52.1642202', '21.0827542', '2017-12-30 10:46:45'),
(51, 5, 15, 'Koty Sarmacka 21 - Arnold i Mamed\r\nDzisiaj Arnold w bojowym nastroju - czekajac aĹź naloze jedzenie on siedziaĹ, a Mamed miauczal i chodziĹ wokĂłĹ mnie i niego - chyba mu siÄ o nie podobalo bo za kaĹźdym razem tracal go wĂłwczas Ĺapka. Ale obaj siÄ do mnie przytulali wiÄc ich wymizialam. Zjedli caĹe mokre jedzenie. Umylam ich miski i nalalam ĹwieĹźej wody oraz sprzatnelam kuwete', '52.1580572', '21.082009', '2017-12-30 11:43:16'),
(52, 5, 15, 'Koty Sarmacka 21 - Arnold i Mamed\r\nDzisiaj Mamed nie byĹ tak milusinski jak Arnold ktĂłry siÄ caĹÄ wizyte tulil do mnie. DaĹam im mokre jedzonko- Arnold zostawil resztki w misce wiÄc Mamed wylizal do koĹca. Umylam im miski, nalalam ĹwieĹźej wody i dosypalam suchej karmy. Przewietrzylam mieszkanie i wyczyscilam kuwety. Na dywanie w salonie lezaly wymiociny wiÄc sprzatnelam (skoltunione klaczki). Pobawilam siÄ z nimi wÄdkÄ ale Arnold nie byĹ za bardzo zainteresowany, Mamed owszem- polatal.', '52.1567032', '21.0824186', '2017-12-31 10:23:49'),
(53, 5, 15, 'Tuto potrzebowaĹ wyglaskania i zainteresowania. Przytulal siÄ, turlal. W kuchni byĹa rozlana woda wiÄc sprzatnelam. Umylam jego wszystkie miski i nalalam ĹwieĹźej wody. Nie dosypywalam jedzenia bo ma go bardzo duĹźo. SprzÄtnelam kuwete i przewietrzylam mieszkanie', '52.2347154', '21.003888', '2017-12-31 11:53:26'),
(54, 5, 15, 'Diego i Heidi chyba gĹodni juĹź byli bo mocno  mnie gnebili o jedzenie. Umylam ich miski, Diego dostaĹ swoje leki i zjadĹ caĹe jedzenie. Heidi nie zjadla wszystkiego. SprzÄtnelam kuwety i przewietrzylam mieszkanie', '52.2371664', '21.0033558', '2017-12-31 12:39:16'),
(55, 5, 14, 'Tola dzisiaj bardzo pobudzona byĹa i nie zawsze siÄ sĹuchaĹa. Tym bardziej Ĺźe wiele pieskĂłw spotkaliĹmy w lesie i ze wszystkimi ganiala. Rocik teĹź siÄ wital ale bez szaleĹstw. Zrobili oboje kupe. W domu wytarlam ich, umylam ich miski i nalalam ĹwieĹźej wody', '52.1400604', '21.0183982', '2018-01-02 11:59:34'),
(56, 5, 15, 'Koty Sarmacka 21- Arnold i Mamed\r\nDzisiaj Arnold i Mamed chÄtnie siÄ ze mnÄ bawili wÄdkÄ. Bardziej byli zainteresowani zabawÄ niĹź jedzeniem czy tuleniem- chocisz jedzenie zjedli caĹe jak tylko naĹoĹźyĹam. Umylam ich miski, nalalam ĹwieĹźej wody. Oczyscilam parapet na ktĂłrym jedzÄ z zaschnietej karmy. Przewietrzylam mieszkanie, wyczyscilam kuwety oraz podmiotlam igĹy z pod choinki bo sporo ich siÄ nazbieraĹo.', '52.1814603', '21.0236884', '2018-01-02 13:53:09'),
(57, 5, 14, 'Nie jestem pewna czy Rot z TolÄ zjedli Ĺniadanie bo miski tak jak wczoraj umylam i zostawiĹam przy zlewie tak dalej leĹźÄ. Tola dzisiaj spokojniejsza byĹa na spacerze i bardzo grzeczna- sĹuchaĹa siÄ. Rota w drodze powrotnej trzeba na smycz braÄ jak siÄ dochodzi juz do domĂłw przy lesie bo wĂłwczas on leci do ogrodzen, szuka tam jedzenia i kompletnie nie reaguje na woĹanie. Oboje zrobili kupe. Po spacerze wytarlam ich, umylam miske na wodÄ i nalalam ĹwieĹźej.', '52.1359721', '21.0198915', '2018-01-03 11:51:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_working` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `status`
--

INSERT INTO `status` (`id`, `status`, `is_working`) VALUES
(1, 'Dojazd', 1),
(2, 'Rozpocznij wizytÄ', 1),
(3, 'ZakoĹcz wizytÄ', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `work_time`
--

CREATE TABLE IF NOT EXISTS `work_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `r_lat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `r_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9657297DA76ED395` (`user_id`),
  KEY `IDX_9657297D8E962C16` (`animal_id`),
  KEY `IDX_9657297D6BF700BD` (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=282 ;

--
-- Zrzut danych tabeli `work_time`
--

INSERT INTO `work_time` (`id`, `user_id`, `animal_id`, `start`, `end`, `status_id`, `message`, `r_lat`, `r_long`) VALUES
(5, 1, NULL, '2017-11-13 13:10:57', '2017-11-19 15:58:19', NULL, '', '', ''),
(6, 1, NULL, '2017-11-19 15:58:19', '2017-11-20 08:43:20', NULL, '', '', ''),
(9, 1, NULL, '2017-11-20 08:43:20', '2017-11-20 08:54:49', NULL, '', '', ''),
(10, 1, NULL, '2017-11-20 08:54:49', '2017-11-20 13:13:19', NULL, '', '', ''),
(17, 1, NULL, '2017-11-20 13:13:19', '2017-11-20 21:56:37', NULL, '', '', ''),
(18, 1, 2, '2017-11-20 21:56:37', '2017-11-20 21:57:45', 1, '', '', ''),
(19, 1, 8, '2017-11-20 21:57:45', '2017-11-22 01:08:05', 3, '', '', ''),
(23, 1, 4, '2017-11-22 01:08:05', '2017-11-22 01:17:42', 2, 'test', '52.3360674', '21.1267301'),
(24, 1, 3, '2017-11-22 01:17:42', '2017-11-22 01:19:08', 3, NULL, '52.2296756', '21.012228699999998'),
(25, 1, 6, '2017-11-22 01:19:08', '2017-12-11 10:58:39', 2, NULL, '52.2296756', '21.012228699999998'),
(26, 6, 1, '2017-11-23 10:14:11', '2017-11-23 12:01:05', 2, 'Jestem u Mani', '52.30332954311328', '20.9261724440541'),
(27, 6, 1, '2017-11-23 12:01:05', '2017-11-28 09:58:52', 3, 'Wychodze od Mani', '52.29792018356999', '20.938566210928347'),
(28, 6, 1, '2017-11-28 09:58:52', '2017-11-28 12:00:32', 2, 'Jestem u mani', '52.305713592512376', '20.933329158990173'),
(29, 6, 1, '2017-11-28 12:00:32', '2017-12-21 12:18:39', 3, 'Koniec', '52.300403709646645', '20.930250550228305'),
(30, 7, NULL, '2017-12-04 13:00:49', '2017-12-04 13:43:25', NULL, NULL, '52.257221821929946', '20.931351121099652'),
(31, 7, 2, '2017-12-04 13:43:25', '2017-12-11 10:52:46', 3, NULL, '52.25496060272202', '20.93209223244137'),
(32, 7, 19, '2017-12-11 10:52:46', '2017-12-11 10:56:47', 2, NULL, '52.22459173560293', '21.012772783314986'),
(33, 7, 19, '2017-12-11 10:56:47', '2017-12-11 12:18:39', 2, NULL, '52.224687061370524', '21.0123626692334'),
(34, 1, 19, '2017-12-11 10:58:39', '2017-12-11 11:19:50', 2, 'Test', '52.25702074367139', '20.892967960270727'),
(35, 1, 19, '2017-12-11 11:19:50', '2017-12-12 12:09:24', 2, NULL, '52.25702074367139', '20.892967960270727'),
(36, 7, 19, '2017-12-11 12:18:39', '2017-12-12 12:15:20', 3, 'Mucha nie za bardzo chciaĹa spacerowaÄ. ChodziĹ za nami ciÄgle jakiĹ pies, ktĂłry chciaĹ skorzystaÄ z cieczki Muchy. OdganiaĹem go co chwilÄ. ChodziliĹmy wokĂłĹ skweru gĹĂłwnie. Tam Mucha zrobiĹa kupÄ. W mieszkaniu wytarĹem jej Ĺapy, daĹem naszykowane jedzenie i zmieniĹem wodÄ', '52.22453990585114', '21.012150586505705'),
(37, 1, 3, '2017-12-12 12:09:24', '2018-02-06 13:14:27', 2, 'Test', '52.257086181746196', '20.89298744265715'),
(38, 7, 19, '2017-12-12 12:15:20', '2017-12-12 13:15:27', 2, NULL, '52.22471282432627', '21.01242692001855'),
(39, 5, 17, '2017-12-12 13:02:03', '2017-12-12 14:05:19', 2, NULL, '52.1602047', '21.0787584'),
(40, 7, 19, '2017-12-12 13:15:27', '2017-12-13 09:28:05', NULL, 'Mucha bardzo radosna dziĹ na mĂłj widok. Na spacerze grzeczna do momentu, aĹź nie zobaczy psa. Wtedy zaczyna siÄ szaleĹcza pogoĹ za nim, a psy chÄtnie siÄ chcÄ "bawiÄ" z niÄ. Nie szczeka, nie jest agresywna. ByĹa kupa i siku. W mieszkaniu wytarĹem Ĺapy, daĹem miskÄ z jedzeniem i zmieniĹem wodÄ', '52.224534669479844', '21.012145647692332'),
(41, 5, 17, '2017-12-12 14:05:19', '2017-12-12 14:05:51', 3, NULL, '52.1602047', '21.0787584'),
(42, 5, 5, '2017-12-12 14:05:51', '2017-12-20 08:20:03', 1, NULL, '52.1593694', '21.0731444'),
(43, 7, NULL, '2017-12-13 09:28:05', '2017-12-13 10:04:19', 2, NULL, '52.25387640027595', '20.984129766919395'),
(44, 7, NULL, '2017-12-13 10:04:19', '2017-12-21 11:28:16', 3, NULL, '52.25424954469589', '20.98306644762051'),
(45, 5, 3, '2017-12-20 08:20:03', '2017-12-20 09:10:13', 2, NULL, '52.1325821', '21.0645221'),
(46, 5, 3, '2017-12-20 09:10:13', '2017-12-20 09:10:27', 3, NULL, '52.1324659', '21.0675163'),
(47, 5, 14, '2017-12-20 09:10:27', '2017-12-20 10:01:42', 1, NULL, '52.1331212', '21.0688303'),
(48, 5, 14, '2017-12-20 10:01:42', '2017-12-20 11:22:11', 2, NULL, '52.1488547', '21.0470979'),
(49, 5, 14, '2017-12-20 11:22:11', '2017-12-20 11:23:13', 3, NULL, '52.1361596', '21.0197863'),
(50, 5, 15, '2017-12-20 11:23:13', '2017-12-20 12:25:22', 1, 'Dojazd do sarmackiej', '52.1357848', '21.0241309'),
(51, 5, 15, '2017-12-20 12:25:22', '2017-12-20 13:29:09', 2, 'Sarmacka', '52.143269', '21.0181762'),
(52, 5, 15, '2017-12-20 13:29:09', '2017-12-20 13:29:35', 3, 'Sarmacka', '52.16143178874147', '21.07028971727581'),
(53, 5, 3, '2017-12-20 13:29:35', '2017-12-20 14:27:14', 1, NULL, '52.16143178874147', '21.07028971727581'),
(54, 5, 3, '2017-12-20 14:27:14', '2017-12-20 15:27:48', 2, NULL, '52.1335933', '21.0682705'),
(55, 5, 3, '2017-12-20 15:27:48', '2017-12-21 11:00:47', 3, NULL, '52.1335933', '21.0682705'),
(56, 5, 14, '2017-12-21 11:00:47', '2017-12-21 12:22:09', 2, NULL, '52.1810172', '21.0246995'),
(57, 7, NULL, '2017-12-21 11:28:16', '2017-12-21 11:44:51', 2, NULL, '52.261968328877835', '20.93263774732682'),
(58, 7, 16, '2017-12-21 11:44:51', '2017-12-21 12:35:15', 2, NULL, '52.25498153791796', '20.933475750582527'),
(59, 6, NULL, '2017-12-21 12:18:39', '2017-12-21 14:05:07', NULL, NULL, '52.27570104991559', '20.953769197169652'),
(60, 5, 14, '2017-12-21 12:22:09', '2017-12-21 13:27:48', 3, NULL, '52.13214', '21.0185411'),
(61, 7, NULL, '2017-12-21 12:35:15', '2017-12-21 12:36:08', NULL, NULL, '52.25544186003702', '20.933405712342733'),
(62, 7, 16, '2017-12-21 12:36:08', '2017-12-21 12:56:22', 3, NULL, '52.255361750903255', '20.933790787327215'),
(63, 7, NULL, '2017-12-21 12:56:22', '2017-12-21 13:23:36', 3, NULL, '52.26350760067585', '20.92787757630909'),
(64, 7, 22, '2017-12-21 13:23:36', '2017-12-21 13:52:06', 2, NULL, '52.25990450220575', '20.96520175468935'),
(65, 5, 20, '2017-12-21 13:27:48', '2017-12-21 14:28:15', 2, NULL, '52.1409323', '21.0183937'),
(66, 7, 2, '2017-12-21 13:52:06', '2017-12-21 14:37:35', 2, NULL, '52.27018903300985', '20.951409023262435'),
(67, 6, 23, '2017-12-21 14:05:07', '2017-12-21 14:57:33', 2, 'Jestem', '52.242573405803846', '21.022266602657474'),
(68, 5, 20, '2017-12-21 14:28:15', '2017-12-21 14:28:48', 3, NULL, '52.1409323', '21.0183937'),
(69, 5, 4, '2017-12-21 14:28:48', '2017-12-21 15:17:36', 1, NULL, '52.1605002', '21.0771626'),
(70, 7, NULL, '2017-12-21 14:37:35', '2017-12-21 14:37:40', NULL, NULL, '52.27011826627131', '20.95189863046415'),
(71, 7, NULL, '2017-12-21 14:37:40', '2017-12-21 14:37:52', NULL, NULL, '52.269905166049185', '20.95160979451495'),
(72, 7, 2, '2017-12-21 14:37:52', '2017-12-21 15:00:52', 3, NULL, '52.26983008906425', '20.952104022034153'),
(73, 6, 23, '2017-12-21 14:57:33', NULL, 3, 'Koniec', '52.240285041824535', '21.023336603421157'),
(74, 7, 22, '2017-12-21 15:00:52', '2017-12-22 12:12:41', 3, NULL, '52.26152751429782', '20.9682050011498'),
(75, 5, 4, '2017-12-21 15:17:36', '2017-12-21 16:21:37', 2, NULL, '52.1605002', '21.0771626'),
(76, 5, 4, '2017-12-21 16:21:37', '2017-12-22 09:02:39', 3, NULL, '52.2559702', '20.9960559'),
(77, 5, 15, '2017-12-22 09:02:39', '2017-12-22 09:42:33', 2, 'Koty chomiczowka', '52.276494', '20.92405'),
(78, 5, 15, '2017-12-22 09:42:33', '2017-12-22 09:42:43', 3, 'Koty chomiczowka', '52.276494', '20.92405'),
(79, 5, 14, '2017-12-22 09:42:43', '2017-12-22 10:57:24', 1, NULL, '52.2760958', '20.9242438'),
(80, 5, 14, '2017-12-22 10:57:24', '2017-12-22 11:58:52', 2, NULL, '52.2766617', '20.9484963'),
(81, 5, 14, '2017-12-22 11:58:52', '2017-12-22 11:59:34', 3, NULL, '52.1648908', '21.0169382'),
(82, 5, 23, '2017-12-22 11:59:34', '2017-12-22 13:15:57', 1, NULL, '52.1361236', '21.0206356'),
(83, 7, 6, '2017-12-22 12:12:41', '2017-12-22 13:13:15', 2, NULL, '52.25814806503372', '20.9315190429817'),
(84, 7, 6, '2017-12-22 13:13:15', '2017-12-22 13:51:29', 3, NULL, '52.25785548985101', '20.931691898889095'),
(85, 5, 23, '2017-12-22 13:15:57', '2017-12-22 14:19:35', 2, NULL, '52.1614412', '21.0177583'),
(86, 7, 4, '2017-12-22 13:51:29', '2017-12-22 14:08:49', 2, NULL, '52.255297411578525', '20.994458378479784'),
(87, 7, 13, '2017-12-22 14:08:49', '2017-12-22 14:37:56', 2, NULL, '52.248752423628886', '20.996463068982976'),
(88, 5, 23, '2017-12-22 14:19:35', '2017-12-23 07:32:40', 3, NULL, '52.2396585', '21.023905'),
(89, 7, NULL, '2017-12-22 14:37:56', '2017-12-22 14:38:31', NULL, NULL, '52.24865303750934', '20.996636548322442'),
(90, 7, 13, '2017-12-22 14:38:31', '2017-12-22 14:55:26', 3, NULL, '52.24866788121743', '20.99671515702441'),
(91, 7, 4, '2017-12-22 14:55:26', '2018-01-09 12:19:26', 3, NULL, '52.254912458236085', '20.99489919853993'),
(92, 5, 12, '2017-12-23 07:32:40', '2017-12-23 08:03:48', 2, NULL, '52.2400232', '20.9877325'),
(93, 5, 12, '2017-12-23 08:03:48', '2017-12-23 08:04:50', 3, NULL, '52.2423904', '20.9197799'),
(94, 5, 15, '2017-12-23 08:04:50', '2017-12-23 08:36:19', 1, 'Koty chomiczowka', '52.2416792', '20.9184097'),
(95, 5, 15, '2017-12-23 08:36:19', '2017-12-23 09:16:57', 2, 'Koty chomiczowka', '52.2398869', '20.9130085'),
(96, 5, 15, '2017-12-23 09:16:57', '2017-12-23 09:17:33', 3, 'Koty chominczowka', '52.27634382247925', '20.924739599227905'),
(97, 5, 15, '2017-12-23 09:17:33', '2017-12-23 10:42:42', 1, 'Koty sarmacka 21', '52.276286', '20.9254875'),
(98, 5, 15, '2017-12-23 10:42:42', '2017-12-23 11:23:42', 2, 'Kotki sarmacka 21', '52.179593', '21.0247429'),
(99, 5, 15, '2017-12-23 11:23:42', '2017-12-23 11:23:52', 3, 'Koty sarmacka 21', '52.1565662', '21.0824587'),
(100, 5, 14, '2017-12-23 11:23:52', '2017-12-23 11:45:17', 1, NULL, '52.1565634', '21.0823303'),
(101, 5, 14, '2017-12-23 11:45:17', '2017-12-23 12:50:18', 2, NULL, '52.1619653', '21.0768336'),
(102, 5, 14, '2017-12-23 12:50:18', '2017-12-23 12:50:28', 3, NULL, '52.137991474062744', '21.01973475593301'),
(103, 5, 10, '2017-12-23 12:50:28', '2017-12-23 13:50:22', 1, NULL, '52.1365395', '21.0210425'),
(104, 5, 10, '2017-12-23 13:50:22', '2017-12-23 14:30:20', 2, NULL, '52.1404522', '21.0182334'),
(105, 5, 10, '2017-12-23 14:30:20', '2017-12-23 14:30:40', 3, NULL, '52.1877175', '20.9903721'),
(106, 5, 15, '2017-12-23 14:30:40', '2017-12-23 15:10:22', 1, 'Koty natolinska', '52.1877157', '20.9903702'),
(107, 5, 21, '2017-12-23 15:10:22', '2017-12-23 15:51:54', 2, NULL, '52.1874429', '20.9903153'),
(108, 5, 21, '2017-12-23 15:51:54', '2017-12-24 07:15:42', 3, NULL, '52.2205515', '21.0201526'),
(109, 5, 15, '2017-12-24 07:15:42', '2017-12-24 07:55:16', 2, 'Kotki sarmacka 21', '52.1565565', '21.0825425'),
(110, 5, 15, '2017-12-24 07:55:16', '2017-12-24 07:55:36', 3, 'Koty sarmacka 21', '52.1565358', '21.0823536'),
(111, 5, 15, '2017-12-24 07:55:36', '2017-12-24 08:13:55', 1, 'Biedronki', '52.1565343', '21.0825948'),
(112, 5, 15, '2017-12-24 08:13:55', '2017-12-24 08:57:07', 2, 'Kotki Biedronki', '52.1587517', '21.0835955'),
(113, 5, 15, '2017-12-24 08:57:07', '2017-12-24 08:57:34', 3, 'Kotki biedronki', '52.1684183', '21.0888024'),
(114, 5, 14, '2017-12-24 08:57:34', '2017-12-24 10:03:49', 1, NULL, '52.1685205', '21.0888785'),
(115, 5, 14, '2017-12-24 10:03:49', '2017-12-24 10:43:37', 2, NULL, '52.1360774', '21.0197361'),
(116, 5, 14, '2017-12-24 10:43:37', '2017-12-24 10:43:52', 3, NULL, '52.1360598', '21.0199808'),
(117, 5, 12, '2017-12-24 10:43:52', '2017-12-24 12:09:33', 1, NULL, '52.1363621', '21.0206419'),
(118, 5, 12, '2017-12-24 12:09:33', '2017-12-24 13:07:47', 2, NULL, '52.2405739', '20.9298261'),
(119, 5, 12, '2017-12-24 13:07:47', '2017-12-24 13:07:58', 3, NULL, '52.2405739', '20.9298261'),
(120, 5, 15, '2017-12-24 13:07:58', '2017-12-24 13:38:05', 1, NULL, '52.2405739', '20.9298261'),
(121, 5, 15, '2017-12-24 13:38:05', '2017-12-24 14:18:38', 2, 'Koty chomiczowka', '52.2801663', '20.9234495'),
(122, 5, 15, '2017-12-24 14:18:38', '2017-12-24 14:18:50', 3, 'Kotki chomiczowka', '52.2801663', '20.9234495'),
(123, 5, 21, '2017-12-24 14:18:50', '2017-12-24 14:53:59', 1, NULL, '52.2761731', '20.9250844'),
(124, 5, 15, '2017-12-24 14:53:59', '2017-12-24 15:34:13', 2, 'Diego i Heidi', '52.2715492', '20.9721677'),
(125, 5, 15, '2017-12-24 15:34:13', '2017-12-24 20:48:14', 3, 'Diego i Haidi', '52.2345315', '21.0039334'),
(126, 5, 14, '2017-12-24 20:48:14', '2017-12-24 21:19:09', 2, NULL, '52.1367645', '21.018849'),
(127, 5, 14, '2017-12-24 21:19:09', '2017-12-24 21:19:38', 3, NULL, '52.1364954', '21.0188806'),
(128, 5, 15, '2017-12-24 21:19:38', '2017-12-24 21:35:33', 1, 'Kotki Biedronki', '52.1365394', '21.0210423'),
(129, 5, 15, '2017-12-24 21:35:33', '2017-12-24 22:05:15', 2, 'Kotki Biedronki', '52.1658161', '21.0288753'),
(130, 5, 15, '2017-12-24 22:05:15', '2017-12-25 07:47:46', 3, 'Kotki Biedronki', '52.1685104', '21.0892697'),
(131, 5, 14, '2017-12-25 07:47:46', '2017-12-25 08:49:23', 2, NULL, '52.1698287', '21.0888137'),
(132, 5, 14, '2017-12-25 08:49:23', '2017-12-25 08:49:35', 3, NULL, '52.1798111', '21.0239962'),
(133, 5, 14, '2017-12-25 08:49:35', '2017-12-25 08:49:56', 3, NULL, '52.1798111', '21.0239962'),
(134, 5, 15, '2017-12-25 08:49:56', '2017-12-25 09:24:03', 1, 'Koty.biedronki', '52.1798111', '21.0239962'),
(135, 5, 15, '2017-12-25 09:24:03', '2017-12-25 10:04:43', 2, 'Koty biedronki', '52.1637966', '21.0175671'),
(136, 5, 15, '2017-12-25 10:04:43', '2017-12-25 10:04:56', 3, 'Kotki Biedronki', '52.1735579243128', '21.07948316914549'),
(137, 5, 15, '2017-12-25 10:04:56', '2017-12-25 10:26:03', 1, 'Koty sarmacka', '52.1735579243128', '21.07948316914549'),
(138, 5, 15, '2017-12-25 10:26:03', '2017-12-25 11:06:05', 2, 'Koty sarmacka', '52.1735579243128', '21.07948316914549'),
(139, 5, 15, '2017-12-25 11:06:05', '2017-12-25 11:06:19', 3, 'Kotki Sarmacka 21', '52.1735579243128', '21.07948316914549'),
(140, 5, 10, '2017-12-25 11:06:19', '2017-12-25 11:47:50', 1, NULL, '52.1735579243128', '21.07948316914549'),
(141, 5, 10, '2017-12-25 11:47:50', '2017-12-25 12:18:21', 2, NULL, '52.1585945', '21.0839554'),
(142, 5, 10, '2017-12-25 12:18:21', '2017-12-25 12:18:45', 3, NULL, '52.1798552', '21.0238306'),
(143, 5, 21, '2017-12-25 12:18:45', '2017-12-25 12:50:29', 1, NULL, '52.1798552', '21.0238306'),
(144, 5, 21, '2017-12-25 12:50:29', '2017-12-25 13:20:56', 2, NULL, '52.2102915', '21.0212027'),
(145, 5, 21, '2017-12-25 13:20:56', '2017-12-25 13:21:09', 3, NULL, '52.2102915', '21.0212027'),
(146, 5, 15, '2017-12-25 13:21:09', '2017-12-25 13:28:24', 1, 'Tuto', '52.2204869', '21.0200833'),
(147, 5, 15, '2017-12-25 13:28:24', '2017-12-25 14:14:41', 2, 'Tuto', '52.2204869', '21.0200833'),
(148, 5, 15, '2017-12-25 14:14:41', '2017-12-25 14:14:51', 3, 'Tuto', '52.2204869', '21.0200833'),
(149, 5, 12, '2017-12-25 14:14:51', '2017-12-25 15:01:30', 1, NULL, '52.2204869', '21.0200833'),
(150, 5, 12, '2017-12-25 15:01:30', '2017-12-25 15:25:26', 2, NULL, '52.2197192', '21.016159'),
(151, 5, 12, '2017-12-25 15:25:26', '2017-12-25 15:25:42', 3, NULL, '52.240746', '20.9271459'),
(152, 5, 15, '2017-12-25 15:25:42', '2017-12-25 16:03:25', 1, 'Koty chomiczowka', '52.240746', '20.9271459'),
(153, 5, 15, '2017-12-25 16:03:25', '2017-12-25 16:35:31', 2, 'Kotki Chomiczowka', '52.259194', '20.9226117'),
(154, 5, 15, '2017-12-25 16:35:31', '2017-12-25 16:35:43', 3, 'Koty chomiczowka', '52.2799971', '20.9290451'),
(155, 5, 15, '2017-12-25 16:35:43', '2017-12-25 17:53:53', 1, 'Biedronki', '52.2761669', '20.9241484'),
(156, 5, 15, '2017-12-25 17:53:53', '2017-12-25 18:24:06', 2, 'Kotki Biedronki', '52.2691562', '20.9846575'),
(157, 5, 15, '2017-12-25 18:24:06', '2017-12-26 09:53:14', 3, 'Kotki Biedronki', '52.1682826', '21.0890007'),
(158, 5, 15, '2017-12-26 09:53:14', '2017-12-26 10:44:18', 2, 'Koty Biedronki', '52.2131079', '21.0173746'),
(159, 5, 15, '2017-12-26 10:44:18', '2017-12-26 10:44:34', 3, 'Kotki Biedronki', '52.1683196', '21.0881969'),
(160, 5, 15, '2017-12-26 10:44:34', '2017-12-26 11:04:24', 1, 'Kotki sarmacka', '52.1683196', '21.0881969'),
(161, 5, 15, '2017-12-26 11:04:24', '2017-12-26 11:44:27', 2, 'Kotki Sarmacka 21', '52.1577338', '21.0825764'),
(162, 5, 15, '2017-12-26 11:44:27', '2017-12-26 11:44:43', 3, 'Kotki Sarmacka 21', '52.1577338', '21.0825764'),
(163, 5, 15, '2017-12-26 11:44:43', '2017-12-26 12:25:25', 1, 'Diego i Haidi', '52.1552019', '21.083308'),
(164, 5, 15, '2017-12-26 12:25:25', '2017-12-26 13:06:35', 2, 'Diego i Heidi', '52.162653', '21.0711352'),
(165, 5, 15, '2017-12-26 13:06:35', '2017-12-27 10:03:06', 3, 'Diego i Heidi', '52.1799271', '21.0238406'),
(166, 5, 14, '2017-12-27 10:03:06', '2017-12-27 11:36:19', 2, NULL, '52.0657021', '20.9911181'),
(167, 5, 14, '2017-12-27 11:36:19', '2017-12-29 08:11:16', 3, NULL, '52.0657021', '20.9911181'),
(168, 5, 15, '2017-12-29 08:11:16', '2017-12-30 09:39:14', 2, 'Koty Biedronki', '52.174033880233765', '21.078686952590942'),
(169, 5, 15, '2017-12-30 09:39:14', '2017-12-30 09:48:38', 3, 'Test', '52.186152935028076', '21.064362168312073'),
(170, 5, 15, '2017-12-30 09:48:38', '2017-12-30 10:31:12', 2, 'Koty Biedronki', '52.186152935028076', '21.064362168312073'),
(171, 5, 15, '2017-12-30 10:31:12', '2017-12-30 10:31:25', 3, 'Koty Biedronki', '52.168376326560974', '21.08389723300934'),
(172, 5, 15, '2017-12-30 10:31:25', '2017-12-30 10:51:38', 1, 'Sarmacka 21', '52.1685298', '21.0893403'),
(173, 5, 15, '2017-12-30 10:51:38', '2017-12-30 11:32:47', 2, 'Koty Sarmacka 21', '52.1607697', '21.0826968'),
(174, 5, 15, '2017-12-30 11:32:47', '2017-12-31 09:26:43', 3, 'Koty Sarmacka 21', '52.1571859', '21.0828063'),
(175, 5, 15, '2017-12-31 09:26:43', '2017-12-31 10:07:04', 2, 'Koty sarmacka 21', '52.1574026', '21.0826055'),
(176, 5, 15, '2017-12-31 10:07:04', '2017-12-31 10:07:40', 3, NULL, '52.1574026', '21.0826055'),
(177, 5, 15, '2017-12-31 10:07:40', '2017-12-31 10:41:46', 1, 'Diego i Heidi', '52.1564936', '21.0827494'),
(178, 5, 15, '2017-12-31 10:41:46', '2017-12-31 11:17:44', 2, 'Tuto', '52.1583622', '21.0751303'),
(179, 5, 15, '2017-12-31 11:17:44', '2017-12-31 11:17:57', 3, 'Tuto', '52.2206721', '21.0161819'),
(180, 5, 15, '2017-12-31 11:17:57', '2017-12-31 11:31:35', 1, 'Diego i Heidi', '52.2206721', '21.0161819'),
(181, 5, 15, '2017-12-31 11:31:35', '2017-12-31 12:12:37', 2, 'Diego i Heidi', '52.2206721', '21.0161819'),
(182, 5, 15, '2017-12-31 12:12:37', '2018-01-02 10:17:44', 3, 'Diego i Heidi', '52.2347857', '21.0038985'),
(183, 5, 14, '2018-01-02 10:17:44', '2018-01-02 11:49:11', 2, NULL, '52.1481728', '21.0175551'),
(184, 5, 14, '2018-01-02 11:49:11', '2018-01-02 11:49:33', 3, NULL, '52.13534010426898', '21.017817701519302'),
(185, 5, 15, '2018-01-02 11:49:33', '2018-01-02 12:31:42', 1, 'Koty Sarmacka 21', '52.13642346858978', '21.020930409431458'),
(186, 5, 15, '2018-01-02 12:31:42', '2018-01-02 13:12:24', 2, 'Koty Sarmacka 21', '52.1409299', '21.0188314'),
(187, 5, 15, '2018-01-02 13:12:24', '2018-01-02 13:12:36', 3, 'Koty Sarmacka 21', '52.15786349773407', '21.080777883529663'),
(188, 5, 15, '2018-01-02 13:12:36', '2018-01-02 14:39:15', 1, 'Spotkanie', '52.156528', '21.0824361'),
(189, 5, 15, '2018-01-02 14:39:15', '2018-01-02 15:19:52', 2, 'Diego i Heidi', '52.217912', '21.0139425'),
(190, 5, 15, '2018-01-02 15:19:52', '2018-01-03 10:09:43', 3, 'Diego i Heidi', '52.2346278', '21.0038845'),
(191, 5, 14, '2018-01-03 10:09:43', '2018-01-03 11:39:22', 2, NULL, '52.1654718', '21.0169103'),
(192, 5, 14, '2018-01-03 11:39:22', '2018-01-03 11:39:30', 3, NULL, '52.13477921485901', '21.0183984041214'),
(193, 5, 4, '2018-01-03 11:39:30', '2018-01-03 12:26:18', 1, NULL, '52.136536', '21.0210134'),
(194, 5, 4, '2018-01-03 12:26:18', NULL, 2, NULL, '52.180002212524414', '21.022692680358887'),
(195, 7, NULL, '2018-01-09 12:19:26', '2018-01-09 13:20:25', 2, NULL, '52.270124282619015', '20.951467715313647'),
(196, 7, NULL, '2018-01-09 13:20:25', '2018-01-09 14:05:49', 3, NULL, '52.26970862511124', '20.952927232968452'),
(197, 7, NULL, '2018-01-09 14:05:49', '2018-01-09 14:48:16', 2, NULL, '52.25789279980236', '20.9315644176711'),
(198, 7, NULL, '2018-01-09 14:48:16', '2018-01-09 14:53:39', 3, NULL, '52.25867274027126', '20.931742464518848'),
(199, 7, NULL, '2018-01-09 14:53:39', '2018-01-09 15:51:18', 2, NULL, '52.26194407839491', '20.93271159880192'),
(200, 7, 7, '2018-01-09 15:51:18', '2018-01-10 11:05:09', 3, NULL, '52.26348121205717', '20.9283315489765'),
(201, 7, 6, '2018-01-10 11:05:09', '2018-01-10 12:09:32', 2, NULL, '52.25790637809214', '20.931425090269375'),
(202, 7, NULL, '2018-01-10 12:09:32', '2018-01-10 12:09:46', NULL, NULL, '52.25839201237922', '20.931038182421236'),
(203, 7, NULL, '2018-01-10 12:09:46', '2018-01-10 12:30:34', 3, NULL, '52.25839398838546', '20.931042898030583'),
(204, 7, 2, '2018-01-10 12:30:34', '2018-01-10 13:32:45', 2, NULL, '52.27056443682132', '20.950913609598835'),
(205, 7, 2, '2018-01-10 13:32:45', '2018-01-10 13:55:14', 3, NULL, '52.27018491479898', '20.951313566888064'),
(206, 7, 4, '2018-01-10 13:55:14', '2018-01-10 15:00:50', 2, NULL, '52.25521964699444', '20.993556717136805'),
(207, 7, 4, '2018-01-10 15:00:50', '2018-01-11 10:55:36', 3, NULL, '52.25619742256268', '20.99436011145103'),
(208, 7, 2, '2018-01-11 10:55:36', '2018-01-11 12:08:16', 2, NULL, '52.270177775405266', '20.95138463091394'),
(209, 7, NULL, '2018-01-11 12:08:16', '2018-01-11 12:08:20', NULL, NULL, '52.270876374088274', '20.950256945886665'),
(210, 7, NULL, '2018-01-11 12:08:20', '2018-01-11 12:08:35', NULL, NULL, '52.27086962593874', '20.95026660191582'),
(211, 7, 2, '2018-01-11 12:08:35', '2018-01-11 12:20:59', 3, NULL, '52.2711068076365', '20.95053475867069'),
(212, 7, NULL, '2018-01-11 12:20:59', '2018-01-11 12:21:16', NULL, NULL, '52.261820884440645', '20.933179144986923'),
(213, 7, 7, '2018-01-11 12:21:16', '2018-01-11 13:23:23', 2, NULL, '52.26177998022948', '20.93307892838787'),
(214, 7, 7, '2018-01-11 13:23:23', '2018-01-11 20:01:23', 3, NULL, '52.262329183315714', '20.932300845705868'),
(215, 7, 3, '2018-01-11 20:01:23', '2018-01-11 21:05:09', 2, NULL, '52.132483000785484', '21.068550816098256'),
(216, 7, 3, '2018-01-11 21:05:09', '2018-01-12 10:53:57', 3, NULL, '52.1322437457188', '21.06853807131733'),
(217, 7, 2, '2018-01-12 10:53:57', '2018-01-12 11:58:52', 2, NULL, '52.270301996990554', '20.951159603701676'),
(218, 7, NULL, '2018-01-12 11:58:52', '2018-01-12 11:59:03', NULL, NULL, '52.270163275842634', '20.951280931993974'),
(219, 7, 2, '2018-01-12 11:59:03', '2018-01-12 12:13:35', 3, NULL, '52.270158080304185', '20.951279404329778'),
(220, 7, 22, '2018-01-12 12:13:35', '2018-01-12 13:16:48', 2, NULL, '52.26036873839342', '20.965912851682642'),
(221, 7, 22, '2018-01-12 13:16:48', '2018-01-12 13:39:09', 3, NULL, '52.259645619667594', '20.965757099803465'),
(222, 7, NULL, '2018-01-12 13:39:09', '2018-01-12 13:39:25', NULL, NULL, '52.25533249640308', '20.993770526560617'),
(223, 7, 4, '2018-01-12 13:39:25', '2018-01-12 14:45:21', 2, NULL, '52.25526012976194', '20.993708381369288'),
(224, 7, 4, '2018-01-12 14:45:21', '2018-01-12 16:00:51', 3, NULL, '52.25577100026994', '20.99408070058582'),
(225, 7, NULL, '2018-01-12 16:00:51', '2018-01-12 16:01:03', NULL, NULL, '52.132752940480785', '21.068409704582503'),
(226, 7, 3, '2018-01-12 16:01:03', '2018-01-12 17:05:13', 2, NULL, '52.1328256109308', '21.068379895795953'),
(227, 7, 3, '2018-01-12 17:05:13', '2018-01-15 10:31:59', 3, NULL, '52.132935158654774', '21.068772355678686'),
(228, 7, 20, '2018-01-15 10:31:59', '2018-01-15 11:30:36', 2, NULL, '52.159706794740465', '21.07913681768208'),
(229, 7, 20, '2018-01-15 11:30:36', '2018-01-15 12:22:03', 3, NULL, '52.16014831444832', '21.07872607983938'),
(230, 7, 22, '2018-01-15 12:22:03', '2018-01-15 13:52:00', 2, NULL, '52.259871657150825', '20.965471257039734'),
(231, 7, 22, '2018-01-15 13:52:00', '2018-01-16 11:02:23', 3, NULL, '52.25968661726175', '20.96558850636952'),
(232, 7, 20, '2018-01-16 11:02:23', '2018-01-16 11:59:20', 2, NULL, '52.15936674613531', '21.07952884469938'),
(233, 7, 20, '2018-01-16 11:59:20', '2018-01-16 12:57:46', 3, NULL, '52.16056311598276', '21.077872584872246'),
(234, 7, 2, '2018-01-16 12:57:46', '2018-01-16 14:25:53', 2, NULL, '52.27008253783127', '20.95156538210918'),
(235, 7, 2, '2018-01-16 14:25:53', '2018-01-16 16:16:18', 3, NULL, '52.25366155094542', '20.992550638422866'),
(236, 7, 4, '2018-01-16 16:16:18', '2018-01-18 13:46:00', 3, NULL, '52.228131767313826', '20.959013360242594'),
(237, 7, NULL, '2018-01-18 13:46:00', '2018-01-18 13:46:18', NULL, NULL, '52.26028142038356', '20.966175663484606'),
(238, 7, 22, '2018-01-18 13:46:18', '2018-01-18 14:36:56', 2, NULL, '52.25996592056353', '20.96605981969009'),
(239, 7, 22, '2018-01-18 14:36:56', '2018-01-23 08:30:55', 3, NULL, '52.259765207741644', '20.965554132861506'),
(240, 7, 3, '2018-01-23 08:30:55', '2018-01-23 09:33:10', 2, NULL, '52.260821296321424', '20.989184230202934'),
(241, 7, NULL, '2018-01-23 09:33:10', '2018-01-23 09:33:22', NULL, NULL, '52.13252276420765', '21.068472368807484'),
(242, 7, 3, '2018-01-23 09:33:22', '2018-01-23 11:35:44', 3, NULL, '52.13252276420765', '21.068472368807484'),
(243, 7, 22, '2018-01-23 11:35:44', '2018-01-23 12:38:06', 2, NULL, '52.25994234196023', '20.966073351051364'),
(244, 7, 22, '2018-01-23 12:38:06', '2018-01-23 13:30:49', 3, NULL, '52.259663564913666', '20.965751778979588'),
(245, 7, 6, '2018-01-23 13:30:49', '2018-01-23 14:35:18', 2, NULL, '52.25822653502735', '20.931824231720345'),
(246, 7, 6, '2018-01-23 14:35:18', '2018-01-24 11:21:39', 3, NULL, '52.25819515570186', '20.93102038224119'),
(247, 7, 6, '2018-01-24 11:21:39', '2018-01-24 12:26:46', 2, NULL, '52.25850992759048', '20.93118119806037'),
(248, 7, 6, '2018-01-24 12:26:46', '2018-01-24 13:01:26', 3, NULL, '52.258172604254966', '20.931637030082253'),
(249, 7, 22, '2018-01-24 13:01:26', '2018-01-24 14:02:42', 2, NULL, '52.260139750807916', '20.96613853492743'),
(250, 7, 22, '2018-01-24 14:02:42', '2018-01-24 14:27:36', 3, NULL, '52.26002018788697', '20.966050458978486'),
(251, 7, 2, '2018-01-24 14:27:36', '2018-01-24 17:53:17', 2, NULL, '52.27010729885321', '20.95147984795571'),
(252, 7, 2, '2018-01-24 17:53:17', '2018-01-24 18:39:11', 2, NULL, '52.270016051017905', '20.95166845313318'),
(253, 7, 2, '2018-01-24 18:39:11', '2018-01-25 08:31:12', 3, NULL, '52.270005563880396', '20.951637688554626'),
(254, 7, 3, '2018-01-25 08:31:12', '2018-01-25 09:34:00', 2, NULL, '52.13194487203797', '21.068588562608628'),
(255, 7, 3, '2018-01-25 09:34:00', '2018-01-25 10:35:53', 3, NULL, '52.13292057327912', '21.068763856755798'),
(256, 7, 20, '2018-01-25 10:35:53', '2018-01-25 11:33:43', 2, NULL, '52.16060729536212', '21.07727537677855'),
(257, 7, 20, '2018-01-25 11:33:43', '2018-01-25 12:38:24', 3, NULL, '52.160564806547136', '21.078385237373936'),
(258, 7, 2, '2018-01-25 12:38:24', '2018-01-25 13:42:22', 2, NULL, '52.269372058636456', '20.953692268301474'),
(259, 7, 2, '2018-01-25 13:42:22', '2018-01-25 14:29:07', 3, NULL, '52.27018089857248', '20.950966210891266'),
(260, 7, 7, '2018-01-25 14:29:07', '2018-01-25 14:39:51', 2, NULL, '52.26199465882354', '20.932527508479502'),
(261, 7, 6, '2018-01-25 14:39:51', '2018-01-25 15:39:14', 2, NULL, '52.258373844129586', '20.930963572130377'),
(262, 7, 6, '2018-01-25 15:39:14', '2018-01-25 16:04:28', 3, NULL, '52.25846114697288', '20.93120440720445'),
(263, 7, NULL, '2018-01-25 16:04:28', '2018-01-25 16:04:31', NULL, NULL, '52.262311980557485', '20.93228054432717'),
(264, 7, NULL, '2018-01-25 16:04:31', '2018-01-25 16:04:44', NULL, NULL, '52.262555145670156', '20.93232082265988'),
(265, 7, 7, '2018-01-25 16:04:44', '2018-01-26 08:28:44', 3, NULL, '52.26257255394012', '20.932310999405722'),
(266, 7, 3, '2018-01-26 08:28:44', '2018-01-26 09:33:55', 2, NULL, '52.13328181279491', '21.06853253104853'),
(267, 7, 3, '2018-01-26 09:33:55', '2018-01-26 10:29:22', 3, NULL, '52.132623090725986', '21.068351852976168'),
(268, 7, 20, '2018-01-26 10:29:22', '2018-01-26 11:58:23', 2, NULL, '52.160523456551054', '21.077777242241694'),
(269, 7, NULL, '2018-01-26 11:58:23', '2018-01-26 11:58:40', NULL, NULL, '52.15906372142143', '21.07982201894361'),
(270, 7, 20, '2018-01-26 11:58:40', '2018-01-26 14:48:47', 3, NULL, '52.15895749726521', '21.079905217700773'),
(271, 7, NULL, '2018-01-26 14:48:47', '2018-01-26 14:49:01', NULL, NULL, '52.13314230206349', '21.068549896834057'),
(272, 7, 3, '2018-01-26 14:49:01', '2018-01-26 15:52:36', 2, NULL, '52.13321090616262', '21.06876568598179'),
(273, 7, NULL, '2018-01-26 15:52:36', '2018-01-26 15:52:50', NULL, NULL, '52.131248926934894', '21.068327168436497'),
(274, 7, 3, '2018-01-26 15:52:50', NULL, 3, NULL, '52.131243703189085', '21.068316879362353'),
(275, 1, 24, '2018-02-06 13:14:27', '2018-02-06 14:12:10', 2, NULL, '52.248554389146854', '21.03771717281396'),
(276, 1, 24, '2018-02-06 14:12:10', NULL, 3, NULL, '52.24853964993008', '21.037999866549892'),
(277, 3, 15, '2018-02-06 14:26:47', '2018-02-06 14:30:55', 1, 'test', '52.2449977', '20.916888099999998'),
(278, 3, 15, '2018-02-06 14:30:55', '2018-02-06 14:33:20', 1, 'test', '52.2449977', '20.916888099999998'),
(279, 3, 1, '2018-02-06 14:33:20', '2018-02-06 14:37:30', 1, 'test', '52.2449977', '20.916888099999998'),
(280, 3, 15, '2018-02-06 14:37:30', '2018-02-06 14:41:45', 3, 'test', '52.2449977', '20.916888099999998'),
(281, 3, 15, '2018-02-06 14:41:45', NULL, 1, 'testtest', '52.2449977', '20.916888099999998');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `raport`
--
ALTER TABLE `raport`
  ADD CONSTRAINT `FK_31AFD1448E962C16` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `FK_31AFD144A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Ograniczenia dla tabeli `work_time`
--
ALTER TABLE `work_time`
  ADD CONSTRAINT `FK_9657297D6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_9657297D8E962C16` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `FK_9657297DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
