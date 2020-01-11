Create procedure tongtiendoanhthu (@start date,@end date)
as
begin
select sum(soluong*dongia)'Tong tien doanh thu = ' 
from NHATKYGC
inner join CHITIET on CHITIET.mankgc=NHATKYGC.mankgc
inner join MUCGIACONG on CHITIET.mamucgiacong=MUCGIACONG.mamucgiacong
where ngaynhanhang>@start and ngaynhanhang<@end
end

execute tongtiendoanhthu '2017-02-02','2017-07-07'
