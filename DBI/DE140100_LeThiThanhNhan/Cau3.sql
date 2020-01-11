Create trigger tongsoluonggc
on CHITIET
for insert,update
as
begin
declare @sl int
declare @somucgc nvarchar(10)
select @somucgc = mamucgiacong from inserted
select @sl = SUM(soluong) from CHITIET
where mamucgiacong = @somucgc
if @sl> 50 RollBack Tran
end