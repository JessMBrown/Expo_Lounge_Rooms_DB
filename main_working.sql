-- # Denotes a story specific comment
-- Denotes a standard comment

-- # Story 

-- # Walter White would like to book himself and his family 4 people in total into the family room.

-- # First is to check availability for walters given dates and specific room type .... 
-- stored function to run to check room and date availability

-- #### Trying something simple ####
-- Check for any rooms with status of 'Available' on the Room table AND has a check-in date as on the date or after 1st March 2024
-- when the room capacity is 4, nothing is linked on the join so search has to be very specific
-- SELECT r.status AS Status, b.Check_In_Date AS Date_Available, rt.Capacity AS Room_Capacity
-- FROM The_Expo_Lounge.Room r
-- CROSS JOIN The_Expo_Lounge.Booking AS b, The_Expo_Lounge.Room_Type rt
-- WHERE r.status = 'Available' AND b.Check_In_Date = '2024-03-01' AND
	-- (SELECT rt.Capacity = 4);
    
-- Check for rooms with a capacity of 4 or more on the room_type table, then joining onto the rooms table using the type_id check 
-- if any room with the same type_id is also 'Available' and then check the booking table for any rooms that will have a booked out
-- entry of on or after the desired date to make sure it is available using the room numbers returned from the Inner Join
SELECT 
    r.Room_Num AS Room_Number,
    r.status AS Status,
    rt.Name AS Room_Type,
    rt.Description AS Room_Description,
    rt.Capacity AS Room_Capacity
FROM
    The_Expo_Lounge.Room r
        INNER JOIN
    The_Expo_Lounge.Room_Type rt ON r.Type_ID = rt.Type_ID
        LEFT JOIN
    The_Expo_Lounge.Booking b ON r.Room_Num = b.Room_Num
WHERE
    rt.Capacity >= 4
        AND r.status = 'Available'
        AND b.Check_Out_Date >= '2024-05-24'
;
 
 -- # lets calculate the cost, take payment and add this to payment table with total cost and payment method
SELECT Price_Per_Night * 2 AS total_price
FROM The_Expo_Lounge.Room_Type rt
WHERE rt.Capacity = 4
ORDER BY Type_ID
;

-- # add walter white and the group members information to the customer details
INSERT INTO Customer_Details (First_Name, Last_Name, DOB)
VALUES
('Walter', 'White', '1975-03-01'),
('Skyler', 'White', '1979-08-24'),
('Walter_jr', 'White', '2010-06-30'),
('Holly', 'White', '2023-05-10')
;

-- # once availability confirmed lets add this groups details into the customer databases

INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
SELECT '17 westleigh drive',	'Morley',	'Leeds',	'LS276WP', cd.Customer_Details_ID
FROM    The_Expo_Lounge.Customer_Details cd
WHERE   cd.First_Name = 'Walter' 
AND		cd.Last_Name = 'White'
AND 	cd.DOB = '1975-03-01'
ORDER BY cd.Customer_Details_ID
;

INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
SELECT  '17 westleigh drive',	'Morley',	'Leeds',	'LS276WP', cd.Customer_Details_ID
FROM    The_Expo_Lounge.Customer_Details cd
WHERE   cd.First_Name = 'Skyler' 
AND		cd.Last_Name = 'White'
AND 	cd.DOB = '1979-08-24'
ORDER BY cd.Customer_Details_ID
;

INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
SELECT  '17 westleigh drive',	'Morley',	'Leeds',	'LS276WP', cd.Customer_Details_ID
FROM    The_Expo_Lounge.Customer_Details cd
WHERE   cd.First_Name = 'Holly' 
AND		cd.Last_Name = 'White'
AND 	cd.DOB = '2023-05-10'
ORDER BY cd.Customer_Details_ID
;

INSERT INTO Customer_Address (Address_Line_1, County, City, Postcode, Customer_Details_ID)
SELECT '17 westleigh drive',	'Morley',	'Leeds',	'LS276WP', cd.Customer_Details_ID
FROM    The_Expo_Lounge.Customer_Details cd
WHERE   cd.First_Name = 'Walter_jr' 
AND		cd.Last_Name = 'White'
AND 	cd.DOB = '2010-06-30'
ORDER BY cd.Customer_Details_ID
;


INSERT INTO Customer_Contact (Customer_Details_ID, Email, Home_Phone, Mobile)
SELECT  cd.Customer_Details_ID, 'heisenberginc@gmail.com', 01136765845, 07990088976
FROM    The_Expo_Lounge.Customer_Details cd
WHERE   cd.First_Name = 'Walter'
AND		cd.Last_Name = 'White'
AND 	cd.DOB = '1975-03-01'
ORDER BY cd.Customer_Details_ID
;

-- # lets define this group number so the system knows these are one booking
-- # adding an extra Customer_Details_ID to prove multiple inserts for the same Group_ID are added correctly
INSERT INTO Booking_Group (Group_ID, Customer_Details_ID)
 VALUES
(22, 60),
(22, 61),
(22, 62),
(22, 63)
;

-- # add the booking to the system securing the room and room type on walters specific dates
INSERT INTO Booking (Check_In_Date, Check_Out_Date, Room_Num, Booking_Group_ID, Total_Price, Discount)
VALUES
('2024-03-01', '2024-03-07', 29, 22, 210.00, NULL)
;

INSERT INTO Payment (Booking_ID, Amount, Payment_Date, Payment_Method)
VALUES
(22, 210.00, '2024-01-12', 'visa debit')
;

-- # add on story

-- # a few hours later walter rings back up and has accidentally booked the wrong dates
-- SELECT 	b.Booking_ID,
-- 		b.Check_In_Date,
--         b.Check_Out_Date,
--         bg.Booking_Group_ID,
--         cd.Customer_Details_ID
-- FROM Booking AS b
-- 	INNER JOIN Booking_Group AS bg
-- 	ON b.Booking_Group_ID = bg.Booking_Group_ID
--     LEFT JOIN Customer_Details AS cd
--     ON bg.Customer_Details_ID = cd.Customer_Details_ID
-- WHERE   cd.First_Name = 'Walter'
-- AND		cd.Last_Name = 'White'
-- AND 	cd.DOB = '1975-03-01'
-- ORDER BY Booking_ID
-- ;

-- # so we check the correct dates and unfortunatley the room isnt available on those dates.

-- # another room option is available after running a query to see what else is available for a party of 4

-- # the room cost is different so an additional payment is taken so will need adding to the payment database linked to walter customer id and booking.

-- # the actual booking will need to be altered and original booking dropped in place of the changed booking.
DELIMITER //
CREATE TRIGGER update_room_to_available
AFTER DELETE
ON Booking
FOR EACH ROW
BEGIN 
		UPDATE Room 
		SET Status = 'Available' 
        WHERE Room_Num=old.Room_Num
	;
END //
DELIMITER ;
-- DROP TRIGGER update_room_to_available;
DELETE FROM Payment WHERE Booking_ID='18';
-- Check Room table for Room 25 - should be set as unavailable

DELETE FROM Booking WHERE Booking_ID='18';
-- Check Room table for Room 25 - should be set as available


-- I have made a trigger to check every 2 seconds when room available or unavailable changes from dates this will automatically put the original booking 
-- go from unavailable to available
-- SET GLOBAL event_scheduler = ON;
-- DELIMITER //
-- CREATE EVENT Check_unavailable
-- ON SCHEDULE EVERY 2 SECOND
-- STARTS NOW()
-- DO BEGIN
-- 	UPDATE Room
-- SET Status = 'Available';
-- END //
-- DELIMITER ;

-- # all members of the group will need to be moved to this new booking, the group id will remain the same

-- # The owner wants to know how many bookings we have had since opening a few months ago
DELIMITER //
CREATE PROCEDURE count_total_booking(total INT)
BEGIN
   SELECT COUNT(DISTINCT Booking_ID) 
   INTO @total 
   FROM Booking
   WHERE Check_In_Date BETWEEN '2024-01-01' AND current_date()
   ;
END // 
DELIMITER ;
-- DROP PROCEDURE count_total_booking;
CALL count_total_booking(@total);
SELECT @total;


-- # heres the stored procedure to show this total including revenue currently taken since opening
DELIMITER //
CREATE PROCEDURE Payment_Total_2024(total INT)
BEGIN
    SELECT SUM(Amount)
    INTO @total
	FROM Payment
	WHERE Payment_Date BETWEEN '2024-01-01' AND current_date()
    ;
END //
DELIMITER ;
-- DROP PROCEDURE Payment_Total_2024;
CALL Payment_Total_2024(@total);
SELECT @total;


SELECT SUM(Amount) AS TotalRevenue 
FROM Payment
WHERE Payment_Date BETWEEN '2024-01-01' AND current_date()
;


-- # the owner also wants to find out total revenue for last month
DELIMITER //
CREATE PROCEDURE Payment_Total_JAN24(total INT)
BEGIN
    SELECT SUM(Amount)
    INTO @total
	FROM Payment
	WHERE Payment_Date BETWEEN '2024-01-01' AND '2024-01-31'
    ;
END //
DELIMITER ;
-- DROP PROCEDURE Payment_Total_JAN24;
CALL Payment_Total_JAN24(@total);
SELECT @total;


SELECT SUM(Amount) AS TotalRevenue 
FROM Payment
WHERE Payment_Date BETWEEN '2024-01-01' AND '2024-01-31'
;

-- # the owner also wants to know the average revenue for last month
SELECT AVG(Amount) AS AveragePrice 
FROM Payment
WHERE Payment_Date BETWEEN '2024-01-01' AND '2024-01-31';
