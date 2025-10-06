CREATE TABLE Products (
    Product_Id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price FLOAT CONSTRAINT chk_price CHECK (Price > 0)
);

CREATE TABLE Customers (
    Customer_Id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel VARCHAR(15)
);

CREATE TABLE Orders (
    Customer_Id VARCHAR(20),
    Product_Id VARCHAR(20),
    Quantity INT,
    total_Price FLOAT,
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);

ALTER TABLE  Products ADD Category VARCHAR(20);
ALTER TABLE Orders ADD Order_Date DATE DEFAULT SYSDATE;