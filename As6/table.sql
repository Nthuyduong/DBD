create table Genres(
    Name Nvarchar(255) not null,
    Id int primary key identity(1,1)
);

Create table Publishers(
    Address nvarchar(255) not null,
    Name nvarchar(255) not null,
    Id int primary key identity(1,1)
);

create table Authors(
    Name nvarchar(255) not null,
    Id int primary key identity(1,1)
);

create table Books(
    NumberOfPublication int not null,
    Code varchar(10) primary key not null,
    Name nvarchar(255) not null unique,
    YearOfPublication int not null,
    Summary ntext not null,
    Price decimal(12,4) not null check(Price > 0),
    Quantity int not null check(Quantity >= 0),
    GenreId int not null foreign key references Genres(Id),
    PublisherId int not null foreign key references Publishers(Id),
);

create table BookAuthor(
    BookCode varchar(10) not null foreign key references Books(Code),
    AuthorId int not null foreign key references Authors(Id)
);

drop table BookAuthor,Books,Authors,Publishers,Genres;