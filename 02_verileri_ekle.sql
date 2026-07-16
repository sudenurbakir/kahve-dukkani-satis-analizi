/*
=============================================
Proje: Kahve Dükkanı Satış Analizi
Dosya: 02_verileri_ekle.sql

Açıklama:
Bu dosyada proje için oluşturulan
Musteriler, Urunler ve Siparisler
tablolarına örnek veriler eklenmektedir.

Not:
Bu projede kullanılan tüm veriler
tamamen hayalidir ve eğitim amaçlı
oluşturulmuştur.
=============================================
*/

-- ==========================================
-- MÜŞTERİLER
-- ==========================================

INSERT INTO Musteriler (musteri_kodu, sehir) VALUES
('CUST001','İstanbul'),
('CUST002','Ankara'),
('CUST003','İzmir'),
('CUST004','İstanbul'),
('CUST005','Bursa'),
('CUST006','Antalya'),
('CUST007','Eskişehir'),
('CUST008','İstanbul'),
('CUST009','Ankara'),
('CUST010','İzmir'),
('CUST011','Bursa'),
('CUST012','İstanbul'),
('CUST013','Antalya'),
('CUST014','Eskişehir'),
('CUST015','İstanbul');

-- ==========================================
-- ÜRÜNLER
-- ==========================================

INSERT INTO Urunler (urun_adi, kategori, fiyat) VALUES
('Latte','Kahve',160.00),
('Americano','Kahve',140.00),
('Mocha','Kahve',180.00),
('Espresso','Kahve',120.00),
('Filtre Kahve','Kahve',150.00),
('Cheesecake','Tatlı',220.00),
('Brownie','Tatlı',170.00),
('Cookie','Tatlı',85.00),
('Kruvasan','Unlu Mamul',95.00),
('Sandviç','Atıştırmalık',190.00),
('Limonata','İçecek',110.00),
('Soğuk Çay','İçecek',100.00);

-- ==========================================
-- SİPARİŞLER
-- ==========================================

INSERT INTO Siparisler (musteri_id, urun_id, adet, siparis_tarihi) VALUES
(1,1,2,'2026-07-01'),
(2,6,1,'2026-07-01'),
(3,2,3,'2026-07-02'),
(4,1,1,'2026-07-02'),
(5,9,4,'2026-07-03'),
(6,3,2,'2026-07-03'),
(7,4,3,'2026-07-04'),
(8,7,2,'2026-07-04'),
(9,5,1,'2026-07-05'),
(10,8,5,'2026-07-05'),
(11,10,2,'2026-07-06'),
(12,11,3,'2026-07-06'),
(13,12,2,'2026-07-07'),
(14,2,1,'2026-07-07'),
(15,6,2,'2026-07-08'),
(1,3,1,'2026-07-08'),
(2,5,2,'2026-07-09'),
(3,7,1,'2026-07-09'),
(4,10,2,'2026-07-10'),
(5,1,3,'2026-07-10'),
(6,11,2,'2026-07-11'),
(7,8,4,'2026-07-11'),
(8,6,1,'2026-07-12'),
(9,9,2,'2026-07-12'),
(10,4,3,'2026-07-13'),
(11,2,2,'2026-07-13'),
(12,5,1,'2026-07-14'),
(13,3,2,'2026-07-14'),
(14,12,1,'2026-07-15'),
(15,1,2,'2026-07-15');
