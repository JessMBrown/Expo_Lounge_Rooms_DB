-- Getting it to work

INSERT INTO Room_type (Type_ID, Name, Description, Price_Per_Night, Capacity)
VALUES
(1, 'Standard_Double', 'Standard Double Sized Bed With Ensuite bathroom with walk in shower', 65.00, 2),
(2, 'Standard_King', 'Standard King Sized Bed With single pull out sofa bed single, Ensuite bathroom with walk in shower and bath', 85.00, 3),
(3, 'Superking', 'Superking Sized Bed with pull out sofa bed, ensuite bathroom with double sink, spa bath and walk in deluxe shower', 125.00, 4),
(4, '2_Standard_Double', '2 standard double beds and a single pull out sofa bed, ensuite bathroom with bath and shower', 95.00, 5),
(5, 'Family_Room', 'Double bed and 2 singles also includes one single pull out sofa bed, ensuite bathroom with bath and shower', 105.00, 6)
;

INSERT INTO Room (Type_ID, Status)
VALUES
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Available'),
(1, 'Unavailable'),
(2, 'Available'),
(2, 'Available'),
(2, 'Available'),
(2, 'Available'),
(2, 'Unavailable'),
(3, 'Available'),
(3, 'Available'),
(3, 'Available'),
(3, 'Available'),
(3, 'Unavailable'),
(4, 'Available'),
(4, 'Available'),
(4, 'Available'),
(4, 'Available'),
(4, 'Unavailable'),
(5, 'Available'),
(5, 'Available'),
(5, 'Available'),
(5, 'Available'),
(5, 'Unavailable')
;

INSERT INTO Customer_Details (First_Name, Last_Name, DOB)
VALUES
('Frank', 'Jobs', '1975-03-01'),
('Joshua', 'Hooland', '1988-09-01'),
('Jackie', 'Lake', '1997-06-03'),
('Amy',	'Hunter', '2001-07-16'),
('Linda', 'Kilbride', '1969-12-27'),
('Peter', 'Parker', '1960-04-30'),
('Zachery', 'Donovan', '1997-12-01'),
('Lucy', 'Champs', '1987-03-28'),
('Bernie', 'Walters', '1979-01-12'),
('Jesse', 'Pinkman', '1990-01-30'),
('Gus', 'Fring', '1975-04-17'),
('Saul', 'Goodman', '1980-12-13'),
('Hank', 'Schrader', '1980-07-28'),
('Mike', 'Ehrmantraut', '1965-02-16'),
('Jane', 'Margolis', '1990-05-18'),
('Todd', 'Alquist', '1999-09-05'),
('Tuco', 'Salamanca','1976-06-09'),
('Marie', 'Schrader', '1984-04-11'),
('Ted', 'Beneke', '1982-11-30'),
('Huell', 'Babineaux', '1985-02-19'),
('Steven', 'Gomez', '1980-11-24'),
('Marco', 'Salamanca','2000-03-13'),
('Terry', 'Jones','1942-02-01'),
('Eric', 'Idle', '1943-03-29'),
('Graham', 'Chapman', '1941-01-08'),
('Terry', 'Gilliam', '1940-11-22'),
('John', 'Cleese','1939-10-27'),
('Michael',	'Palin', '1943-05-05'),
('Kate', 'Foster', '1988-05-06'),
('Nathan', 'Foster','1987-11-07'),
('Iyla', 'Foster', '1954-10-12'),
('Nathan_Jr', 'Foster',	'2018-01-12'),
('Charlie', 'Foster', '2023-04-23'),
('Ella', 'Foster', '2023-04-23'),
('Anne', 'Carlson', '1986-09-16'),
('Alice', 'Carlson', '2018-07-29'),
('Lionel', 'Carlson', '1985-11-26'),
('Jayme', 'Carlson', '2022-09-18'),
('Jane', 'Carlson', '1956-02-19'),
('Valarie',	'Szalinksky', '1979-07-17'),
('Jacob', 'Szalinksky',	'2010-12-25'),
('Joseph', 'Szalinksky', '2011-10-27'),
('Rick', 'Sanchez',	'1954-02-02'),
('Summer', 'Smith',	'2012-11-29'),
('Beth', 'Smith', '1985-10-07'),
('Jerry', 'Smith', '1983-12-17'),
('Morty_Jr', 'Smith', '2016-01-01'),
('Leonard', 'Smith', '1952-01-07'),
('Bird', 'Man',	'1942-06-21'),
('Frank', 'Palicky', '1976-09-28'),
('Scroopy', 'Noopers', '1991-09-15'),
('Tammy', 'Gueterman', '1999-11-15'),
('Xenon', 'Bloom', '1966-01-31'),
('King_Flippy',	'Nips', '1934-07-15'),
('Glexo', 'Slimslom', '2002-09-08'),
('Vance', 'Maximus', '1999-01-04'),
('Krombopulos',	'Michael','1980-11-17'),
('Shrimply', 'Pibbles', '1982-10-27'),
('Pat',	'Gueterman', '2001-06-22')
;


INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
VALUES
('4 milwalk place',		'Morley',	'Leeds',	'LS270QY', 1),
('7 Victoria Road',		'Morley',	'Leeds',	'LS273JO', 2),
('22 Rein Road',		'Morley',	'Leeds',	'LS27OPQ', 3),
('14 Westerton Road',	'Morley',	'Leeds',	'LS279JP', 4),
('79 Dewsbury Road',	'Morley',	'Leeds',	'LS27Y0P', 5),
('53 Norway Close',		'Morley',	'Leeds',	'LS278GB', 6),
('36 Waterloo Road',	'Morley',	'Leeds',	'LS27D7G', 7),
('1 Mayfair Way',		'Morley',	'Leeds',	'LS276TV', 8),
('52 Magpie Line',		'Morley',	'Leeds',	'LS277BZ', 9),
('5 Baghill Road',		'Morley',	'Leeds',	'LS27TUP', 10),
('19 Maidens Way',		'Morley',	'Leeds',	'LS279IV', 11),
('12 Linfoot Drive',	'Morley',	'Leeds',	'LS270GO', 12),
('1 Riverside View',	'Morley',	'Leeds',	'LS276TT', 13),
('4 Runners Way',		'Morley',	'Leeds',	'LS276MR', 14),
('13 Natures Way',		'Morley',	'Leeds',	'LS276TC', 15),
('91 Conners Walk',		'Morley',	'Leeds',	'LS270NZ', 16),
('The Nook',			'Morley',	'Leeds',	'LS278QA', 17),
('1 Riverside View', 	'Morley',	'Leeds',	'LS276TT', 18),
('464 Walkers Road',	'Morley',	'Leeds',	'LS278YA', 19),
('62 Ridings Road', 	'Morley',	'Leeds',	'LS270DV', 20),
('474 Walkers Road',	'Morley',	'Leeds',	'LS279FX', 21),
('The Nook',			'Morley',	'Leeds',	'LS278QA', 22),
('32 Laymans Walk',		'Morley',	'Leeds',	'LS278AQ', 23),
('61 Harrop Avenue',	'Morley',	'Leeds',	'LS276DN', 24),
('12 Askey Avenue',		'Morley',	'Leeds',	'LS275YP', 25),
('28 Shire Road',		'Morley',	'Leeds',	'LS276AM', 26),
('1 The Gallops', 		'Morley',	'Leeds',	'LS273WB', 27),
('867 Britannia Road',	'Morley',	'Leeds',	'LS270XX', 28),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 29),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 30),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 31),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 32),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 33),
('84 Sycomore Grove',	'Morley',	'Leeds',	'LS274TB', 34),
('7 Chase avenue',		'Morley',	'Leeds',	'LS278QN', 35),
('7 Chase avenue',		'Morley',	'Leeds',	'LS278QN', 36),
('7 Chase avenue',		'Morley',	'Leeds',	'LS278QN', 37),
('7 Chase avenue',		'Morley',	'Leeds',	'LS278QN', 38),
('7 Chase avenue',		'Morley',	'Leeds',	'LS278QN', 39),
('18 Marchant Way',		'Morley',	'Leeds',	'LS272AL', 40),
('18 Marchant Way',		'Morley',	'Leeds',	'LS272AL', 41),
('18 Marchant Way',		'Morley',	'Leeds',	'LS272AL', 42),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 43),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 44),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 45),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 46),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 47),
('4 Cosmos Drive',		'Morley',	'Leeds',	'LS278UG', 48),
('42 Poplar Crescent',	'Morley',	'Leeds',	'LS27TUP', 49),
('12 Woodkirk Grove',	'Morley',	'Leeds',	'LS270GC', 50),
('17 Turnberry Gardens','Morley',	'Leeds',	'LS270SA', 51),
('29 Syke Avenue',		'Morley',	'Leeds',	'LS279SN', 52),
('62 St Marys Close',	'Morley',	'Leeds',	'LS279VT', 53),
('6 Meadows Way',		'Morley',	'Leeds',	'LS276FG', 54),
('65 Ryedale Way',		'Morley',	'Leeds',	'LS270CM', 55),
('8 Lonsdale Drive',	'Morley',	'Leeds',	'LS276JA', 56),
('17 Broadcroft Drive',	'Morley',	'Leeds',	'LS278DJ', 57),
('22 Constable Road',	'Morley',	'Leeds',	'LS276DH', 58),
('17 Balmoral Crescent', 'Morley',	'Leeds',	'LS273DP', 59)
;


INSERT INTO Customer_Contact (Customer_Details_ID, Email, Home_Phone, Mobile)
VALUES
(1, 'frankjob200@hotmail.co.uk', 01132501200,	07932980176),
(2, 'joshhoo@gmail.com', 01138675678,	07923789457),
(3, 'jellylake@gmail.com',	01137653478, 07956837541),
(4, 'huntingamy@hotmail.co.uk', 01136873456, 07528957913),
(5, 'lkilbride123@btinternet.com',	01137893654, 07194859275),
(6, 'peterparker@hotmail.co.uk', 01136745123,	07321432546),
(7, 'zachtech@gmail.com', 01133291084,	07108989675),
(8, 'lchampion20203@gmail.com', 01136765556, 07776789878),
(9, 'bwalters1999@hotmail.com', 01131234512, 07665577886),
(10, 'jessepinkmaninc@gmail.com', NULL, 07776565321),
(11, 'lospolloshermanos@btinternet.com', 01133243456, 07989898765),
(12, 'bettercaulsaul@yahoo.com', 01139896746, 07123454321),
(13, 'dea.hank.albuquerque@gov.com', 01135691049, NULL),
(14, 'jhyp@gmail.com', NULL, 07529878967),
(15, 'partygirl@yahoo.com',	NULL, 07123187678),
(16, 'toddyal@yahoo.com', NULL,	07500001325),
(17, 'tucoforever@btinternet.com', NULL, 07009890897),
(18, 'deawifeyjane@gov.com', 01135691049, 07110066845),
(19, 'bestlawyer4u@yahoo.com', NULL, 07500870089),
(20, 'bodyguardhuell@gmail.com', 01133008000, 07400578498),
(21, 'dea.steven.albuquerque@gov.com', 01136009000,	07811220979),
(22, 'marcomexicolove@gmail.com', NULL,	+447980487679),
(23, 'mr.creosote@yahoo.com', 01135897487, 	NULL),
(24, 'arthurnudge@hotmail.com', 01135909876, NULL),
(25, 'briancohen@hotmail.com', 01134562000,	NULL),
(26, 'nudeorganisthire@yahoo.com', 0113707698, NULL),
(27, 'mrpraline@btinternet.co.uk', 01133006000,	NULL),
(28, 'iamlumberjack@gmail.com',	01134089008, NULL),
(29, 'katefosterdesigns@hotmail.com', NULL,	07989895678),
(30, 'nfoster@gmail.com', NULL,	07366588670),
(31, 'granniefoster@hotmail.com', NULL,	07989895678),
(32, 'katefosterdesigns@hotmail.co.uk', NULL, 07366588670),
(33, 'theright@yahoo.co.uk', NULL, 07989895678),
(34, 'rightleft@btinternet.com', NULL, 07989895678),
(35, 'acarlsonhealth@gmail.com', 01135889000, 07989895678),
(36, 'acarlsonhealth@gmail.com', 01135889000, 07561094976),
(37, 'kinglionel@gmail.com', 01135889000, 07561094976),
(38, 'vimyo@btinternet.com', 01135889000,	07561094940),
(39, 'granniecarlson@hotmail.com', 01133900989,	NULL),
(40, 'momzclub@yahoo.com', 01135007000,	+447840989163),
(41, 'lifestar@yahoo.com', NULL, +447840989163),
(42, 'qetra2321@live.co.uk', NULL, +447840989163),
(43, 'jokeaside@live.co.uk', NULL, 07854466243),
(44, 'summerrockz@yahoo.com', 011376480091,	07800500300),
(45, 'bsmithy@yahoo.com', 011376480091,	07800500300),
(46, 'jerrystrong@yahoo.com', 011376480091,	07800500300),
(47, 'ogmorty@yahoo.com', 011376480091,	07800500300),
(48, 'lsmith@yahoo.com', 011376480091, 07800500300),
(49, 'justflying@gmail.com', NULL, 077117098437),
(50, 'palickylife@btinternet.co.uk', NULL, 07600935576),
(51, 'scroopnoop@live.co.uk', 01135089785,	NULL),
(52, 'tammyhonestly@gmail.com',	NULL, 07792760471),
(53, 'xenonok@gmail.com', NULL, 07799812654),
(54, 'kflippy@yahoo.com', 01136092760,	NULL),
(55, 'slimsom@btinternet.co.uk', 01134006540, 07222367654),
(56, 'vmaxlife@icloud.co.uk', 01134006991, 07762299974),
(57, 'krombopulos@live.co.uk', NULL, 07882544676),
(58, 'pshrimply@yahoo.com',	01133009800, NULL),
(59, 'pgueterman@gmail.com', 01134987601, 07989980178)
;

INSERT INTO Booking_Group (Group_ID, Customer_Details_ID)
VALUES
(1, 40),
(1, 41),
(1, 42),
(2, 35),
(2, 36),
(3, 13),
(3, 14),
(4, 29),
(4, 30),
(5, 43),
(5, 44),
(6, 45),
(6, 55),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11,11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21)
;

INSERT INTO Booking (Check_In_Date, Check_Out_Date, Room_Num, Booking_Group_ID, Total_Price, Discount)
VALUES
('2024-03-01', '2024-03-07', 1, 1, 390.00, NULL), 
('2024-03-06', '2024-03-08', 2, 2, 170.00, NULL), 
('2024-03-20', '2024-03-26', 3, 3, 750.00, NULL), 
('2024-03-21', '2024-03-22', 4, 4, 95.00, NULL), 
('2024-04-02', '2024-04-10', 5, 5, 840.00, NULL), 
('2024-04-01', '2024-04-07', 1, 6, 390.00, NULL), 
('2024-04-12', '2024-04-16', 11, 7, 340.00, NULL), 
('2024-04-14', '2024-04-18', 15, 8, 340.00, NULL), 
('2024-05-02', '2024-05-09', 27, 9, 735.00, NULL), 
('2024-05-05', '2024-05-10', 19, 10, 625.00, NULL), 
('2024-05-15', '2024-05-17', 1, 11, 130.00, NULL), 
('2024-05-17', '2024-05-20', 21, 12, 285.00, NULL),
('2024-05-21', '2024-05-26', 5, 13, 325.00, NULL), 
('2024-06-01', '2024-06-04', 7, 14, 195.00, NULL), 
('2024-06-02', '2024-06-10', 29, 15, 840.00, NULL), 
('2024-06-01', '2024-06-07', 1, 16, 390.00, NULL), 
('2024-06-02', '2024-06-04', 1, 17, 130.00, 10.00), 
('2024-06-09', '2024-06-12', 25, 18, 285.00, NULL), 
('2024-06-10', '2024-06-16', 7, 19, 390.00, NULL), 
('2024-06-11', '2024-06-18', 20, 20, 875.00, NULL), 
('2024-06-17', '2024-06-24', 30, 21, 735.00, NULL) 
;

INSERT INTO Payment (Booking_ID, Amount, Payment_Date, Payment_Method)
VALUES
(1, 390.00, '2024-01-12', 'visa debit'),
(2, 170.00, '2024-01-20', 'mastercard'),
(3, 750.00, '2024-01-30', 'visa debit'),
(4, 95.00, '2024-02-01', 'visa debit'),
(5, 840.00, '2024-02-12', 'mastercard'),
(6, 390.00, '2024-02-21', 'mastercard'),
(7, 340.00, '2024-02-28', 'mastercard'),
(8, 340.00, '2024-03-12', 'visa debit'),
(9, 735.00, '2024-03-14', 'visa debit'),
(10, 625.00, '2024-03-21', 'mastercard'),
(11, 130.00, '2024-04-02', 'mastercard'),
(12, 285.00, '2024-04-08', 'visa debit'),
(13, 325.00, '2024-04-12', 'visa debit'),
(14, 195.00, '2024-04-18', 'visa debit'),
(15, 840.00, '2024-04-29', 'mastercard'),
(16, 390.00, '2024-05-01', 'visa debit'),
(17, 120.00, '2024-05-06', 'mastercard'),
(18, 285.00, '2024-05-23', 'visa debit'),
(19, 390.00, '2024-05-24', 'mastercard'),
(20, 875.00, '2024-05-25', 'visa debit'),
(21, 735.00, '2024-05-25', 'visa debit')
;

-- 		# Auto increment Customer_Details_ID 
-- 		# Add Frank
-- 
-- 		# Auto increment Customer_Address_ID
-- 		# Add Franks address details 
-- 		# Use Franks Customer_Details_ID from stage 1
-- 
-- 		# Auto increment Customer_Contact_ID
-- 		# Add Franks contact details 
-- 		# Use Franks Customer_Details_ID from stage 1

-- 1. INSERT INTO Customer_Details (First_Name, Last_Name, DOB) VALUES ('Frank', 'Jobs', '1975-03-01')
-- 2. INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID) VALUES ('4 milwalk place',	'Morley','Leeds','LS270QY', 1)
-- 3. INSERT INTO Customer_Contact (Customer_Details_ID, Email, Home_Phone, Mobile) VALUES (1, 'frankjob200@hotmail.co.uk', 01132501200,	07932980176)


-- OR

-- 1. INSERT INTO Customer_Details (First_Name, Last_Name, DOB) VALUES ('Frank', 'Jobs', '1975-03-01')
-- 2. 
-- INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
-- SELECT  '4 milwalk place', 'Morley', 'Leeds', 'LS270QY' Customer_Details.Customer_Details_ID
-- FROM    Customer_Details
-- WHERE   Customer_Details.First_Name = 'Frank' 
-- AND
-- WHERE Customer_Details.Last_Name = 'Jobs';
-- 3. 
-- INSERT INTO Customer_Contact (Customer_Details_ID, Email, Home_Phone, Mobile)
-- SELECT  Customer_Details.Customer_Details_ID, 'frankjob200@hotmail.co.uk', 01132501200, 07932980176
-- FROM    Customer_Details
-- WHERE   Customer_Details.First_Name = 'Frank' 
-- AND
-- WHERE Customer_Details.Last_Name = 'Jobs';

-- Experimenting with Automating the process


-- INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
-- SELECT  '4 milwalk place', 'Morley', 'Leeds', 'LS270QY', Customer_Details.Customer_Details_ID
-- FROM    Customer_Details
-- WHERE   Customer_Details.Customer_Details_ID = 1;

-- USE The_Expo_Lounge

-- DECLARE @Counter INT, @MaxID INT, @FirstName = NVARCHR(100);
-- SET @Counter = min(Id) , @MaxId = max(Id)
-- FROM Customer_Details

-- WHILE(@Counter IS NOT NULL
-- 	AND @Counter <= MaxID)
-- BEGIN
-- 	SELECT @FirstName = First_Name
--     FROM Customer_Details WHERE Id = @Counter
--     
--     PRINT CONVERT(VARCHAR.@Counter) + '. first name is ' + @FirstName
--     SET @Counter = @Counter + 1
-- END

-- The below code would be the way to add individual rooms to the database if expansion happened and more rooms became available.

-- INSERT INTO Room (Type_ID, Status)
-- SELECT  Room_type.Type_ID, 'Available'
-- FROM    Room_type
-- WHERE   Room_type.Name = 'Standard_King';
