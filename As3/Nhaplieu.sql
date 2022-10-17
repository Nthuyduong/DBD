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