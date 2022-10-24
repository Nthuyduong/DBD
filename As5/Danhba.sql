--2
create table DanhBa(
    Id int primary key identity(1,1),
    Phone varchar(255) not null unique
);
create table NguoiDung(
    Id int primary key identity(1,1),
    Address nvarchar(255) not null,
    DOB date not null
);
create table DanhBaNguoiDung(
    Name nvarchar(100),
    DanhBaId int not null foreign key references DanhBa(Id),
    NguoiDungId int not null foreign key references NguoiDung(Id)
);

drop table DanhBaNguoiDung,NguoiDung,DanhBa;