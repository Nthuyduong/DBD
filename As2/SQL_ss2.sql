Create table Clients(
    Name nvarchar(50) not null,
    Address varchar(100) not null,
    Phone varchar(10) unique,
    ID int primary key identity(1,1)
);

Create table Orders(
    Code int not null unique,
    Orderdate date not null check(Orderdate <= getdate()),
    ClientsID int not null foreign key references Clients(ID)
);

Create table Equipments(
    Price int not null,
    Description text,
    Name varchar(255) not null,
    Quantity int not null,
    Unit varchar(10) not null,
    ID int primary key identity(1,1)
);

Create table OrdersEquipments(
    OrderCode int not null foreign key references Orders(Code),
    EquipmentID int not null foreign key references Equipments(ID)
);
