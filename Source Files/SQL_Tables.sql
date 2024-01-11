-- Create Customer table
CREATE TABLE Customer (
  customer_id int identity(1,1) primary key,
  full_name varchar(255),
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

drop table Customer

select* from Service

-- Create Feedback table
CREATE TABLE Feedback (
  feedback_id INT identity(1,1) PRIMARY KEY,
  username varchar(255),
  feedback_description VARCHAR(255)
);

-- Create Services table
CREATE TABLE Service (
  customer_id INT PRIMARY KEY,
  gym INT,
  spa INT,
  laundry INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


select * from Service

-- Create Inventory table
CREATE TABLE Inventory (
  item_name VARCHAR(255) PRIMARY KEY,
  quantity INT
);

-- Create Room table
CREATE TABLE Room (
  room_no INT PRIMARY KEY,
  Room_Type varchar(255),
  Persons INT,
  No_of_days INT,
  Price INT,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


-- Create Billing table
CREATE TABLE Billing (
  customer_id INT PRIMARY KEY,
  bill DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


create table Book(
	customer_id INT,
	room_no INT
);

INSERT INTO Customer (full_name, username, email, password)
VALUES ('John Doe','JohnDoe', 'johndoe@example.com', 'password123');


INSERT INTO Customer (full_name, username, email, password)
VALUES ('Jane Smith', 'JaneSmith', 'janesmith@example.com', 'pass123');

select* from Customer


INSERT INTO Feedback (username, feedback_description)
VALUES ('Waqas Shafiq', 'Great service!');

INSERT INTO Feedback (username, feedback_description)
VALUES ('Baji Shagufta', 'Could improve cleanliness.');



INSERT INTO Service (customer_id, gym, spa, laundry)
VALUES (1, 1, 0, 1);

INSERT INTO Service (customer_id, gym, spa, laundry)
VALUES (2, 1, 1, 1);



INSERT INTO Room
VALUES (101, 'Suite', 2, 2, 16000, NULL);

INSERT INTO Room
VALUES (245, 'Deluxe', 1, 1, 15000, NULL);

INSERT INTO Room
VALUES (331, 'Twin', 2, 2, 13000, NULL);

INSERT INTO Room
VALUES (145, 'Deluxe King', 1, 1, 12000, NULL);

INSERT INTO Room
VALUES (333, 'Suite', 1, 1, 11000, NULL);



INSERT INTO Billing (customer_id, bill)
VALUES (1, 250.00);

INSERT INTO Billing (customer_id, bill)
VALUES (2, 350.00);



INSERT INTO Inventory (item_name, quantity)
VALUES ('Lays', 100);

INSERT INTO Inventory (item_name, quantity)
VALUES ('Karhai', 50);

INSERT INTO Inventory (item_name, quantity)
VALUES ('Biryani', 30);

INSERT INTO Inventory (item_name, quantity)
VALUES ('Fries', 80);

INSERT INTO Inventory (item_name, quantity)
VALUES ('Burger', 60);

INSERT INTO Inventory (item_name, quantity)
VALUES ('Juice', 120);


select* from Feedback;

select* from Customer;

select* from Room;

delete from Room
where room_no = 101;

select* from Inventory


