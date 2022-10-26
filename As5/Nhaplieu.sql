--3
insert into DanhBa (Phone)
values('987654321'),
('09873452'),
('09832323'),
('09434343');

select * from DanhBa;

insert into NguoiDung (Address,DOB)
values(N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1987-11-18');

select * from NguoiDung;

insert into DanhBaNguoiDung (Name,DanhBaId,NguoiDungId)
values(N'Nguyễn Văn An',1,1),
(N'Nguyễn Văn An',2,1),
(N'Nguyễn Văn An',3,1),
(N'Nguyễn Văn An',4,1);

select * from DanhBaNguoiDung;

--Them du lieu cua moi nguoi
insert into DanhBa (Phone)
values('09866666'),
('09899999'),
('09988888');

insert into NguoiDung(Address,DOB)
values(N'10 Nguyễn Tuân, Thanh Xuân, Hà Nội','1985-12-10');

insert into DanhBaNguoiDung(Name,DanhBaId,NguoiDungId)
values(N'Lê Ngọc Hân',5,2),(N'Lê Ngọc Hân',6,2),(N'Lê Ngọc Hân',7,2);

--4
--Liet ke danh sach nhung nguoi trong danh ba
select distinct Name from DanhBaNguoiDung;
--Liet ke danh sach so dien thoai co trong danh ba
select * from DanhBa;

--5
--Liet ke danh sach nguoi trong danh ba theo Alphabet
select distinct Name from DanhBaNguoiDung order by Name asc;
--Liet ke cac so dien thoai cua nguoi co ten la Nguyen Van An
select Phone from DanhBa where Id in
        (select DanhBaId from DanhBaNguoiDung where Name like N'Nguyễn Văn An');
--Liet ke nguoi co ngay sinh 12/12/09

--6
--Tim so luong sdt cua moi nguoi trong danh ba
select Name,count(DanhBaID) as SoLuongSoDT from DanhBaNguoiDung group by Name;
--Tim tong so nguoi trong danh ba sinh thang 12
select Name from DanhBaNguoiDung where NguoiDungId in
    (select Id from NguoiDung where DOB like '%12%');
--Hien thi thong tin ve nguoi, cua tung sdt
--Hien thi toan bo thong tin ve nguoi, cua so dien thoai 123456789

--7
--Thay doi truong ngay sinh la truoc ngay hien tai
alter table NguoiDung add check(DOB < getdate());
--Xac dinh cac truong khoa ngoai và truong khoa chinh

--Viet cau lenh de tem truong ngay bat dau lien lac
alter table NguoiDung add BatDauLienLac date;