
CREATE TABLE Users(
	User_id int not null,
	Name varchar(50) not null,
	UserName varchar(20) not null,
	Email varchar(50),
	Password varchar(50) not null,
	PRIMARY KEY (User_id)
	)

CREATE TABLE Restaurants(
	Restaurant_id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
	)

CREATE TABLE Dishes(
	Dish_id INT NOT NULL,
	Name VARCHAR(100),
	Description VARCHAR(200),
	PRIMARY KEY(Dish_id)
	)

CREATE TABLE Menus(
	Menu_id INT NOT NULL,
	Restaurant_id INT NOT NULL,
	Dish_id Int NOT NULL,
	Price INT NOT NULL,
	PRIMARY KEY (Menu_id),
	FOREIGN KEY (Restaurant_id) REFERENCES Restaurants(Restaurant_id),
	FOREIGN KEY (Dish_id) REFERENCES Dishes(Dish_id)
	)

CREATE TABLE Orders(
	Order_id INT NOT NULL,
	User_id INT NOT NULL,
	Restaurant_id INT NOT NULL,
	Total_amount INT,
	Customer_address_id INT NOT NULL,
	PRIMARY KEY (Order_id),
	FOREIGN KEY (User_id) REFERENCES Users(User_id),
	FOREIGN KEY (Restaurant_id) REFERENCES Restaurants(Restaurant_id)
	)


CREATE TABLE Order_Items(
	Order_item_id INT NOT NULL,
	Order_id INT NOT NULL,
	Menu_id INT,
	Quantity INT,
	PRIMARY KEY (Order_item_id),
	FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
	FOREIGN KEY (Menu_id) REFERENCES Menus(Menu_id)
	)


CREATE TABLE Ratings(
	Rating_id INT NOT NULL,
	Order_id INT,
	Rating INT NOT NULL,
	Feedback varchar(100),
	PRIMARY KEY(Rating_id),
	FOREIGN KEY(Order_id) REFERENCES Orders(Order_id)
	)

CREATE TABLE Address(
	Address_id INT NOT NULL,
	House_number varchar(100),
	Address_line1 varchar(100),
	Address_line2 varchar(100),
	City varchar(50),
	Region varchar(50),
	Postal_code INT NOT NULL,
	Country varchar(20),
	PRIMARY KEY(Address_id)
	)

CREATE TABLE Customer_address(
	Id INT PRIMARY KEY,
	User_id INT NOT NULL,
	Address_id INT NOT NULL,
	FOREIGN KEY(User_id) REFERENCES Users(User_id),
	FOREIGN KEY(Address_id) REFERENCES Address(Address_id)
	)

