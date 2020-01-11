CREATE database QL_GIACONG

CREATE Table MUCGIACONG(
	mamucgiacong varchar(5) primary key,
	tenmucgiacong nvarchar(50) not null,
	dvt nvarchar(30) not null,
	dongia int not null)

CREATE Table NHATKYGC(
	mankgc varchar(5) primary key,
	tenkhachhang nvarchar(50) not null,
	ngaynhanhang date not null,
	ngaygiaohang date,
	constraint checkdate check(ngaygiaohang>ngaynhanhang),
	ptgiaohang nvarchar(50),
	diachi nvarchar(100) not null,
	dathanhtoan varchar(10) not null)

CREATE Table CHITIET(
	mankgc varchar(5) Foreign key references NHATKYGC(mankgc)
	on delete cascade on update cascade not null,
	mamucgiacong varchar(5)Foreign key references MUCGIACONG(mamucgiacong)
	on delete cascade on update cascade not null,
	Constraint PK Primary key(mankgc, mamucgiacong),
	soluong int)