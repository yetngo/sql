CREATE view DiemTC as
select ketqua.masv,tensv,tenmh,diem,
case
	when diem>=8.5 then 'A'
	when diem>=7 then 'B'
	when diem>=5.5 then 'C'
	when diem>=4 then 'D'
	else 'F'
end DiemTC
from ketqua 
inner join sinhvien on ketqua.masv=sinhvien.masv 
inner join monhoc on ketqua.mamh=monhoc.mamh