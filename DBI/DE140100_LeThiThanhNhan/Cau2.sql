Select * from mucgiacong where dongia>200000

Update nhatkygc
set dathanhtoan='TRUE' 
where tenkhachhang=N'Lê Thị Thu'

Create view V_Giacong as
select NHATKYGC.mankgc,tenkhachhang,ngaygiaohang,MUCGIACONG.mamucgiacong,tenmucgiacong,soluong,dongia,soluong*dongia 'thanhtien'
from NHATKYGC
inner join CHITIET on CHITIET.mankgc=NHATKYGC.mankgc
inner join MUCGIACONG on CHITIET.mamucgiacong=MUCGIACONG.mamucgiacong

Select mankgc,sum(thanhtien) 'tongthanhtien' from V_Giacong
group by mankgc