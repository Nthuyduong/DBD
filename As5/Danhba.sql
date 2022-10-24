--2
create table DanhBa(
    Id int primary key identity(1,1),
    Phone varchar(15) not null unique check(Phone like '0%'),
    
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

--3
insert into DanhBa (Phone)
values('987654321'),
('09873452'),
('09832323'),
('09434343');

select * from DanhBa;

insert into NguoiDung (Address,DOB)
values(N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1987-11-18');

select * from NguoiDung;

--4
--Liet ke danh sach nhung nguoi trong danh ba
--Liet ke danh sach so dien thoai co trong danh ba
select Phone from DanhBa;

--5
--Liet ke danh sach nguoi trong danh ba theo Alphabet
--Liet ke cac so dien thoai cua nguoi co ten la Nguyen Van An
--Liet ke nguoi co ngay sinh 12/12/09

--6
--Tim so luong sdt cua moi nguoi trong danh ba
--Tim tong so nguoi trong danh ba sinh thang 12
--Hien thi thong tin ve nguoi, cua tung sdt
--Hien thi toan bo thong tin ve nguoi, cua so dien thoai 123456789

--