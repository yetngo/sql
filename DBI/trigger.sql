CREATE TRIGGER sau_themmoi_chitiethoadon
on chitiethoadon
after insert
as
begin
update sanpham
set slton =slton -
(select sl from inserted where mavt = sanpham.mavt)
where mavt in(select mavt from inserted)
end

CREATE TRIGGER sau_delete_chitiethoadon
on chitiethoadon
after delete
as
begin
update sanpham
set slton=slton+
(select sl from deleted where mavt = sanpham.mavt)
where mavt in(select mavt from deleted)
end

CREATE Trigger sau_update_chitiethoadon
on chitiethoadon
after update
as
begin
update sanpham
set slton=slton -
(select sl from inserted where mavt=sanpham.mavt)
where mavt in (select mavt from inserted)
update sanpham
set slton=slton +
(select sl from deleted where mavt= sanpham.mavt)
where mavt in (select mavt from deleted)
end

Create trigger soluong
on chitiethoadon
for insert,update
as
begin
declare @sl int
declare @sohd nvarchar(10)
select @sohd = mahd from inserted
select @sl = count(*) from chitiethoadon
where mahd = @sohd
if @sl> 3 RollBack Tran
end

Create procedure dskhach (@dc nvarchar(50))
as
begin
select *from khachhang
where diachi=@dc
end

execute dskhach 'tan binh'