-- ==========================================
-- KAHVE DÜKKANI SATIŞ ANALİZİ
-- TABLOLARIN OLUŞTURULMASI
-- ==========================================

CREATE TABLE Musteriler (
    musteri_id INT AUTO_INCREMENT PRIMARY KEY,
    ad_soyad VARCHAR(100) NOT NULL, 
    sehir VARCHAR(50)
);

CREATE TABLE Urunler (
    urun_id INT AUTO_INCREMENT PRIMARY KEY,
    urun_adi VARCHAR(100) NOT NULL,
    kategori VARCHAR(50),
    fiyat DECIMAL(10,2) NOT NULL
);

CREATE TABLE Siparisler (
    siparis_id INT AUTO_INCREMENT PRIMARY KEY,
    musteri_id INT NOT NULL,
    urun_id INT NOT NULL,
    adet INT DEFAULT 1,
    siparis_tarihi DATE NOT NULL,

    FOREIGN KEY (musteri_id) REFERENCES Musteriler(musteri_id),
    FOREIGN KEY (urun_id) REFERENCES Urunler(urun_id)
);
