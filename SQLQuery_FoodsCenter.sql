"FOODSCENTER MERUPAKAN APLIKASI PEMESANAN MAKANAN DAN MINUMAN YANG DAPAT
MENGCAKUP LEBIH DARI SATU GERAI, DISAMPING ITU SETIAP GERAI SELAIN MENJUAL MAKANAN TERTENTU
JUGA DAPAT MENJUAL MINUMAN TERTENTU PULA, ADA JUGA YANG GERAI BISA MENJUAL MAKANAN ATAU MINUMAN SAJA"

create database FoodsCenter

use FoodsCenter

CREATE TABLE Gerai( 
id_gerai varchar(5)primary key not null,
nama_gerai varchar(30) not null,
)

CREATE TABLE Kategori ( 
id_kategori varchar(5)primary key not null,
kategori varchar(15) not null 
)

CREATE TABLE Menu ( 
id_menu varchar(5) primary key not null,
id_gerai varchar(5) foreign key references gerai(id_gerai),
id_kategori varchar(5) foreign key references Kategori(id_kategori),
jenis varchar (15) CHECK (jenis IN ('Makanan', 'Minuman' )),
nama varchar(30) not null,
harga numeric(10) not null
)

CREATE TABLE Variasi ( 
id_variasi varchar(5) primary key not null,
nama varchar(30) not null,
harga_tambahan numeric(7) not null
)

CREATE TABLE Transaksi (
id_transaksi varchar(5) primary key not null,
id_karyawan varchar(6) foreign key references Karyawan(id_karyawan),
id_meja varchar(5) foreign key references Meja_Pesan(id_meja),
id_pelangan varchar(6) foreign key references Pelanggan (id_pelangan),
id_variasi varchar(5) foreign key references Variasi(id_variasi),
tanggal datetime not null,
metode_pembayaran varchar(10) not null,
status_transaksi varchar(10) CHECK (status_transaksi IN 
('pending', 'sukses', 'dibatalkan'))
)

CREATE table Pelanggan ( 
id_pelangan varchar(6) primary key not null,
nama varchar (15) not null,
no_hp numeric(14) not null)

CREATE table Detail_Transaksi ( 
id_detail varchar(5) primary key not null,
id_transaksi varchar(5) foreign key references transaksi(id_transaksi),
id_menu varchar(5) foreign key references Menu(id_menu),
harga numeric(12) not null,
qty numeric(4) not null,

)

CREATE table Meja_Pesan ( 
id_meja varchar(5) primary key not null,
no_meja varchar(4) not null,
fasilitas varchar(20) not null,
nama_ruang varchar (15) not null
)

CREATE table Karyawan ( 
id_karyawan varchar(6) primary key not null,
nama varchar (50) not null,
alamat varchar (100) not null
)



INSERT INTO Detail_Transaksi VALUES ('DT01','TR01','MK09',17000,2)
INSERT INTO Detail_Transaksi VALUES ('DT02','TR02','MK03',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT03','TR03','MK02',15000,2)
INSERT INTO Detail_Transaksi VALUES ('DT04','TR04','MK02',15000,1)
INSERT INTO Detail_Transaksi VALUES ('DT05','TR05','MK06',12000,3)
INSERT INTO Detail_Transaksi VALUES ('DT06','TR06','MK06',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT07','TR07','MK01',11000,1)
INSERT INTO Detail_Transaksi VALUES ('DT08','TR08','MK01',11000,3)
INSERT INTO Detail_Transaksi VALUES ('DT09','TR09','MK02',15000,1)
INSERT INTO Detail_Transaksi VALUES ('DT10','TR10','MK03',12000,2)
INSERT INTO Detail_Transaksi VALUES ('DT11','TR11','MK07',18000,1)
INSERT INTO Detail_Transaksi VALUES ('DT12','TR12','MK04',13500,1)
INSERT INTO Detail_Transaksi VALUES ('DT13','TR13','MK02',15000,1)
INSERT INTO Detail_Transaksi VALUES ('DT14','TR14','MK06',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT15','TR15','MK10',5000,1)
INSERT INTO Detail_Transaksi VALUES ('DT16','TR16','MK09',17000,2)
INSERT INTO Detail_Transaksi VALUES ('DT17','TR17','MK03',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT18','TR18','MK02',15000,2)
INSERT INTO Detail_Transaksi VALUES ('DT19','TR19','MK02',15000,1)
INSERT INTO Detail_Transaksi VALUES ('DT20','TR20','MK06',12000,3)
INSERT INTO Detail_Transaksi VALUES ('DT21','TR21','MK06',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT22','TR22','MK01',11000,2)
INSERT INTO Detail_Transaksi VALUES ('DT23','TR23','MK01',11000,3)
INSERT INTO Detail_Transaksi VALUES ('DT24','TR24','MK02',11000,1)
INSERT INTO Detail_Transaksi VALUES ('DT25','TR25','MK03',24000,2)
INSERT INTO Detail_Transaksi VALUES ('DT26','TR26','MK07',17000,1)
INSERT INTO Detail_Transaksi VALUES ('DT27','TR27','MK04',13500,2)
INSERT INTO Detail_Transaksi VALUES ('DT28','TR28','MK02',15000,1)
INSERT INTO Detail_Transaksi VALUES ('DT29','TR29','MK06',12000,2)
INSERT INTO Detail_Transaksi VALUES ('DT30','TR30','MK10',5000,1)
INSERT INTO Detail_Transaksi VALUES ('DT31','TR31','MK11',12500,1)
INSERT INTO Detail_Transaksi VALUES ('DT32','TR32','MK11',12500,1)
INSERT INTO Detail_Transaksi VALUES ('DT33','TR33','MK13',2000,1)
INSERT INTO Detail_Transaksi VALUES ('DT34','TR34','MK21',2500,3)
INSERT INTO Detail_Transaksi VALUES ('DT35','TR35','MK16',12000,1)
INSERT INTO Detail_Transaksi VALUES ('DT36','TR36','MK12',2000,2)
INSERT INTO Detail_Transaksi VALUES ('DT37','TR37','MK14',15000,2)
INSERT INTO Detail_Transaksi VALUES ('DT38','TR38','MK12',2000,1)
INSERT INTO Detail_Transaksi VALUES ('DT39','TR39','MK21',2500,1)
INSERT INTO Detail_Transaksi VALUES ('DT40','TR40','MK19',2500,2)


INSERT INTO Transaksi VALUES ('TR01','KY04','M04P','PG01','V009','2022-01-04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR02','KY08','M04P','PG02','V009','2022/01/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR03','KY10','M05P','PG03','V003','2022/01/04','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR04','KY06','M05P','PG04','V009','2022/01/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR05','KY04','M05P','PG05','V009','2022/01/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR06','KY12','M01P','PG06','V009','2022/01/06','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR07','KY04','M01P','PG07','V009','2022/01/06','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR08','KY10','M04P','PG08','V001','2022/02/02','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR09','KY06','M06P','PG09','V007','2022/02/02','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR10','KY04','M02P','PG10','V003','2022/02/03','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR11','KY04','M04P','PG07','V006','2022/02/03','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR12','KY08','M01P','PG12','V003','2022/02/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR13','KY06','M04P','PG13','V009','2022/02/12','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR14','KY08','M02P','PG14','V009','2022/02/22','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR15','KY06','M05P','PG15','V009','2022/02/28','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR16','KY08','M02P','PG04','V009','2022/03/01','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR17','KY10','M04P','PG07','V001','2022/03/01','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR18','KY12','M04P','PG03','V009','2022/03/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR19','KY12','M01P','PG08','V009','2022/03/05','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR20','KY10','M02P','PG02','V005','2022/03/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR21','KY06','M05P','PG04','V009','2022/04/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR22','KY06','M04P','PG13','V009','2022/04/12','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR23','KY04','M01P','PG07','V009','2022/04/06','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR24','KY04','M04P','PG07','V006','2022/04/03','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR25','KY08','M01P','PG12','V003','2022/04/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR26','KY12','M01P','PG08','V009','2022/05/05','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR27','KY04','M04P','PG07','V006','2022/05/03','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR28','KY08','M04P','PG02','V009','2022/05/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR29','KY08','M02P','PG04','V009','2022/05/01','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR30','KY04','M04P','PG01','V009','2022/05/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR31','KY06','M05P','PG15','V009','2022/02/28','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR32','KY04','M04P','PG01','V009','2022/05/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR33','KY04','M01P','PG07','V009','2022/01/06','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR34','KY10','M04P','PG08','V001','2022/02/02','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR35','KY04','M04P','PG07','V006','2022/04/03','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR36','KY08','M01P','PG12','V003','2022/04/04','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR37','KY10','M05P','PG03','V003','2022/01/04','GO-PAY','SUKSES')
INSERT INTO Transaksi VALUES ('TR38','KY06','M05P','PG04','V009','2022/01/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR39','KY06','M05P','PG04','V009','2022/04/05','CAST','SUKSES')
INSERT INTO Transaksi VALUES ('TR40','KY06','M04P','PG13','V009','2022/04/12','GO-PAY','SUKSES')


insert into Gerai values ('G001','BAKSO BAROKAH')
insert into Gerai values ('G002','PADANG JAYA')
insert into Gerai values ('G003','MIE AYAM LARIS')
insert into Gerai values ('G004','SEGO TAMBAH')
insert into Gerai values ('G005','SOMAY MENTES')
insert into Gerai values ('G006','NASGOS RAMINTEN')
insert into Gerai values ('G007','AYAM CEMANY MREBES')
insert into Gerai values ('G008','KUPAK TAHU BLALAK')
insert into Gerai values ('G009','SATE KELINCI')
insert into Gerai values ('G010','GORENG SRENG') 
insert into Gerai values ('G011','KEDAI SEGAR') 

INSERT INTO Kategori VALUES ('KT01','OLAHAN AYAM')
INSERT INTO Kategori VALUES ('KT02','OLAHAN NASI')
INSERT INTO Kategori VALUES ('KT03','OLAHAN MIE')
INSERT INTO Kategori VALUES ('KT04','OLAHAN SATE')
INSERT INTO Kategori VALUES ('KT05','OLAHAN SOMAY')
INSERT INTO Kategori VALUES ('KT06','OLAHAN BAKSO')
INSERT INTO Kategori VALUES ('KT07','OLAHAN TAHU')
INSERT INTO Kategori VALUES ('KT08','OLAHAN SHOP')
INSERT INTO Kategori VALUES ('KT09','GORENGAN')
INSERT INTO Kategori VALUES ('KT10','MINUMAN')

INSERT INTO Menu VALUES ('MK01','G001','KT06','Makanan','BAKSO',11000)
INSERT INTO Menu VALUES ('MK02','G005','KT05','Makanan','SOMAY',15000)
INSERT INTO Menu VALUES ('MK03','G003','KT03','Makanan','MIE AYAM',12000)
INSERT INTO Menu VALUES ('MK04','G008','KT07','Makanan','KUPAT TAHU',13500)
INSERT INTO Menu VALUES ('MK05','G006','KT02','Makanan','NASI GORENG',13000)
INSERT INTO Menu VALUES ('MK06','G002','KT02','Makanan','NASI PADANG',12000)
INSERT INTO Menu VALUES ('MK07','G007','KT01','Makanan','AYAM MADU 2',18000)
INSERT INTO Menu VALUES ('MK08','G004','KT08','Makanan','NASI SHOP',8000)
INSERT INTO Menu VALUES ('MK09','G009','KT04','Makanan','SATE',17000)
INSERT INTO Menu VALUES ('MK10','G010','KT09','Makanan','GORENGAN',5000)
INSERT INTO Menu VALUES ('MK11','G011','KT10','Minuman','KOPI',12500)
INSERT INTO Menu VALUES ('MK12','G002','KT10','Minuman','JERUK',2000)
INSERT INTO Menu VALUES ('MK13','G006','KT10','Minuman','TEH',2000)
INSERT INTO Menu VALUES ('MK14','G011','KT10','Minuman','WEDANG UWOH',15000)
INSERT INTO Menu VALUES ('MK15','G008','KT10','Minuman','JERUK',2000)
INSERT INTO Menu VALUES ('MK16','G011','KT10','Minuman','JUS BUAH',12000)
INSERT INTO Menu VALUES ('MK17','G009','KT10','Minuman','LEMONTIE',2500)
INSERT INTO Menu VALUES ('MK18','G011','KT10','Minuman','MINUMAN KALENG',7500)
INSERT INTO Menu VALUES ('MK19','G007','KT10','Minuman','LEMONTIE',2500)
INSERT INTO Menu VALUES ('MK20','G001','KT10','Minuman','TEH',2000)
INSERT INTO Menu VALUES ('MK21','G004','KT10','Minuman','LEMONTIE',2500)


INSERT INTO Meja_Pesan VALUES ('M01P','MP02','15 KURSI DAN AC','SADEWA')
INSERT INTO Meja_Pesan VALUES ('M02P','MP04','20 KURSI DAN AC','SINTA')
INSERT INTO Meja_Pesan VALUES ('M03P','MP06','25 KURSI LUAR','RAMA')
INSERT INTO Meja_Pesan VALUES ('M04P','MP08','15 KURSI LUAR','BIMA')
INSERT INTO Meja_Pesan VALUES ('M05P','MP10','10 KURSI_GASEBO','NAKULA')
INSERT INTO Meja_Pesan VALUES ('M06P','MP12','15 KURSI_GESEBO','ARJUNA')

INSERT INTO Variasi VALUES ('V001','EXTRA BAKSO',2000)
INSERT INTO Variasi VALUES ('V002','EXTRA AYAM',3000)
INSERT INTO Variasi VALUES ('V003','EXTRA KRUPUK',1000)
INSERT INTO Variasi VALUES ('V004','EXTRA KUPAT TAHU',1500)
INSERT INTO Variasi VALUES ('V005','EXTRA SAMBAL',1000)
INSERT INTO Variasi VALUES ('V006','EXTRA NASI',1500)
INSERT INTO Variasi VALUES ('V007','EXTRA SOMAY',2500)
INSERT INTO Variasi VALUES ('V008','EXTRA SATE',3500)
INSERT INTO Variasi VALUES ('V009','NO EXTRA',0)

INSERT INTO Karyawan VALUES ('KY04','SANDRA','PAJANGAN BANTUL')
INSERT INTO Karyawan VALUES ('KY06','MAHARANI','WIROBRAJAN YOGYA')
INSERT INTO Karyawan VALUES ('KY08','AYUNDA','WATES KULONPROGO')
INSERT INTO Karyawan VALUES ('KY10','BAGAS','PIYUNGAN WONOSARI')
INSERT INTO Karyawan VALUES ('KY12','INDRA','RINGIN PUTIH SLEMAN')

INSERT INTO Pelanggan VALUES ('PG01','NABILA',089646599868)
INSERT INTO Pelanggan VALUES ('PG02','ANISA',082235899147)
INSERT INTO Pelanggan VALUES ('PG03','NEBULA',085156086291)
INSERT INTO Pelanggan VALUES ('PG04','SINDHI',081326582921)
INSERT INTO Pelanggan VALUES ('PG05','DIMAS',088239763254)
INSERT INTO Pelanggan VALUES ('PG06','RAFLY',087837953418)
INSERT INTO Pelanggan VALUES ('PG07','TEDDY',085239586625)
INSERT INTO Pelanggan VALUES ('PG08','MARIO',082235291227)
INSERT INTO Pelanggan VALUES ('PG09','GHALY',085929206670)
INSERT INTO Pelanggan VALUES ('PG10','KHARISMA',082314012027)
INSERT INTO Pelanggan VALUES ('PG12','MOMO',085861187626)
INSERT INTO Pelanggan VALUES ('PG13','ALBERT',085641122582)
INSERT INTO Pelanggan VALUES ('PG14','ADIT PERMADI',087772407293)
INSERT INTO Pelanggan VALUES ('PG15','RIOO',089661939204)



