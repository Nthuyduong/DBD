insert into Genres (Name)
values(N'Khoa học xã hội');

Select * from Genres;

insert into Publishers (Address,Name)
values(N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội',N'Tri Thức');

Select * from Publishers;

insert into Authors (Name)
values(N'Eran Katz');

Select * from Authors;

insert into Books (NumberOfPublication,Code,Name,YearOfPublication,Summary,Price,Quantity,GenreId,PublisherId)
values(1,'B001',N'Trí tuệ Do Thái','2010',
N'Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ những bí ẩn về sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính văn hóa.'
,79000,100,1,1);

Select * from Books;

insert into BookAuthor(BookCode,AuthorId)
values('B001',1);

select * from BookAuthor;

--insert them 8 quyen sach
insert into Authors(Name)
values(N'Blair T. Spalding'),(N'Stephen R. Covey'),(N'Dale Carnegie'),(N'Margaret Mitchell'),(N'Trần Văn Thắng'),(N'Dan Brown');

insert into Genres(Name)
values(N'Phiêu lưu, bí ẩn'),(N'Tiểu thuyết');

insert into Publishers(Address,Name)
values(N'18 Nguyễn Trường Tộ - Ba Đình - Hà Nội',N'Nhà xuất bản văn học');

insert into Books (NumberOfPublication,Code,Name,YearOfPublication,Summary,Price,Quantity,GenreId,PublisherId)
values(1,'B002',N'Hành trình về Phương Đông','2009',
N'kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu'
,80000,20,3,1),
(1,'B003',N'Tốc độ của niềm tin','2004',
N'Là một cuốn sách khai phá và làm thay đổi nhận thức, Tốc độ của Niềm tin thách thức giả định lâu nay của chúng ta cho rằng niềm tin chỉ là một đức hạnh xã hội mềm yếu, dễ vỡ và thay vào đó chứng minh rằng niềm tin là một động lực kinh tế, có sức mạnh vật chất – một kỹ năng có thể học hỏi và đo lường được qua đó giúp các công ty làm ra nhiều lợi nhuận hơn, con người dễ thăng tiến hơn và các mối quan hệ trở nên gắn bó hơn.'
,90000,50,3,2),
(1,'B004',N'Đắc nhân tâm,','2008',
N'Đắc nghĩa là được, Nhân nghĩa là người, Tâm nghĩa là tim, hiểu một cách đơn giản thì “đắc nhân tâm" nghĩa là thu phục lòng người' 
,110000,100,3,1),
(1,'B005',N'Cuốn theo chiều gió','1936',
N'Là một cuốn tiểu thuyết tình cảm của Margaret Mitchell, người đã giành giải Pulitzer với tác phẩm này năm 1937. Câu chuyện được đặt bối cảnh tại Georgia và Atlanta, miền Nam Hoa Kỳ trong suốt thời kì nội chiến và thời tái thiết. Tác phẩm xoay quanh Scarlett O Hara, một cô gái miền Nam đầy sức mạnh, phải tìm mọi cách để sống sót qua chiến tranh và vượt lên cuộc sống khó khăn trong thời hậu chiến.'
,120000,70,3,1),
(1,'B006',N'Tin Học Cho Người Mới Bắt Đầu','2000',
N'Cung cấp đầy đủ các kiến thức và kỹ năng sử dụng tin học văn phòng cơ bản của Microsofft Office như Word, Excel, Powerpoint'
,90000,60,2,2),
(1,'B007',N'Điểm dối lừa','2010',
N'là một tiểu thuyết khoa học giả tưởng do nhà văn Mỹ Dan Brown viết. Nội dung chính của tác phẩm xoay quanh những mưu đồ chính trị liên quan đến cuộc tranh cử chức tổng thống Hoa Kỳ sau sự kiện một thiên thạch rơi xuống vùng Nam Cực.'
,700000,20,2,2),
(1,'B008',N' Thiên Thần và ác quỷ','2006',
N'Tiểu thuyết Thiên thần và ác quỷ sự kết hợp giữa truyện trinh thám, các tình huống giải mã bất ngờ và sự lôi cuốn trong vấn đề tôn giáo - đặc biệt là về Công giáo Rôma và Hội kín Illuminati.'
,150000,20,3,2),
(1,'B009',N'Bí mật của trí nhớ siêu phàm','2005',
N'Cuốn sách Kinh điển về Tư duy, Kỹ năng mà bất cứ ai cũng nên đọc.'
,100000,200,3,1);

insert into BookAuthor(BookCode,AuthorId)
values('B002',2),('B003',3),('B004',4),('B005',5),('B006',6),('B007',7),('B008',7),('B009',1);

--4 liet ke 10 cuon sach co gia ban cao nhat

--5 Tim nhung cuon sach co tieu de chua tu 'tin học'

--6 Liet ke nhung cuon sach bat dau bang chu T theo thu tu giam dan ve gia

--7 Liet ke sach cua nha suat ban tri thuc

--8 Lay thong tin chi tiet ve nha xuat ban cuon sach 'Tri tue Do Thai'

--9 Hien thi thong tin sau ve nhung cuon sach: Ma sach, Ten sach, Nam xuat ban, Nha xuat ban, Loai sach

--10 Tim cuon sach co gia ban cao nhat