create table NHACUNGCAP(
    MaNhaCC varchar(10) primary key,
    TenNhaCC nvarchar(255) not null unique,
    DiaChi nvarchar(255) not null,
    SoDT varchar(15) not null unique check(SoDT like '0%'),
    MaSoThue varchar(100) unique
);

create table LOAIDICHVU(
    MaLoaiDV varchar(10) primary key,
    TenLoaiDV nvarchar(255) not null
);

create table MUCPHI(
    MaMP varchar(10) primary key,
    DonGia decimal(12,4) not null check(DonGia>0),
    Mota ntext
);

create table DONGXE(
    DongXe varchar(100) primary key,
    HangXe varchar(100) not null,
    SoChoNgoi int not null
);

create table DANGKYCUNGCAP(
    MaDKCC varchar(10) primary key,
    MaNhaCC varchar(10) not null foreign key references NHACUNGCAP(MaNhaCC),
    MaLoaiDV varchar(10) not null foreign key references LOAIDICHVU(MaLoaiDV),
    DongXe varchar(100) not null foreign key references DONGXE(DongXe),
    MaMP varchar(10) not null foreign key references MUCPHI(MaMP),
    NgayBatDauCungCap date not null,
    NgayKetThucCungCap date not null,
    SoLuongXeDangKy int not null
);

drop table DANGKYCUNGCAP, DONGXE, MUCPHI,LOAIDICHVU, NHACUNGCAP;

