CREATE DATABASE The_Expo_Lounge;

USE The_Expo_Lounge;

CREATE TABLE Customer_Details (
	Customer_Details_ID INT NOT NULL AUTO_INCREMENT,
	First_Name VARCHAR (30) NOT NULL,
	Last_Name VARCHAR (30) NOT NULL,
	DOB DATE NOT NULL,
    CONSTRAINT PK_Customer_Details_ID PRIMARY KEY (Customer_Details_ID)
);

CREATE TABLE Customer_Address (
	Customer_Address_ID INT NOT NULL AUTO_INCREMENT,
	Address_Line_1 VARCHAR (60) NOT NULL,
	County VARCHAR (20) NOT NULL,
	City VARCHAR (20) NOT NULL,
	Postcode VARCHAR (20) NOT NULL,
    Customer_Details_ID INT NOT NULL,
    CONSTRAINT PK_CustomerAddress PRIMARY KEY (Customer_Address_ID),
	CONSTRAINT FK_CustomerDetails_CustomerAddress FOREIGN KEY (Customer_Details_ID) REFERENCES Customer_Details (Customer_Details_ID)
    );

CREATE TABLE Customer_Contact (
	Customer_Contact_ID INT NOT NULL AUTO_INCREMENT,
	Customer_Details_ID INT NOT NULL,
	Email VARCHAR (60) NOT NULL,
	Home_Phone VARCHAR (20) NULL,
	Mobile VARCHAR (20) NULL,
    CONSTRAINT PK_Customer_Contact PRIMARY KEY (Customer_Contact_ID),
	CONSTRAINT FK_CustomerDetails_CustomerContact FOREIGN KEY (Customer_Details_ID) REFERENCES Customer_Details (Customer_Details_ID)
);

CREATE TABLE Room_Type (
	Type_ID INT NOT NULL UNIQUE,
	Name VARCHAR(50) NOT NULL,
	Description VARCHAR(300) NOT NULL,
	Price_Per_Night DECIMAL(10,2) NOT NULL,
	Capacity INT NOT NULL
);

CREATE TABLE Booking_Group (
	Booking_Group_ID INT NOT NULL AUTO_INCREMENT,
	Group_ID INT NOT NULL,
	Customer_Details_ID INT NOT NULL,
CONSTRAINT PK_Booking_Group_ID PRIMARY KEY (Booking_Group_ID)
);

CREATE TABLE Room (
	Room_Num INT NOT NULL AUTO_INCREMENT,
	Type_ID INT NOT NULL,
	Status VARCHAR (20) NOT NULL,	
CONSTRAINT PK_Room_Num PRIMARY KEY (Room_Num),
CONSTRAINT FK_TypeID_Room FOREIGN KEY (Type_ID) REFERENCES Room_Type (Type_ID)
);

CREATE TABLE Booking (
	Booking_ID INT NOT NULL AUTO_INCREMENT,
	Check_In_Date DATE NOT NULL,
	Check_Out_Date DATE NOT NULL,
	Room_Num INT NOT NULL,
	Booking_Group_ID INT NOT NULL,
	Total_Price DECIMAL(10,2) NOT NULL, 
    Discount DECIMAL(10,2) NULL,
CONSTRAINT PK_Booking_ID PRIMARY KEY (Booking_ID),
CONSTRAINT FK_RoomNum_Booking FOREIGN KEY (Room_Num) REFERENCES Room (Room_Num),
CONSTRAINT FK_BookingGroup_Booking FOREIGN KEY (Booking_Group_ID) REFERENCES Booking_Group (Booking_Group_ID)
);

CREATE TABLE Payment (
	Payment_ID INT NOT NULL AUTO_INCREMENT,
	Booking_ID INT NOT NULL,
	Amount DECIMAL(10,2) NOT NULL,
	Payment_Date DATE NOT NULL,
	Payment_Method VARCHAR(20) NOT NULL,
CONSTRAINT PK_Payment_ID PRIMARY KEY (Payment_ID),
CONSTRAINT FK_BookingID_Payment FOREIGN KEY (Booking_ID) REFERENCES Booking (Booking_ID)
);
