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

--Nh?p data cho b?ng CHUDE
insert into CHUDE(MACD, TENCD)
values
('NCPT', N'Nghi�n c?u ph�t tri?n'),
('QLGD', N'Qu?n l� gi�o d?c'),
('UDCN', N'?ng d?ng c�ng ngh?')

--Nh?p data cho b?ng BOMON
insert into BOMON(MABM, TENBM, PHONG, DIENTHOAI, MAKHOA)
values
(N'CNTT',N'C�ng ngh? tri th?c','B15','0838126126',N'CNTT'),
(N'HHC',N'H�a h?u c?','B44','0838222222',N'HH'),
(N'HL',N'H�a L�','B42','0838878787',N'HH')

insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'HPT',N'H�a ph�n t�ch','B43','0838777777','007',N'HH','2007-10-15'),
(N'HTTT',N'H? th?ng th�ng tin','B13','0838125125','002',N'CNTT','2004-09-20'),
(N'MMT',N'M?ng m�y t�nh','B16','0838676767','001',N'CNTT','2005-05-15')

Insert Into BOMON(MABM,TENBM,PHONG,DIENTHOAI,MAKHOA)
values
(N'SH',N'Sinh h�a','B33','0838898989',N'SH'),
(N'VL?T',N'V?t l� ?i?n t?','B23','0838234234',N'VL')


insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'VLUD',N'V?t l� ?ng d?ng','B24','0838454545','005',N'VL','2006-02-18'),
(N'VS',N'Vi Sinh','B32','0838909090','004',N'SH','2007-01-01')


--Nh?p data cho b?ng GIAOVIEN
Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('001',N'Nguy?n Ho�i An',2000.0,N'Nam','1973-02-15',N'25/3 L?c Long Qu�n, Q.10,TP HCM', N'HHC'),
('002',N'Tr?n Tr� H??ng',2500.0,N'N?','1960-06-20',N'125 Tr?n H?ng ??o, Q.1, TP HCM', N'VLUD') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('003',N'Nguy?n Ng?c �nh',2200.0,N'N?','1975-05-11',N'12/21 V� V?n Ng�n Th? ??c, TP HCM',N'002',N'VL?T') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('004',N'Tr??ng Nam S?n',2300.0,N'Nam','1959-06-20',N'215 L� Th??ng Ki?t,TP Bi�n H�a',N'HPT'),
('005',N'L� Ho�ng H�',2500.0,N'Nam','1954-10-23',N'22/5 Nguy?n X�, Q.B�nh Th?nh, TP HCM',N'SH')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('006',N'Tr?n B?ch Tuy?t',1500.0,N'N?','1980-05-20',N'127 H�ng V??ng, TP M? Tho',N'004', N'MMT')


Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI, MABM)
values
('007',N'Nguy?n An Trung',2100.0,N'Nam','1976-06-05',N'234 3/2, TP Bi�n H�a', N'HL')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM) 
values
('008',N'Tr?n Trung Hi?u',1800.0,N'Nam','1977-08-06',N'22/11 L� Th??ng Ki?t,TP M? Tho',N'007', N'VS'),
('009',N'Tr?n Ho�ng nam',2000.0,N'Nam','1975-11-22',N'234 Tr?n N�o,An Ph�, TP HCM',N'001', N'CNTT'),
('010',N'Ph?m Nam Thanh',1500.0,N'Nam','1980-12-12',N'221 H�ng V??ng,Q.5, TP HCM',N'007',N'HTTT') 




--Nh?p data cho b?ng DETAI
Insert Into DETAI(MADT,TENDT,CAPQL,KINHPHI,NGAYBD,NGAYKT,MACD,GVCNDT)
values
('001',N'HTTT qu?n l� c�c tr??ng ?H',N'?HQG',20.0,'2007-10-20','2008-10-20',N'QLGD','002'),
('002',N'HTTT qu?n l� gi�o v? cho m?t Khoa',N'Tr??ng',20.0,'2000-10-12','2001-10-12',N'QLGD','002'),
('003',N'Nghi�n c?u ch? t?o s?i Nan� Platin',N'?HQG',300.0,'2008-05-15','2010-05-15',N'NCPT','005'),
('004',N'T?o v?t li?u sinh h?c b?ng m�ng ?i ng??i',N'Nh� n??c',100.0,'2007-01-01','2009-12-31',N'NCPT','004'),
('005',N'?ng d?ng h�a h?c xanh',N'Tr??ng',200.0,'2003-10-10','2004-12-10',N'UDCN','007'),
('006',N'Nghi�n c?u t? b�o g?c',N'Nh� n??c',4000.0,'2006-10-12','2009-10-12',N'NCPT','004'),
('007',N'HTTT qu?n l� th? vi?n ? c�c tr??ng ?H',N'Tr??ng',20.0,'2009-05-10','2010-05-10',N'QLGD','001')

--Nh?p data cho b?ng CONGVIEC
insert into CONGVIEC(MADT,SOTT,TENCV,NGAYBD,NGAYKT)
values
 ('001',1,N'Kh?i t?o v� L?p k? ho?ch','2007-10-20','2008-12-20'),
 ('001',2,N'X�c ??nh y�u c?u','2008-12-21','2008-03-21'),
 ('001',3,N'Ph�n t�ch h? th?ng','2008-03-22','2008-05-22'),
 ('001',4,N'Thi?t k? h? th?ng','2008-05-23','2008-06-23'),
 ('001',5,N'C�i ??t th? nghi?m','2008-06-24','2008-10-20'),
 ('002',1,N'Kh?i t?o v� l?p k? ho?ch','2009-05-10','2009-07-10'),
 ('002',2,N'X�c ??nh y�u c?u','2009-07-11','2009-10-11'),
 ('002',3,N'Ph�n t�ch h? th?ng','2009-10-12','2009-12-20'),
 ('002',4,N'Thi?t k? h? th?ng','2009-12-21','2010-03-22'),
 ('002',5,N'C�i ??t th? nghi?m','2010-03-23','2010-05-10'),
 ('006',1,N'L?y m?u','2006-10-20','2007-02-20'),
 ('006',2,N'Nu�i c?y','2007-02-21','2008-09-21')

 --Nh?p data cho b?ng THAMGIADT
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('001','002',1,0.0),
 ('001','002',2,2.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('002','001',4,2.0,N'??t'),
 ('003','001',1,1.0,N'??t'),
 ('003','001',2,0.0,N'??t'),
 ('003','001',4,1.0,N'??t')


 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('003','002',2,0.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('004','006',1,0.0,N'??t'),
 ('004','006',2,1.0,N'??t'),
 ('006','006',2,1.5,N'??t') 

 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('009','002',3,0.5),
 ('009','002',4,1.5) 
 select * from THAMGIADT

 --Nh?p data cho b?ng KHOA
 Insert Into KHOA(MAKHOA,TENKHOA,NAMTL,PHONG,DIENTHOAI,TRUONGKHOA,NGAYNHANCHUC)
 values
 (N'CNTT',N'C�ng ngh? th�ng tin',1995,'B11','0838123456','002','2005-02-20'),
 (N'HH',N'H�a h?c',1980,'B41','0838456456','007','2001-10-15'),
 (N'SH',N'Sinh h?c',1980,'B31','0838454545','004','2000-10-11'),
 (N'VL',N'V?t l�',1976,'B21','0838223223','005','2003-09-18')


 select * from CHUDE
 select * from DETAI
 

 select * from DETAI

 --T�nh t?ng ph? c?p c?a t?ng gi�o vi�n v� t?ng kinh ph� c?a ?? t�i m� gi�o vi�n ?� ph? tr�ch
 -- B?ng c?n l?y: thamgiadt, detai
  select * from THAMGIADT
  select * from DETAI

select THAMGIADT.MAGV, THAMGIADT.MADT, sum(THAMGIADT.PHUCAP)as TONGPC, sum(DETAI.KINHPHI) AS TONGKP 
from THAMGIADT inner join DETAI on THAMGIADT.MADT = DETAI.MADT
group by THAMGIADT.MAGV, THAMGIADT.MADT

--1/T? b?ng GIAOVIEN l?y th�ng tin B? m�n (m� b? m�n, t�n b? m�n) c?a gi�o vi�n ph? tr�ch
 select GIAOVIEN.MAGV,GIAOVIEN.HOTEN,BOMON.MABM, BOMON.TENBM from GIAOVIEN inner join BOMON on GIAOVIEN.MABM = BOMON.MABM

 --2/ ?ng v?i m?i ?? t�i , l?y t?t c? th�ng tin ch? ?? li�n quan
 select DETAI.MADT, DETAI.TENDT, CHUDE.* from DETAI inner join CHUDE on DETAI.MACD = CHUDE.MACD

 --3/ ?ng v?i m?i ?? t�i, cho bi?t th�ng tin gi�o vi�n tham gia (h? t�n,  ??a ch?), k?t qu? ??t ???c 
 select * from DETAI
 select * from GIAOVIEN
 select DETAI.MADT, DETAI.TENDT, GIAOVIEN.HOTEN, GIAOVIEN.DIACHI from DETAI inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV

 --4/ Li?t k� t?t c? c�c khoa hi?n c�, th�ng tin tr??ng khoa ( g?i �: li�n k?t v?i b?ng GIAOVIEN)
 select * from KHOA
 select KHOA.MAKHOA,KHOA.TENKHOA, KHOA.DIENTHOAI, GIAOVIEN.HOTEN, GIAOVIEN.NGSINH from KHOA left join GIAOVIEN on KHOA.TRUONGKHOA = GIAOVIEN.MAGV

 --5/ Li?t k� t?t c? c�c b? m�n c�, th�ng tin tr??ng b? m�n ( g?i �: li�n k?t v?i b?ng GIAOVIEN)
 select * from BOMON
 select BOMON.MABM, BOMON.TENBM,  GIAOVIEN.HOTEN as TRUONGBOMON, GIAOVIEN.NGSINH AS NGSINH_TBM from BOMON left join GIAOVIEN on BOMON.TRUONGBM = GIAOVIEN.MAGV




 ---B�i t?p tu?n 6 (09/12/2023)
 --1/Li?t k� t?t c? c�ng vi?c theo t?ng ?? t�i, cho bi?t ng�y b?t ??u v� ng�y k?t th�c
 select * from DETAI
 select * from CONGVIEC
 select DETAI.MADT, CONGVIEC.TENCV, DETAI.TENDT, CONGVIEC.NGAYBD, CONGVIEC.NGAYKT from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT

 --2/Li?t k� c�ng vi?c c� ng�y k?t th�c mu?n nh?t (l?n nh?t) ?ng v?i t?ng ?? t�i.

 select max(CONGVIEC.TENCV) as TENCV,DETAI.TENDT, max(CONGVIEC.NGAYKT) as NGAYKT_MUONNHAT  from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT 
 group by DETAI.TENDT



 


--3/??m s? l??ng ?? t�i "??t" theo t? gi�o vi�n
select * from THAMGIADT
select * from GIAOVIEN

select GIAOVIEN.MAGV,  GIAOVIEN.HOTEN, count(THAMGIADT.KETQUA)as SL_DAT from THAMGIADT inner join GIAOVIEN on THAMGIADT.MAGV = GIAOVIEN.MAGV where THAMGIADT.KETQUA = N'??t'
group by GIAOVIEN.MAGV,  GIAOVIEN.HOTEN

--4/Li?t k� ch? ?? theo t?ng ?? t�i

select DETAI.MADT, DETAI.TENDT, CHUDE.* from DETAI inner join CHUDE on DETAI.MACD = CHUDE.MACD

--5/T�nh t?ng kinh ph� ?? t�i m� gi�o vi�n ch? nhi?m ?? t�i (gvcndt) ???c c?p
select * from DETAI

select  GIAOVIEN.HOTEN, sum(DETAI.KINHPHI)  from DETAI inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV
group by GIAOVIEN.HOTEN

--6/Cho bi?t t�n ng??i ch? nhi?m ?? t�i c?a nh?ng ?? t�i thu?c ch? ?? Qu?n l� gi�o d?c

select DETAI.MADT, DETAI.TENDT, DETAI.MACD, GIAOVIEN.HOTEN from DETAI  inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV where DETAI.MACD = 'QLGD'

--7/T�m nh?ng gi�o vi�n l� tr??ng b? m�n

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, GIAOVIEN.PHAI, GIAOVIEN.NGSINH, BOMON.TENBM as TRUONGBOMON from BOMON inner join GIAOVIEN on BOMON.TRUONGBM = GIAOVIEN.MAGV

--8/T�m gi�o vi�n c� l??ng cao nh?t

select * from GIAOVIEN where LUONG = (select max(LUONG) from GIAOVIEN)

--9/ Cho bi?t t�n khoa c� ?�ng gi�o vi�n nh?t

select KHOA.TENKHOA, count(KHOA.TENKHOA) as SOLUONG_GV into #tmp1 from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM
group by KHOA.TENKHOA --HI?N RA B?NG S? L??NG GI�O VI�N CHO M?I KHOA R?I L?U V�O B?NG T?M.

select * from #tmp1 where SOLUONG_GV = (select max(SOLUONG_GV) from #tmp1)


--10/ Cho bi?t h? t�n gi�o vi�n ch? nhi?m nhi?u ?? t�i nh?t
select  GIAOVIEN.HOTEN, COUNT(DETAI.TENDT)  as SOLUONG_DT into #tmp2 from DETAI inner join GIAOVIEN ON DETAI.GVCNDT = GIAOVIEN.MAGV 
group by GIAOVIEN.HOTEN -- HI?N RA B?NG S? L??NG ?? T�I CHO M?I GI�O VI�N R?I L?U V�O B?NG T?M

select * from #tmp2 where SOLUONG_DT = (select max(SOLUONG_DT) from #tmp2)

--11/ Cho bi?t m� b? m�n c� nhi?u gi�o vi�n nh?t
select BOMON.MABM, BOMON.TENBM, COUNT(GIAOVIEN.GVQLCM) as GVQLCM , COUNT(BOMON.TRUONGBM) as TRUONGBM , count(GIAOVIEN.HOTEN) as HOTENGV into #tmp3 from GIAOVIEN inner join BOMON on GIAOVIEN.MABM = BOMON.MABM
group by BOMON.MABM, BOMON.TENBM -- HI?N RA B?NG S? L??NG GVQLCM, TRUONGBM, HOTENGV CHO M?I B? M�N R?I L?U V�O B?NG T?M 

alter table #tmp3
add  SOLUONG_GV int --- T?O TH�M C?T M?I CHO B?NG T?M


update #tmp3 set  SOLUONG_GV = GVQLCM + TRUONGBM + HOTENGV --- ?i?n gi� tr? cho c?t s? l??ng gv cho m?i b? m�n b?ng c�ch c?ng 3 GVQLCM, TRUONGBM V� HOTEN GV



select * from #tmp3 where SOLUONG_GV=(select max(SOLUONG_GV) from #tmp3)

--12/Cho bi?t t�n nh?ng gi�o vi�n khoa C�ng ngh? th�ng tin m� ch?a tham gia ?? t�i n�o.

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, KHOA.TENKHOA into #tmp4 
from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM where KHOA.MAKHOA = 'CNTT'
-- L?y b?ng m� gi�o vi�n v� t�n c?a gi�o vi�n thu?c khoa C�ng ngh? th�ng tin r?i l?u v�o b?ng t?m


select #tmp4.MAGV, #tmp4.HOTEN, #tmp4.TENKHOA from THAMGIADT right join #tmp4 on THAMGIADT.MAGV = #tmp4.MAGV where THAMGIADT.MAGV is null
--L?y b?ng m� gi�o vi�n v� t�n c?a gi�o vi�n thu?c khoa C�ng ngh? th�ng tin m� ch?a tham gia ?? t�i n�o. 
