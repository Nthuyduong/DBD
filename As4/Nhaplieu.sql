insert into firm (Code,Name,Address,Tel)
values(123, 'Asus', 'USA','983232');

select * from firm;

insert into product (Name, Description, Unit, Price,Quantity,FirmCode)
values(N'Máy Tính T450', N'Máy nhập cũ',N'Chiếc',1000,10,1),
(N'Điện Thoại Nokia5670', N'Điện thoại đang hot',N'Chiếc',200,200,1),
(N'Máy In Samsung 450', N'Máy in đang loại bình',N'Chiếc',100,10,1);

select * from product;
