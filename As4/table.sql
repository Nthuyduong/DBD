create table firm(
    Code int primary key,
    Name varchar(255) not null,
    Address varchar(255) not null,
    Tel varchar(15) not null unique
);

create table product(
    Id int primary key identity(1,1),
    Name nvarchar(255) not null,
    Description ntext not null,
    Unit nvarchar(100) not null,
    Price decimal(12,4) not null check(Price >0),
    Quantity int not null check(Quantity > 0),
    FirmCode int not null foreign key references firm(Code)
);

drop table product,firm;