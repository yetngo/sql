select tensv,tenmh from sinhvien,monhoc,ketqua 
where sinhvien.masv=ketqua.masv and monhoc.mamh=ketqua.mamh and lanthi=2
select tensv,diem from sinhvien,monhoc,ketqua
where sinhvien.masv=ketqua.masv and monhoc.mamh=ketqua.mamh and tenmh='ceas'
select tensv,diem from sinhvien,monhoc,ketqua
where sinhvien.masv=ketqua.masv and monhoc.mamh=ketqua.mamh and lop='se1401'
select sinhvien.masv,tensv,tenmh,diem from sinhvien inner join ketqua on sinhvien.masv =Ketqua.Masv
inner join monhoc on ketqua.mamh=monhoc.mamh
select tensv from sinhvien where lop in (select lop from sinhvien where tensv='c')
select * from sinhvien,monhoc,ketqua
select lop,tensv,count (masv) 'so luong' from sinhvien group by lop,tensv
select mamh,count(masv) 'so hoc sinh' from ketqua group by mamh having count(masv)>=2

insert into sinhvien  values('sv01','anh','1999-01-01','se1402')
