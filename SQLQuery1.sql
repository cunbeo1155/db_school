create table THAMGIADT
(MAGV nchar(3) not null,
MADT nchar(4) not null,
STT int not null,
PHUCAP numeric(10,2),
KETQUA nvarchar(10)
CONSTRAINT PK_THAMGIADT PRIMARY KEY (MAGV, MADT, STT)
)

create table KHOA
(MAKHOA nchar(4) not null,
TENKHOA nvarchar(50),
NAMTL int,
PHONG char(3),
DIENTHOAI char(10),
TRUONGKHOA nchar(3),
NGAYNHANCHUC datetime,
CONSTRAINT PK_KHOA PRIMARY KEY (MAKHOA)
)


create table BOMON
(MABM nchar(4) not null,
TENBM nchar(50),
PHONG char(3),
DIENTHOAI char(11),
TRUONGBM nchar(3),
MAKHOA nchar(4),
NGAYNHANCHUC datetime,
CONSTRAINT PK_BOMON PRIMARY KEY (MABM)
)

create table DETAI
(MADT nchar(4) not null,
TENDT nvarchar(50),
CAPQL nchar(20),
KINHPHI numeric(10,2),
NGAYBD datetime,
NGAYKT datetime,
MACD nchar(4),
GVCNDT nchar(3),
CONSTRAINT PK_DETAI PRIMARY KEY (MADT)
)

create table CHUDE
(MACD nchar(4) not null,
TENCD nvarchar(30)
CONSTRAINT PK_CHUDE PRIMARY KEY (MACD)
)

create table GIAOVIEN
(MAGV nchar(3) not null,
HOTEN nvarchar(50),
LUONG numeric(10,2),
PHAI nchar(3),
NGSINH datetime,
DIACHI nvarchar(50),
GVQLCM nchar(3),
MABM nchar(4),
CONSTRAINT PK_GIAOVIEN PRIMARY KEY (MAGV)

)

create table CONGVIEC
(MADT nchar(4) not null,
SOTT int not null,
TENCV nvarchar(50),
NGAYBD datetime,
NGAYKT datetime,
CONSTRAINT PK_CONGVIEC PRIMARY KEY (MADT, SOTT)
)

--Nhap data cho bang CHUDE
insert into CHUDE(MACD, TENCD)
values
('NCPT', N'Nghien cuu phat trien'),
('QLGD', N'Quan ly giao duc'),
('UDCN', N'Ung dung cong nghe')

--Nhap data cho bang BOMON
insert into BOMON(MABM, TENBM, PHONG, DIENTHOAI, MAKHOA)
values
(N'CNTT',N'Cong nghe tri thuc','B15','0838126126',N'CNTT'),
(N'HHC',N'Hoa huu co','B44','0838222222',N'HH'),
(N'HL',N'Hoa ly','B42','0838878787',N'HH')

insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'HPT',N'Hoa phan tich','B43','0838777777','007',N'HH','2007-10-15'),
(N'HTTT',N'He thong thong tin','B13','0838125125','002',N'CNTT','2004-09-20'),
(N'MMT',N'Mang may tinh','B16','0838676767','001',N'CNTT','2005-05-15')

Insert Into BOMON(MABM,TENBM,PHONG,DIENTHOAI,MAKHOA)
values
(N'SH',N'Sinh hoa','B33','0838898989',N'SH'),
(N'VLDT',N'Vat ly dien tu','B23','0838234234',N'VL')


insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'VLUD',N'Vat ly ung dung','B24','0838454545','005',N'VL','2006-02-18'),
(N'VS',N'Vi Sinh','B32','0838909090','004',N'SH','2007-01-01')


--Nhap data cho bang GIAOVIEN
Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('001',N'Nguyen Hoai An',2000.0,N'Nam','1973-02-15',N'25/3 Lac Long Quan, Q.10,TP HCM', N'HHC'),
('002',N'Tran Tra Huong',2500.0,N'Nu','1960-06-20',N'125 Tran Hung Dao, Q.1, TP HCM', N'VLUD') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('003',N'Nguyen Ngoc Anh',2200.0,N'Nu','1975-05-11',N'12/21 Vo Van Ngan Thu Duc, TP HCM',N'002',N'VLDT') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('004',N'Truong Nam Son',2300.0,N'Nam','1959-06-20',N'215 Ly Thuong Kiet, TP Bien Hoa',N'HPT'),
('005',N'Ly Hoang Ha',2500.0,N'Nam','1954-10-23',N'22/5 Nguyen Xi, Q.Binh Thanh, TP HCM',N'SH')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('006',N'Tran Bach Tuyet',1500.0,N'Nu','1980-05-20',N'127 Hung Vuong, TP My Tho',N'004', N'MMT')


Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI, MABM)
values
('007',N'Nguyen An Trung',2100.0,N'Nam','1976-06-05',N'234 3/2, TP Bien Hoa', N'HL')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM) 
values
('008',N'Tran Trung Hieu',1800.0,N'Nam','1977-08-06',N'22/11 Ly Thuong Kiet,TP My Tho',N'007', N'VS'),
('009',N'Tran Hoang nam',2000.0,N'Nam','1975-11-22',N'234 Tran Nao,An Phu, TP HCM',N'001', N'CNTT'),
('010',N'Pham Nam Thanh',1500.0,N'Nam','1980-12-12',N'221 Hung Vuong,Q.5, TP HCM',N'007',N'HTTT') 




--Nhập data cho bảng DETAI
Insert Into DETAI(MADT,TENDT,CAPQL,KINHPHI,NGAYBD,NGAYKT,MACD,GVCNDT)
values
('001',N'HTTT quan ly cac truong ĐH',N'ĐHQG',20.0,'2007-10-20','2008-10-20',N'QLGD','002'),
('002',N'HTTT quan ly giao vu cho mot Khoa',N'Truong',20.0,'2000-10-12','2001-10-12',N'QLGD','002'),
('003',N'Nghien cuu che tao soi Nano Platin',N'ĐHQG',300.0,'2008-05-15','2010-05-15',N'NCPT','005'),
('004',N'Tao vat lieu sinh hoc bang mang oi nguoi',N'Nha nuoc',100.0,'2007-01-01','2009-12-31',N'NCPT','004'),
('005',N'Ung dung hoa hoc xanh',N'Truong',200.0,'2003-10-10','2004-12-10',N'UDCN','007'),
('006',N'Nghien cuu te bao goc',N'Nha nuoc',4000.0,'2006-10-12','2009-10-12',N'NCPT','004'),
('007',N'HTTT quan ly thu vien o cac truong ĐH',N'Truong',20.0,'2009-05-10','2010-05-10',N'QLGD','001')

--Nhap data cho bang CONGVIEC
insert into CONGVIEC(MADT,SOTT,TENCV,NGAYBD,NGAYKT)
values
 ('001',1,N'Khoi tao va Lap ke hoach','2007-10-20','2008-12-20'),
 ('001',2,N'Xac dinh yeu cau','2008-12-21','2008-03-21'),
 ('001',3,N'Phan tich he thong','2008-03-22','2008-05-22'),
 ('001',4,N'Thiet ke he thong','2008-05-23','2008-06-23'),
 ('001',5,N'Cai dat thu nghiem','2008-06-24','2008-10-20'),
 ('002',1,N'Khoi tao va lap ke hoach','2009-05-10','2009-07-10'),
 ('002',2,N'Xac dinh yeu cau','2009-07-11','2009-10-11'),
 ('002',3,N'Phan tich he thong','2009-10-12','2009-12-20'),
 ('002',4,N'Thiet ke he thong','2009-12-21','2010-03-22'),
 ('002',5,N'Cai dat thu nghiem','2010-03-23','2010-05-10'),
 ('006',1,N'Lay mẫu','2006-10-20','2007-02-20'),
 ('006',2,N'Nuoi cay','2007-02-21','2008-09-21')

 --Nhap data cho bang THAMGIADT
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('001','002',1,0.0),
 ('001','002',2,2.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('002','001',4,2.0,N'Dat'),
 ('003','001',1,1.0,N'Dat'),
 ('003','001',2,0.0,N'Dat'),
 ('003','001',4,1.0,N'Dat')


 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('003','002',2,0.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('004','006',1,0.0,N'Dat'),
 ('004','006',2,1.0,N'Dat'),
 ('006','006',2,1.5,N'Dat') 

 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('009','002',3,0.5),
 ('009','002',4,1.5) 
 select * from THAMGIADT

 --Nhap data cho bang KHOA
 Insert Into KHOA(MAKHOA,TENKHOA,NAMTL,PHONG,DIENTHOAI,TRUONGKHOA,NGAYNHANCHUC)
 values
 (N'CNTT',N'Cong nghe thong tin',1995,'B11','0838123456','002','2005-02-20'),
 (N'HH',N'Hoa hoc',1980,'B41','0838456456','007','2001-10-15'),
 (N'SH',N'Sinh hoc',1980,'B31','0838454545','004','2000-10-11'),
 (N'VL',N'Vat ly',1976,'B21','0838223223','005','2003-09-18')



 
 
 --1/Liet ke tat ca cong viec theo tung de tai, cho biet ngay bat dau va ngay ket thuc
 select * from DETAI
 select * from CONGVIEC
 select DETAI.MADT, CONGVIEC.TENCV, DETAI.TENDT, CONGVIEC.NGAYBD, CONGVIEC.NGAYKT from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT

 --2/Liet ke cong viec co ngay ket thuc muon nhat (lon nhat) ung voi tung de tai.

 select max(CONGVIEC.TENCV) as TENCV,DETAI.TENDT, max(CONGVIEC.NGAYKT) as NGAYKT_MUONNHAT  from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT 
 group by DETAI.TENDT



 


--3/Dem so luong de tai "Dat" theo tung giao vien
select * from THAMGIADT
select * from GIAOVIEN

select GIAOVIEN.MAGV,  GIAOVIEN.HOTEN, count(THAMGIADT.KETQUA)as SL_DAT from THAMGIADT inner join GIAOVIEN on THAMGIADT.MAGV = GIAOVIEN.MAGV where THAMGIADT.KETQUA = N'Đạt'
group by GIAOVIEN.MAGV,  GIAOVIEN.HOTEN

--4/Liet ke chu de theo tung de tai

select DETAI.MADT, DETAI.TENDT, CHUDE.* from DETAI inner join CHUDE on DETAI.MACD = CHUDE.MACD

--5/Tinh tong kinh phi de tai ma giao viên chu nhiem de tai (gvcndt) duoc cap
select * from DETAI

select  GIAOVIEN.HOTEN, sum(DETAI.KINHPHI)  from DETAI inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV
group by GIAOVIEN.HOTEN

--6/Cho biet ten nguoi chu nhiem de tai cua nhung de tai thuoc chu de Quan ly giao duc

select DETAI.MADT, DETAI.TENDT, DETAI.MACD, GIAOVIEN.HOTEN from DETAI  inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV where DETAI.MACD = 'QLGD'

--7/Tim nhung giao vien la truong bo mon

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, GIAOVIEN.PHAI, GIAOVIEN.NGSINH, BOMON.TENBM as TRUONGBOMON from BOMON inner join GIAOVIEN on BOMON.TRUONGBM = GIAOVIEN.MAGV

--8/Tim giao vien co luong cao nhat

select * from GIAOVIEN where LUONG = (select max(LUONG) from GIAOVIEN)

--9/ Cho biet ten khoa co dong giao vien nhat

select KHOA.TENKHOA, count(KHOA.TENKHOA) as SOLUONG_GV into #tmp1 from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM
group by KHOA.TENKHOA --HIEN RA BANG SO LUONG GIAO VIEN CHO MOI KHOA ROI LUU VAO BANG TAM.

select * from #tmp1 where SOLUONG_GV = (select max(SOLUONG_GV) from #tmp1)


--10/ Cho biet ho ten giao vien chu nhiem nhieu de tai nhat
select  GIAOVIEN.HOTEN, COUNT(DETAI.TENDT)  as SOLUONG_DT into #tmp2 from DETAI inner join GIAOVIEN ON DETAI.GVCNDT = GIAOVIEN.MAGV 
group by GIAOVIEN.HOTEN -- HIEN RA BANG SO LUONG DE TAI CHO MOI GIAO VIEN ROI LUU VAO BANG TAM

select * from #tmp2 where SOLUONG_DT = (select max(SOLUONG_DT) from #tmp2)

--11/ Cho biet ma bo mon co nhieu giao vien nhat
select BOMON.MABM, BOMON.TENBM, COUNT(GIAOVIEN.GVQLCM) as GVQLCM , COUNT(BOMON.TRUONGBM) as TRUONGBM , count(GIAOVIEN.HOTEN) as HOTENGV into #tmp3 from GIAOVIEN inner join BOMON on GIAOVIEN.MABM = BOMON.MABM
group by BOMON.MABM, BOMON.TENBM -- HIEN RA BANG SO LUONG GVQLCM, TRUONGBM, HOTENGV CHO MOI BO MON ROI LUU VAO BANG TAM 

alter table #tmp3
add  SOLUONG_GV int --- TAO THEM COT MOI CHO BANG TAM


update #tmp3 set  SOLUONG_GV = GVQLCM + TRUONGBM + HOTENGV --- Dien gia tri cho cot so luong gv cho moi bo mon bang cach cong 3 GVQLCM, TRUONGBM VÀ HOTEN GV



select * from #tmp3 where SOLUONG_GV=(select max(SOLUONG_GV) from #tmp3)

--12/Cho biet ten nhung giao vien khoa Cong nghe thong tin ma chua tham gia de tai nao.

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, KHOA.TENKHOA into #tmp4 
from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM where KHOA.MAKHOA = 'CNTT'
-- Lay bang ma giao vien va ten cua giao vien thuoc khoa Cong nghe thong tin roi luu vao bang tam


select #tmp4.MAGV, #tmp4.HOTEN, #tmp4.TENKHOA from THAMGIADT right join #tmp4 on THAMGIADT.MAGV = #tmp4.MAGV where THAMGIADT.MAGV is null
--Lay bang ma giao vien va ten cua giao vien thuoc khoa Cong nghe thong tin ma chua tham gia de tai nao. 
