insert into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
values('NCC001', N'Cty TNHH Toàn Pháp', N'Hai Chau','05113999888', '568941'),
('NCC002', N'Cty Cổ phần Đông Du', N'Lien Chieu','05113999889', '456789'),
('NCC003', N'Ông Nguyễn Văn A', N'Lien Chieu','05113999890','456789'),
('NCC004', N'Cty Cổ phần Toàn Cầu Xanh', N'Hai Chau','05113658945','513364'),
('NCC005', N'Cty TNHH AMA', N'Thanh Khe','05113875466','456789'),
('NCC006', N'Bà Trần Thị Bích Vân', N'Lien Chieu','05113587469','456789'),
('NCC007', N'Cty TNHH Phan Thành', N'Thanh Khe','05113987456','456789'),
('NCC008', N'Ông Phan Đình Nam', N'Hoa Thuan','05113532456','456789'),
('NCC009', N'Tập đoàn Đông Nam Á', N'Lien Chieu','05113987121','456789'),
('NCC010', N'Cty Cổ phần Rạng Đông', N'Lien Chieu','05113569654','456789');

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
('Carato', 'Kia',7),
('Forte', 'Kia',5),
('Starex', 'Hyundai',7),
('Grand-i10', 'hyundai',7);

select * from DONGXE;

insert into DANGKYCUNGCAP (MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK001','NCC001','DV01','Hiace'),
('DK002','NCC002','DV02','Vios'),
('DK003','NCC003','DV03','Escape'),
('DK004','NCC005','DV01','Cerato'),
('DK005','NCC002','DV02','Forte'),
('DK006','NCC004','DV03','Starex'),
('DK007','NCC005','DV01','Cerato'),
('DK008','NCC006','DV01','Vios'),
('DK009','NCC005','DV03','Grand-i10'),
('DK010','NCC006','DV01','Forte'),
('DK011','NCC007','DV01','Forte'),
('DK012','NCC007','DV03','Cerato'),
('DK013','NCC003','DV02','Cerato'),
('DK014','NCC008','DV02','Cerato'),
('DK015','NCC003','DV01','Hiace'),
('DK016','NCC001','DV03','Grand-i10'),
('DK017','NCC002','DV03','Cerato'),
('DK018','NCC008','DV03','Escape'),
('DK019','NCC003','DV03','Escape'),
('DK020','NCC002','DV03','Cerato'),
('DK021','NCC006','DV01','Forte'),
('DK022','NCC002','DV02','Cerato'),
('DK023','NCC002','DV01','Forte'),
('DK024','NCC003','DV03','Forte'),
('DK025','NCC003','DV03','Hiace');