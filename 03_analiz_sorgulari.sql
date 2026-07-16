/*
=============================================
Proje: Kahve Dükkanı Satış Analizi
Dosya: 03_analiz_sorgulari.sql

Açıklama:
Bu dosyada kahve dükkanına ait satış
verileri SQL sorguları kullanılarak
analiz edilmektedir.

=============================================
*/

-- ==========================================
-- SORU 1
-- Tüm müşterileri listele
-- ==========================================

SELECT *
FROM Musteriler;

-- ==========================================
-- SORU 2
-- Tüm ürünleri listele
-- ==========================================

SELECT *
FROM Urunler;

-- ==========================================
-- SORU 3
-- Tüm siparişleri listele
-- ==========================================

SELECT *
FROM Siparisler;

-- ==========================================
-- SORU 4
-- Sadece müşteri kodu ve şehir bilgilerini listele
-- ==========================================

SELECT
    musteri_kodu,
    sehir
FROM Musteriler;

-- ==========================================
-- SORU 5
-- Fiyatı 150 TL'den yüksek ürünleri listele
-- ==========================================

SELECT
    urun_adi,
    fiyat
FROM Urunler
WHERE fiyat > 150;

-- ==========================================
-- SORU 6
-- Ürünleri fiyatına göre pahalıdan ucuza sırala
-- ==========================================

SELECT
    urun_adi,
    fiyat
FROM Urunler
ORDER BY fiyat DESC;

-- ==========================================
-- SORU 7
-- Toplam ürün sayısını hesapla
-- ==========================================

SELECT COUNT(*) AS toplam_urun
FROM Urunler;

-- ==========================================
-- SORU 8
-- Ortalama ürün fiyatını hesapla
-- ==========================================

SELECT ROUND(AVG(fiyat),2) AS ortalama_fiyat
FROM Urunler;

-- ==========================================
-- SORU 9
-- En pahalı ürünü listele
-- ==========================================

SELECT
    urun_adi,
    fiyat
FROM Urunler
ORDER BY fiyat DESC
LIMIT 1;

-- ==========================================
-- SORU 10
-- En ucuz ürünü listele
-- ==========================================

SELECT
    urun_adi,
    fiyat
FROM Urunler
ORDER BY fiyat ASC
LIMIT 1;

-- ==========================================
-- SORU 11
-- Kategori bazında ürün sayısını hesapla
-- ==========================================

SELECT
    kategori,
    COUNT(*) AS urun_sayisi
FROM Urunler
GROUP BY kategori;

-- ==========================================
-- SORU 12
-- Her siparişte hangi müşteri hangi ürünü aldı?
-- ==========================================

SELECT
    m.musteri_kodu,
    u.urun_adi,
    s.adet,
    s.siparis_tarihi
FROM Siparisler s
JOIN Musteriler m
ON s.musteri_id = m.musteri_id
JOIN Urunler u
ON s.urun_id = u.urun_id;

-- ==========================================
-- SORU 13
-- En çok satılan ürün hangisi?
-- ==========================================

SELECT
    u.urun_adi,
    SUM(s.adet) AS toplam_satis
FROM Siparisler s
JOIN Urunler u
ON s.urun_id = u.urun_id
GROUP BY u.urun_adi
ORDER BY toplam_satis DESC;

-- ==========================================
-- SORU 14
-- Kategori bazında toplam satış adedini hesapla
-- ==========================================

SELECT
    u.kategori,
    SUM(s.adet) AS toplam_satis
FROM Siparisler s
JOIN Urunler u
ON s.urun_id = u.urun_id
GROUP BY u.kategori
ORDER BY toplam_satis DESC;

-- ==========================================
-- SORU 15
-- Her müşterinin toplam sipariş adedini hesapla
-- ==========================================

SELECT
    m.musteri_kodu,
    SUM(s.adet) AS toplam_siparis
FROM Siparisler s
JOIN Musteriler m
ON s.musteri_id = m.musteri_id
GROUP BY m.musteri_kodu
ORDER BY toplam_siparis DESC;

-- ==========================================
-- SORU 16
-- Şehirlere göre müşteri sayısını hesapla
-- ==========================================

SELECT
    sehir,
    COUNT(*) AS musteri_sayisi
FROM Musteriler
GROUP BY sehir
ORDER BY musteri_sayisi DESC;

-- ==========================================
-- SORU 17
-- Günlük sipariş sayısını hesapla
-- ==========================================

SELECT
    siparis_tarihi,
    COUNT(*) AS siparis_sayisi
FROM Siparisler
GROUP BY siparis_tarihi
ORDER BY siparis_tarihi;

-- ==========================================
-- SORU 18
-- Her siparişin toplam tutarını hesapla
-- ==========================================

SELECT
    s.siparis_id,
    m.musteri_kodu,
    u.urun_adi,
    s.adet,
    u.fiyat,
    (s.adet * u.fiyat) AS toplam_tutar
FROM Siparisler s
JOIN Musteriler m
ON s.musteri_id = m.musteri_id
JOIN Urunler u
ON s.urun_id = u.urun_id;

-- ==========================================
-- SORU 19
-- En fazla harcama yapan müşteri
-- ==========================================

SELECT
    m.musteri_kodu,
    SUM(s.adet * u.fiyat) AS toplam_harcama
FROM Siparisler s
JOIN Musteriler m
ON s.musteri_id = m.musteri_id
JOIN Urunler u
ON s.urun_id = u.urun_id
GROUP BY m.musteri_kodu
ORDER BY toplam_harcama DESC;

-- ==========================================
-- SORU 20
-- Toplam ciroyu hesapla
-- ==========================================

SELECT
    SUM(s.adet * u.fiyat) AS toplam_ciro
FROM Siparisler s
JOIN Urunler u
ON s.urun_id = u.urun_id;
