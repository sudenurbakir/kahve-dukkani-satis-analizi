/*
=============================================
Proje: Kahve Dükkanı Satış Analizi
Dosya: 02_verileri_ekle.sql

Açıklama:
Bu dosyada proje için oluşturulan Musteriler, Urunler ve Siparisler tablolarına örnek veriler eklenmektedir.

Not:
Bu projede kullanılan tüm veriler tamamen hayalidir ve eğitim amaçlı oluşturulmuştur.
=============================================
*/

-- ==========================================
-- MÜŞTERİLER
-- ==========================================

INSERT INTO Musteriler (musteri_id, ad_soyad, sehir) VALUES
(1, 'Musteri_1', 'İstanbul'),
(2, 'Musteri_2', 'Ankara'),
(3, 'Musteri_3', 'İzmir'),
(4, 'Musteri_4', 'İstanbul'),
(5, 'Musteri_5', 'Bursa'),
(6, 'Musteri_6', 'Antalya'),
(7, 'Musteri_7', 'Eskişehir'),
(8, 'Musteri_8', 'İstanbul'),
(9, 'Musteri_9', 'Ankara'),
(10, 'Musteri_10', 'İzmir'),
(11, 'Musteri_11', 'Bursa'),
(12, 'Musteri_12', 'İstanbul'),
(13, 'Musteri_13', 'Antalya'),
(14, 'Musteri_14', 'Eskişehir'),
(15, 'Musteri_15', 'İstanbul');

-- ==========================================
-- ÜRÜNLER
-- ==========================================

INSERT INTO Urunler (urun_id, urun_adi, kategori, fiyat) VALUES
(1, 'Latte', 'Kahve', 160.00),
(2, 'Americano', 'Kahve', 140.00),
(3, 'Mocha', 'Kahve', 180.00),
(4, 'Espresso', 'Kahve', 120.00),
(5, 'Filtre Kahve', 'Kahve', 150.00),
(6, 'Cheesecake', 'Tatlı', 220.00),
(7, 'Brownie', 'Tatlı', 170.00),
(8, 'Cookie', 'Tatlı', 85.00),
(9, 'Kruvasan', 'Unlu Mamul', 95.00),
(10, 'Sandviç', 'Atıştırmalık', 190.00),
(11, 'Limonata', 'İçecek', 110.00),
(12, 'Soğuk Çay', 'İçecek', 100.00);

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
