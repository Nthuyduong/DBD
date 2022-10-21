
insert into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
values('NCC001', N'Cty TNHH Toàn Pháp', N'Hai Chau','05113999888', '568941'),
('NCC002', N'Cty Cổ phần Đông Du', N'Lien Chieu','05113999889', '456789'),
('NCC003', N'Ông Nguyễn Văn A', N'Lien Chieu','05113999890','321456'),
('NCC004', N'Cty Cổ phần Toàn Cầu Xanh', N'Hai Chau','05113658945','513364'),
('NCC005', N'Cty TNHH AMA', N'Thanh Khe','05113875466','546546'),
('NCC006', N'Bà Trần Thị Bích Vân', N'Lien Chieu','05113587469','524545'),
('NCC007', N'Cty TNHH Phan Thành', N'Thanh Khe','05113987456','113021'),
('NCC008', N'Ông Phan Đình Nam', N'Hoa Thuan','05113532456','121230'),
('NCC009', N'Tập đoàn Đông Nam Á', N'Lien Chieu','05113987121','533654'),
('NCC010', N'Cty Cổ phần Rạng Đông', N'Lien Chieu','05113569654','187864');

select * from NHACUNGCAP;

insert into LOAIDICHVU (MaLoaiDV, TenLoaiDV)
values('DV01', N'Dịch vụ xe taxi'),
('DV02', N'dịch vụ xe bus công cộng theo tuyến cố định'),
('DV03', N'Dịch vụ xe cho thuê theo hợp đồng');

select * from LOAIDICHVU;

insert into MUCPHI (MaMP,DonGia, MoTa)
values('MP01',10.000, N'Áp dụng từ 1/2015'),
('MP02',15.000, N'Áp dụng từ 2/2015'),
('MP03',20.000, N'Áp dụng từ 1/2010'),
('MP04',25.000, N'Áp dụng từ 2/2011');

select * from MUCPHI;

insert into DONGXE (DongXe,HangXe,SoChoNgoi)
values('Hiace', 'Toyota',16),
('Vios', 'Toyota',5),
('Escape', 'Ford',5),
('Cerato', 'Kia',7),
('Forte', 'Kia',5),
('Starex', 'Hyundai',7),
('Grand-i10', 'Hyundai',7);

select * from DONGXE;

insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMp,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK001','NCC001','DV01','Hiace','MP01','2015-11-20','2016-11-20',4),
('DK002','NCC002','DV02','Vios','MP02','2015-11-20','2017-11-20',3),
('DK003','NCC003','DV03','Escape','MP03','2017-11-20','2018-11-20',5),
('DK004','NCC005','DV01','Cerato','MP04','2015-11-20','2019-11-20',7),
('DK005','NCC002','DV02','Forte','MP03','2019-11-20','2020-11-20',1),
('DK006','NCC004','DV03','Starex','MP04','2016-11-10','2021-11-20',2),
('DK007','NCC005','DV01','Cerato','MP03','2015-11-30','2016-01-25',8),
('DK008','NCC006','DV01','Vios','MP02','2016-02-28','2016-08-15',9),
('DK009','NCC005','DV03','Grand-i10','MP02','2016-04-27','2017-04-30',10),
('DK010','NCC006','DV01','Forte','MP02','2015-11-21','2016-02-22',4),
('DK011','NCC007','DV01','Forte','MP01','2016-12-25','2017-02-20',5),
('DK012','NCC007','DV03','Cerato','MP01','2016-04-14','2017-11-20',6),
('DK013','NCC003','DV02','Cerato','MP01','2015-12-21','2016-12-21',8),
('DK014','NCC008','DV02','Cerato','MP01','2016-05-20','2019-11-20',1),
('DK015','NCC003','DV01','Hiace','MP02','2018-04-24','2016-12-21',6),
('DK016','NCC001','DV03','Grand-i10','MP02','2018-06-22','2019-09-30',8),
('DK017','NCC002','DV03','Cerato','MP03','2016-09-30','2019-09-30',4),
('DK018','NCC008','DV03','Escape','MP04','2017-12-13','2018-09-30',2),
('DK019','NCC003','DV03','Escape','MP03','2016-01-24','2016-12-30',8),
('DK020','NCC002','DV03','Cerato','MP04','2016-05-03','2017-10-21',7),
('DK021','NCC006','DV01','Forte','MP02','2015-01-30','2016-10-21',9),
('DK022','NCC002','DV02','Cerato','MP04','2016-11-25','2017-12-30',6),
('DK023','NCC002','DV01','Forte','MP03','2017-11-30','2018-05-20',5),
('DK024','NCC003','DV03','Forte','MP04','2017-12-23','2019-11-30',8),
('DK025','NCC003','DV03','Hiace','MP02','2016-08-24','2017-10-25',1);

select * from DANGKYCUNGCAP;

--TRUY VAN
--Cau3
select DongXe from DONGXE where SoChoNgoi > 5;
--4 Liet ke thong tin nha cung cap da tung dang ky cung cap nhung dong xe
--Thuoc hang xe 'Toyota' vs muc phi co don gia la 15k/km hoac 'Kia' voi muc phi 20k/km
select * from NHACUNGCAP where MaNhaCC in
    (select MaNhaCC from DANGKYCUNGCAP where DongXe
    (select Dongxe from DONGXE where HangXe like N'Toyota');

--5 Liet ke thong tin toan bo nha cung cap duoc sap xep tang dan theo ten ncc
--va giam dan theo ma so thue
select * from NHACUNGCAP order by TenNhaCC desc, MaSoThue desc;

--6  Dem so lan dang ky cung cap phuong tien tuong ung cho tung nha cung cap
--voi yeu cau chi dem cho nhung nha cung cap thuc hien dang ky cung cap co ngay bat dau
--cung cap la '20/11/2015'
select count(MaNhaCC) as solandangky from DANGKYCUNGCAP where NgayBatDauCungCap = '2022-11-20';

--7 Liet ke ten toan bo cac hang xe co trong co so du lieu voi yeu cau
--moi hang xe chi duoc liet ke mot lan
select distinct HangXe from DONGXE;

--8

--9 Liet ke nha cung cap da tung dang ky cung cap phuong tien thuoc dong xe 'Hiace' or 'Cerato'
select * from NHACUNGCAP where MaNhaCC in
    (select MaNhaCC from DANGKYCUNGCAP where DongXe like N'Hiace');

