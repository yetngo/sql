select * from khachhang where diachi='tan binh'
select * from sanpham where tenvt like 'gach%'
select mahd, sum (sl*giaban) 'tổng gia tri' from chitiethoadon group by mahd
select count(mavt) 'so luong mat hang co luong ton' from sanpham where slton>=500 
select mavt, sum(sl) 'tong so luong ban ra' from chitiethoadon group by mavt
select mavt,tenvt from sanpham where slton in (select max(slton) from sanpham)

update sanpham 
set giamua=1.1*giamua
update khachhang
set diachi='binh chanh'
where tenkh='le van sang'
update chitiethoadon
set khuyenmai=100000
where mahd in 
(select mahd from hoadon
inner join khachhang on hoadon.makh=khachhang.makh where diachi='binh chanh')

select * from khachhang
where makh not in (select makh from hoadon)
