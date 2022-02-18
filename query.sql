create database ebookstore;

create table Publishers
(Publisher_ID nvarchar(50) Not Null Primary Key,
Publisher_Name nvarchar(50),
Publisher_Gender nvarchar(50),
Publisher_Age int,
Publisher_Contact nvarchar(50),
Publisher_Email nvarchar(50),
Publisher_Address nvarchar(50)
);

insert into Publishers values
('PUB001','Adrian Alex','Male',22,60127418524,'Adrianalex@gmail.com','Penang');

insert into Publishers values
('PUB002','Brianna Bella','Female',23,60139632581,'Briannabella@gmail.com','Sabah');

insert into Publishers values
('PUB003','Chirstina Brown','Female',43, 60144528982,'Christinabrown@gmail.com','Sarikei');

insert into Publishers values
('PUB004','Lonzo Ball','Male',23,60121997023,'Lonzoball@gamil.com','Bintulu');

insert into Publishers values
('PUB005','Sophie Sorilla','Female',30,60122344634,'sorilla@gmail.com','Puchong');

insert into Publishers values
('PUB006','Ponyo Punyu','Female',35,60133452645,'ponyo@gmail.com','Serdang');

insert into Publishers values
('PUB007','Hven Yang','Male',27,60123456597,'hven@gmail.com','Petaling');

insert into Publishers values
('PUB008','Li Carol','Female',40,60187865467,'carol@gmail.com','Cheras');

insert into Publishers values
('PUB009','Canyo Crayon','Male',20, 60197687358,'crayon@gmail.com','Ampang');

insert into Publishers values
('PUB010','Henry Will','Male',25,60123487634,'henry@gmail.com','Seraya');

create table Order_Publisher
(Order_Publisher_ID nvarchar(50) Not Null Primary Key,
Date date,
Total_Price int,
Order_Status nvarchar(50) 
);

insert into Order_Publisher values
('OP001','20 Apr 2021',4500,'Received');

insert into Order_Publisher values
('OP002','21 Apr 2021',88616,'Received');

insert into Order_Publisher values
('OP003','23 Apr 2021',12500,'Received');

insert into Order_Publisher values
('OP004','1 May 2021',50000,'Received');

insert into Order_Publisher values
('OP005','2 May 2021',34000,'Received');

insert into Order_Publisher values
('OP006','3 May 2021',2800,'Not Received');

alter table Order_Publisher
alter column Total_Price money;

create table Book
(Book_ID nvarchar(50)not null primary key,
Book_Title nvarchar(50),
Book_Author nvarchar(50),
Book_Language nvarchar(50),
Book_Genre nvarchar(50),
Book_Page int,
Book_Format nvarchar(50),
Date_Published nvarchar(50),
PublisherID nvarchar(50),
Book_Price money,
Quantity_Available int
);

insert into Book values
('BK001','Monkey King','Wu Cheng en','Chinese','Classics','240','Paperback','1/2/1975','PUB001','35','150');

insert into Book values
('BK002','Pinocchio','Collodi','English','Westerns','100','Hardcover','2/3/1982','PUB002','40','50');

insert into Book values
('BK003','The Weight of Our Sky','Hanna Alkaf','Malay','Fantasy','300','Paperback','4/1/1994','PUB003','60','100');

insert into Book values
('BK004','Game of Thrones','George RR Martin','English','Comtemporary','694','Hardcover','6/12/2001','PUB004','60','200');

insert into Book values
('BK005','Operating System','Colli Canel','English','Educational','300','Paperbock','3/6/2015','PUB005','60','50');

insert into Book values
('BK006','Windows Generation','Jane Spirat','English','Educational','400','Paperback','2/3/2018','PUB006','110','500');

insert into Book values
('BK007','Yayas Canon','Tang Woo Jing','Chinese','Horror','299','Paperback','5/23/2019','PUB007','100','50');

insert into Book values
('BK008','Harry Potter','Joanne Rowling','English','Fantasy','388','Hardcover','4/25/1995','PUB008','270','150');

insert into Book values
('BK009','Chocliz','Jalay','Malay','Detective and Mystery','150','Paperbook','5/30/2017','PUB003','30','100');

insert into Book values
('BK010','Time Machine','John Adderson','English','Science Fiction','250','Hardcover','12/23/2020','PUB010','40','10');


create table Order_Publisher_Item 
(Order_Item_ID nvarchar(50) Not Null Primary Key,
Order_Publisher_ID nvarchar(50) Foreign Key References Order_Publisher(Order_Publisher_ID),
Publisher_ID nvarchar(50) Foreign Key References Publishers(Publisher_ID),
Book_ID nvarchar(50) Foreign Key References Book(Book_ID),
Quantity int,
Price int,
Subtotal int
);

insert into Order_Publisher_Item values
('OIT001','OP001','PUB001','BK001',150,30,4500);

insert into Order_Publisher_Item values
('OIT002','OP002','PUB002','BK002',50,36,1800);

insert into Order_Publisher_Item values
('OIT003','OP002','PUB003','BK003',100,50,5000);

insert into Order_Publisher_Item values
('OIT004','OP003','PUB004','BK004',200,50,10000);

insert into Order_Publisher_Item values
('OIT005','OP003','PUB005','BK005',50,50,2500);

insert into Order_Publisher_Item values
('OIT006','OP004','PUB006','BK006',500,100,50000);

insert into Order_Publisher_Item values
('OIT007','OP005','PUB007','BK007',50,80,4000);

insert into Order_Publisher_Item values
('OIT008','OP005','PUB008','BK008',150,200,30000);

insert into Order_Publisher_Item values
('OIT009','OP006','PUB003','BK009',100,25,2500);

insert into Order_Publisher_Item values
('OIT010','OP006','PUB010','BK010',10,30,300);

alter table Order_Publisher_Item
alter column Price money;

alter table Order_Publisher_Item
alter column Subtotal money;

create table Membership
(Membership_ID nvarchar(50)not null primary key,
Member_Name nvarchar(50),
Member_Gender nvarchar(50),
Member_Age int,
Member_Contact nvarchar(50),
Member_Email nvarchar(50),
Member_Address nvarchar(50),
Member_DOB date,
Member_IC_Number nvarchar(50),
Membership_Status nvarchar(50)
);

insert into Membership values
('MEM001','Siti','Female','16','60123456789','Sitifatimah@ymail.com','Puchong','7/3/2003','030703140767','Normal');

insert into Membership values
('MEM002','George','Male','38','60164832731','George1388@gmail.com','Cheras','6/2/1983','830602118943','Employee');

insert into Membership values
('MEM003','Bryan','Male','21','60192883845','Darkknight@gmail.com','Alam Damai','12/3/2000','001203143673','Normal');

insert into Membership values
('MEM004','Nick','Male','19','60164831282','Nickyoung@gmail.com','Serian','2/3/2001','010203135566','Employee');

insert into Membership values
('MEM005','Calemie','Female','20','60123489786','calemie@gmail.com','Kajang','5/2/2001','010502343456','Normal');

insert into Membership values
('MEM006','Casty','Female','23','60123783678','casty@gmail.com','Ampang','3/31/1998','980331677858','Employee');

insert into Membership values
('MEM007','Steve','Male','21','601123657709','steve@gmail.com','Cheras','3/3/2000','000303046009','Normal');

insert into Membership values
('MEM008','John','Male','21','601125698523','John@gmail.com','Kajang','5/6/2000','000506010039','Employee');

create table Shopping_Cart
(Cart_ID nvarchar(50)not null primary key,
Member_ID nvarchar(50) foreign key references membership(Membership_ID),
Total_Cost money
);

insert into Shopping_Cart values
('CT001','MEM001','215');

insert into Shopping_Cart values
('CT002','MEM002','500');

insert into Shopping_Cart values
('CT004','MEM004','180');

insert into Shopping_Cart values
('CT005','MEM005','0');

create table Shopping_Cart_Item
(Cart_Item_ID nvarchar(50) not null primary key, 
Cart_ID nvarchar(50) foreign key references Shopping_Cart(Cart_ID),
Book_ID nvarchar(50) foreign key references Book(Book_ID), 
Quantity int, 
Subtotal money);

insert into Shopping_Cart_Item values
('CIT008', 'CT001', 'BK001', '1','35');

insert into Shopping_Cart_Item values
('CIT009', 'CT001', 'BK004', '2','120');

insert into Shopping_Cart_Item values
('CIT010', 'CT001', 'BK005', '1','60');

insert into Shopping_Cart_Item values
('CIT011', 'CT002', 'BK007', '5','500');

insert into Shopping_Cart_Item values
('CIT012', 'CT004', 'BK003', '3','180');

create table Payment
(Payment_ID nvarchar(50) Not null primary key,
Payment_Date date,
Payment_Method nvarchar(50),
Payment_Status nvarchar(50));

insert into Payment values
('PAY001','25 Apr 2021','Cash On Delivery','Paid');

insert into Payment values
('PAY002','24 Apr 2021','Paypal','Paid');

insert into Payment values
('PAY003','1 May 2021','Touch N Go','Paid');

insert into Payment values
('PAY004','3 May 2021','Visa Card','Paid');

insert into Payment values
('PAY005',Null,Null,'Unpaid');

create table Shipping
(Shipping_ID nvarchar(50) Not null primary key,
Date_Shipping_Out date,
Due_Date date,
Logistic_Company nvarchar(50),
Delivery_Status nvarchar(50));

insert into Shipping values
('SHIP001','25 Apr 2021','2/5/2021','J&T Express','Delivered');

insert into Shipping values
('SHIP002','27 Apr 2021','4/5/2021','Pos Laju','Delivered');

insert into Shipping values
('SHIP003','1 May 2021','8/5/2021','Ninja Van','Delivered');

insert into Shipping values
('SHIP004','3 May 2021','10/5/2021','G Dex','Delivered');

insert into Shipping values
('SHIP005',null,null,null,'Not delivered');

create table Member_Order
(Member_Order_ID nvarchar(50) not null primary key,
Date date,
Member_ID nvarchar(50) foreign key references Membership(Membership_ID),
Discount money,
Total_Price money,
Payment_ID nvarchar(50) foreign key references Payment(Payment_ID),
Shipping_ID nvarchar(50) foreign key references Shipping(Shipping_ID));

insert into Member_Order values
('MO001', '25 April 2021', 'MEM001', '0', '120', 'PAY001', 'SHIP001');

insert into Member_Order values
('MO002', '26 April 2021', 'MEM002', '15', '85', 'PAY002', 'SHIP002');

insert into Member_Order values
('MO003', '27 April 2021', 'MEM003', '0', '720', 'PAY003', 'SHIP003');

insert into Member_Order values
('MO004', '28 April 2021', 'MEM004', '40.5', '229.5', 'PAY004', 'SHIP004');

insert into Member_Order values
('MO005', '29 April 2021', 'MEM005', '0', '140', 'PAY005', 'SHIP005');


create table Member_Order_Item
(Member_Item nvarchar(50) not null primary key,
Member_Order_ID nvarchar(50) foreign key references Member_Order(Member_Order_ID),
Membership_ID nvarchar(50) foreign key references Membership(Membership_ID),
BookID nvarchar(50) foreign key references Book(Book_ID),
Quantity int,
Subtotal money);

insert into Member_Order_Item values
('MI001', 'MO001','MEM001','BK002','3', '120');

insert into Member_Order_Item values
('MI002', 'MO002','MEM002','BK007','1', '100');

insert into Member_Order_Item values
('MI003', 'MO003','MEM003','BK008','3', '660');

insert into Member_Order_Item values
('MI004', 'MO003','MEM003','BK009','2', '60');

insert into Member_Order_Item values
('MI005', 'MO004','MEM004','BK009','5', '150');

insert into Member_Order_Item values
('MI006', 'MO004','MEM004','BK010','3', '120');

insert into Member_Order_Item values
('MI007', 'MO005','MEM005','BK001','4', '140');

create table FeedBack
(Feed_Back_ID nvarchar(50) Not null primary key,
Membership_ID nvarchar(50) Foreign Key References Membership(Membership_ID),
Book_ID nvarchar(50) Foreign Key References Book(Book_ID),
Date_ Date,
Rating integer,
Comment nvarchar(50));

insert into Feedback values
('FB001','MEM001','BK002','26 Apr 2021','7','Eye opening');

insert into Feedback values
('FB002','MEM002','BK007','27 Apr 2021','5','Boring');

insert into Feedback values
('FB003','MEM003','BK008','3 May 2021','4','Terrible');

insert into Feedback values
('FB004','MEM003','BK009','3 May 2021','9','Excellent');

insert into Feedback values
('FB005','MEM004','BK009','6 May 2021','10','Masterpiece');

insert into Feedback values
('FB006','MEM005','BK010','6 May 2021','8','Nice');

--i.List the book(s) which has the highest rating. Show book id, book name, and the rating. 
Select B.Book_ID, B.Book_Title, B.Average_Rating
From (Select B.Book_id, B.Book_TItle, Avg(F.Rating) As Average_Rating
	From Book B 
	Join FeedBack F
	On B.Book_ID = F.Book_ID
	Group by B.Book_ID, B.Book_TItle) B
Where B.Average_Rating = (Select Max(B.Average_Rating)
From (Select B.Book_id, B.Book_TItle, Avg(F.Rating) As Average_Rating
	From Book B 
	Join FeedBack F
	On B.Book_ID = F.Book_ID
	Group by B.Book_ID, B.Book_TItle) B);

--ii.Find the total number of feedback per member. Show member id, member name, and total number of feedback per member.
Select Membership.Membership_ID, Membership.Member_Name, Count(FeedBack.Membership_ID) As Total_Number_Of_Feedback_per_member
From Membership,FeedBack
Where Membership.Membership_ID = Feedback.Membership_ID
Group by Membership.Membership_ID, Membership.Member_Name;

--iii.Find the total number of book published by each publisher. Show publisher id, publisher name, and number of book published. 
Select Publisher_ID, Publisher_Name, COUNT(Book.PublisherID) As Number_Of_Books_Published
From Publishers
Inner Join Book On Publishers.Publisher_ID = Book.PublisherID
Group by  Publisher_ID, Publisher_Name;

--iv.Find the total number of books ordered by store manager from each publisher. 
Select Publishers.Publisher_ID, Publishers.Publisher_Name, SUM(Order_Publisher_Item.Quantity) As Number_Of_Books_Ordered
From Publishers
Inner Join Order_Publisher_Item On Publishers.Publisher_ID = Order_Publisher_Item.Publisher_ID
Group by  Publishers.Publisher_ID, Publishers.Publisher_Name;

--v.Find the total number of books ordered by each member. 
Select Membership.Membership_ID, Membership.Member_Name, SUM(Member_Order_Item.Quantity) As Number_Of_Books_Ordered
From Membership
Inner Join Member_Order_Item On Membership.Membership_ID = Member_Order_Item.Membership_ID
Group by Membership.Membership_ID, Membership.Member_Name;

--vi.Find the bestselling book(s).
Select S.Book_ID, S.Book_Title, S.Total
From (Select B.Book_id, B.Book_TItle, Sum(W.quantity) As Total
	From Book B 
	Join Member_Order_Item W
	On B.Book_ID = W.BookID
	Group by B.Book_ID, B.Book_TItle) S
Where S.Total = (Select Max(S.Total)
From (Select B.Book_id, B.Book_TItle, Sum(W.quantity) As Total
	From Book B 
	Join Member_Order_Item W
	On B.Book_ID = W.BookID
	Group by B.Book_ID, B.Book_TItle) S);

--vii.Show list of total customers based on gender who are registered as members in APU E-Bookstore. 
--The list should show total number of registered members and total number of gender (male and female). 
Select Count(Membership_ID) As Total_Number_Of_Registered_Members,  
(Select Count(Member_Gender) From Membership Where Member_Gender = 'Female') As Female ,
(Select Count(Member_Gender) From Membership Where Member_Gender = 'Male') As Male 
From Membership;

--viii.	Show a list of purchased books that have not been delivered to members. 
--The list should show member identification number, address, contact number, book serial number, book title, quantity, date and status of delivery. 
Select Membership.Member_IC_Number
, Membership.Member_Address
, Membership.Member_Contact
, Book.Book_ID
, Book.Book_TItle
, Member_Order_Item.Quantity
, Member_Order.Date
, Shipping.Delivery_Status As Status_Of_Delivery
From Membership
Inner Join Member_Order On Membership.Membership_ID = Member_Order.Member_ID
Inner Join Member_Order_Item On Membership.Membership_ID = Member_Order_Item.Membership_ID
Inner Join Shipping On Member_Order.Shipping_ID = Shipping.Shipping_ID
Inner Join Book On Member_Order_Item.BookID = Book.Book_ID
Where Shipping.Delivery_Status = 'Not delivered';

--ix.Show the member who spent most on buying books. Show member id, member name and total expenditure. 
Select M.Membership_ID, M.Member_Name, M.Total_Expenditure
From(Select E.Membership_ID, E.Member_Name, Sum(O.Total_Price) As Total_Expenditure
	From Membership E
	Join Member_Order O
	On E.Membership_ID = O.Member_ID
	Group by E.membership_id, E.Member_Name) M
Where M.Total_Expenditure=(Select Max(M.Total_expenditure)
From (select E.Membership_ID, E.Member_Name, Sum(O.Total_Price) As Total_Expenditure
	From Membership E
	Join Member_Order O
	On E.Membership_ID = O.Member_ID
	Group by E.Membership_ID, E.Member_Name) M);

--x.Show a list of total books as added by each members in the shopping cart. 
Select Membership.Membership_ID
, Membership.Member_Name
, Book.Book_ID
, Book.Book_Title
, Shopping_Cart.Cart_ID
From Membership
Inner Join Shopping_Cart On Membership.Membership_ID = Shopping_Cart.Member_ID
Inner Join Shopping_Cart_Item On Shopping_Cart.Cart_ID = Shopping_Cart_Item.Cart_ID
Inner Join Book On Shopping_Cart_Item.Book_ID = Book.Book_ID
Group by Membership.Membership_ID, Membership.Member_Name, Book.Book_ID, Book.Book_Title, Shopping_Cart.Cart_ID
Having Count(Shopping_Cart_Item.Cart_ID) > 0 ;

--find how many member who did not add any book into the cart
Select Count(Membership_ID) As Num_of_Member
From(
Select Membership_ID
From Membership
Except
Select Member_ID
From Shopping_Cart)a;

--is thr any mem did not make any order
Select *
From Membership
Where Membership_ID IN (
Select Membership_ID
From Membership
Except
Select Member_ID
From Member_Order);

--find hw many pub publish more than 2 book
select count(Book_Publish) as No_of_Publisher_more_than_2_Book
from (select publisherID, count(book_ID) as Book_Publish
    from book
    group by publisherID) as s
where Book_Publish > 2

--how many member more than 2 feedback
insert into Feedback values
('FB007','MEM003','BK002','27 May 2021','3','Very Boring');

Select Count(A.More_than_2_feedback)As Num_of_member
From (
Select Count(Membership_ID) As More_than_2_feedback
From Feedback
Group by Membership_ID
Having Count(Membership_ID) > 2)A;

