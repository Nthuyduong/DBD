create table Categories(
    CateID char(6) primary key,
    CateName nvarchar(100) not null,
    Description nvarchar(200)
);

Create table Parts(
    PartID int primary key identity(1,1),
    PartName nvarchar(100) not null,
    Description nvarchar(100),
    Price decimal(12,4) not null check(Price >=0) default 0,
    Quantity int check(Quantity>=0) default 0,
    Warranty int default 1,
    Photo nvarchar(200) default 'photo/nophoto.png',
    CateID char(6) foreign key references Categories(CateID)
);

drop table Parts,Categories;