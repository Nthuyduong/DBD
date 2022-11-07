insert into Categories (CateID, CateName, Description)
values('N01',N'RAM', N'Random Access Memory'),
    ('N02',N'CPU', N'Central Processing Unit'),
    ('N03',N'HDD', N'A hard disk drive');

Select * from Categories;

insert into Parts (PartName, Description, Price, Quantity, Warranty, CateID)
values(N'Control unit', N'A component of a computer central processing unit', 100, 1, 1, 'N02'),
    (N'Arithmetic logic unit', N'A combinational digital circuit', 200, 3, 1, 'N02'),
    (N'Disk platter,', N'The circular disk on which magnetic data is stored in a hard disk drive', 300, 4, 1, 'N03'),
    (N'Boards', N'The computer component that executes programs', 400, 1, 1, 'N01');

select * from Parts;

--4.List all parts in the store with price > 100$.
select * from Parts where Price > 100;
--5.List all parts of the category ‘CPU’.
select * from Parts where CateID in
    (select CateID from Categories where CateName like N'CPU');
--6.Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) from table Parts and Categories.
