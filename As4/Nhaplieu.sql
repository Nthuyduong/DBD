insert into firm (Code,Name,Address,Tel)
values(123, 'Asus', 'USA','983232'),
(134, 'Dell', 'Uk','789679'),
(110, 'HP', 'CHINA','189676');

select * from firm;

insert into product (Name, Description, Unit, Price,Quantity,FirmCode)
values(N'Máy Tính T450', N'Máy nhập cũ',N'Chiếc',1000,10,110),
(N'Điện Thoại Nokia5670', N'Điện thoại đang hot',N'Chiếc',200,200,110),
(N'Máy In Samsung 450', N'Máy in đang loại bình',N'Chiếc',100,10,110),
(N'Máy Tính T450', N'Máy nhập mới',N'Chiếc',200,10,123),
(N'Điện Thoại Dell42', N'Điện thoại đang hot',N'Chiếc',600,200,123),
(N'Máy In D20', N'Máy in nguyên tem',N'Chiếc',400,10,123),
(N'Máy Tính Bảng HP', N'Máy nhập mới',N'Chiếc',400,10,134),
(N'Điện Thoại HP20', N'Hàng bestseller',N'Chiếc',1000,200,134),
(N'Máy In HP', N'Hàng bán chạy',N'Chiếc',200,10,134);

select * from product;

--Hien thi tat ca cac hang san xuat
select Name from firm;
--Hien thi tat ca cac san pham
select Name from product;