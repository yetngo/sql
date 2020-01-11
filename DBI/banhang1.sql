Select chitiethd.mahd, tensp,soluong,dongia,soluong*dongia ThanhTien 
from ChiTietHD 
inner join sanpham on ChiTietHD.MaSP=SanPham.MaSP
inner join hoadon on ChiTietHD.mahd=hoadon.mahd
where month(NgayLapHD)=8 and year(NgayLapHD)=2012

select * from KhachHang
where diachi=(select diachi from KhachHang where HoTenKH =N'Nguyễn Văn Đức')

select ql.TenNV +' la nguoi quan ly cua nhan vien ' + nv.tennv 
from Nhanvien ql,Nhanvien nv
where ql.manv=nv.maql

select khachhang.makh,hotenkh,sum(dongia*soluong) tong
from KhachHang 
inner join hoadon on khachhang.makh=hoadon.makh
inner join ChiTietHD on hoadon.mahd=ChiTietHD.mahd
inner join sanpham on chitiethd.MaSP=sanpham.MaSP
group by khachhang.makh,hotenkh

select hoadon.maHD,hoadon.makh,hoadon.manv,sum(dongia*soluong) thanhtien
from  hoadon 
inner join ChiTietHD on hoadon.mahd=ChiTietHD.mahd
inner join sanpham on chitiethd.MaSP=sanpham.MaSP
group by hoadon.maHD,hoadon.makh,hoadon.manv
having sum(dongia*soluong)>=200000

select sanpham.masp,tensp,sum(soluong) 'tong so luong'
from sanpham
inner join ChiTietHD on sanpham.masp=ChiTietHD.masp
inner join hoadon on ChiTietHD.mahd=hoadon.mahd
where month(NgayLapHD)=5 and year(NgayLapHD)=2012
group by sanpham.masp,tensp

select KhachHang.makh,hotenkh,ngaylaphd
from khachhang
inner join hoadon on KhachHang.makh=hoadon.makh
order by NgayLapHD

create view ho as
select ChiTietHD.mahd,hotenkh,ngaylaphd,ngaynhanhang,tensp,soluong,dongia,soluong*dongia thanhtien
from KhachHang 
inner join hoadon on khachhang.makh=hoadon.makh
inner join ChiTietHD on hoadon.mahd=ChiTietHD.mahd
inner join sanpham on chitiethd.MaSP=sanpham.MaSP

select mahd,hotenkh,ngaylaphd,ngaynhanhang,sum(thanhtien) 'tong tien'
from hoadonbh
group by mahd,hotenkh,ngaylaphd,ngaynhanhang

update sanpham
set dongia=1.1*dongia
where tensp='bia 333'