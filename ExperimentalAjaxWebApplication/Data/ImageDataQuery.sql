--create the database
create database Sample;

--create the table
create table tblImageData
(
	Id int identity(1, 1) primary key,
	Name nvarchar(50),
	[Order] int
)

--insert image data into the table
insert into tblImageData values ('Chrysanthemum.jpg', 1)
insert into tblImageData values ('Desert.jpg', 2)
insert into tblImageData values ('Hydrangeas.jpg', 3)
insert into tblImageData values ('Jellyfish.jpg', 4)
insert into tblImageData values ('Koala.jpg', 5)
insert into tblImageData values ('Lighthouse.jpg', 6)
insert into tblImageData values ('Penguins.jpg', 7)
insert into tblImageData values ('Tulips.jpg', 8)
insert into tblImageData values ('Welcome.jpg', 9)

--create the stored procedure
create proc spGetImageData
as 
begin
	select *
	from tblImageData
end