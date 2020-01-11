select masach, tensach,nhaxb,namxb,sotrang 
from dmsach 
where tentg=N'nguyễn ngọc ánh'

select masach, tensach,tentg,nhaxb,sotrang 
from dmsach 
where namxb='2010'


select docgia.madg,holot+' '+ten [Ho ten],dmsach.masach,tensach 
from docgia 
inner join phieumuon on docgia.madg=phieumuon.madg
inner join chitietpm on phieumuon.mapm=chitietpm.mapm 
inner join dmsach on chitietpm.masach=dmsach.masach
where ngaythuctra is null

select docgia.madg,holot+' '+ten [Ho ten] 
from docgia 
inner join phieumuon on docgia.madg=phieumuon.madg
inner join chitietpm on phieumuon.mapm=chitietpm.mapm 
inner join dmsach on chitietpm.masach=dmsach.masach
where tensach='database system'

select phieumuon.mapm [Mã PM],docgia.madg [Mã đọc giả],holot+' '+ten [Ho ten], tensach [Tên sách],ngaymuon, ngayhentra,ngaythuctra 
from phieumuon 
inner join docgia on phieumuon.madg=docgia.madg 
inner join chitietpm on phieumuon.mapm=chitietpm.mapm
inner join dmsach on chitietpm.masach =dmsach.masach 
order by tensach asc 