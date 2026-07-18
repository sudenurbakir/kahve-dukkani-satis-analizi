# ☕ Kahve Dükkanı Satış Analizi

## 📋 Proje Hakkında
Bu projede, hayali bir kahve dükkanının satış verileri SQL kullanılarak analiz edilmiştir. Projenin temel amacı; ilişkisel veri tabanı modellemesi yapmak, KVKK ve veri gizliliği standartlarına uygun anonim veriler üretmek ve gerçek bir işletme senaryosu üzerinden stratejik satış analizleri gerçekleştirmektir.

---

## 🎯 İş Problemi & Analiz İhtiyaçları
Kahve dükkanı yönetimi, işletme kararlarını veri odaklı alabilmek adına aşağıdaki kritik iş sorularının cevaplandırılmasını talep etmektedir:
* **Ürün Performansı:** En çok satılan (adet bazında) ve en fazla ciro/gelir getiren ürünler hangileridir?
* **Müşteri Davranışı:** Sipariş sıklığı en yüksek olan müşteri segmentleri hangileridir?
* **Coğrafi Analiz:** Hangi şehirlerden daha fazla sipariş verilmektedir ve bölgesel yoğunluk ne durumdadır?
* **Zaman Analizi:** Günlük satış trendleri nasıl değişmektedir?

---

## Veri Modeli ve Tablolar
Projede ilişkisel veri tabanı (RDBMS) mimarisi kullanılmış olup, veri gizliliğini korumak adına müşteri isimleri yerine **anonim kodlar (Musteri_1, Musteri_2 vb.)** tercih edilmiştir.

### 1. `Musteriler` Tablosu
| Sütun Adı | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| `musteri_id` | INT (PK) | Benzersiz müşteri numarası |
| `ad_soyad` | VARCHAR | Anonimleştirilmiş müşteri tanımı |
| `sehir` | VARCHAR | Müşterinin yaşadığı şehir |

### 2. `Urunler` Tablosu
| Sütun Adı | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| `urun_id` | INT (PK) | Benzersiz ürün numarası |
| `urun_adi` | VARCHAR | Kahve, tatlı veya içecek adı |
| `kategori` | VARCHAR | Ürünün ait olduğu grup |
| `fiyat` | DECIMAL | Ürün satış bedeli |

### 3. `Siparisler` Tablosu
| Sütun Adı | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| `siparis_id` | INT (PK) | Benzersiz sipariş numarası |
| `musteri_id` | INT (FK) | Siparişi veren müşteri |
| `urun_id` | INT (FK) | Satın alınan ürün |
| `adet` | INT | Sipariş edilen ürün miktarı |
| `siparis_tarihi` | DATE | Siparişin gerçekleştiği gün |

---

## Teknik Yetkinlikler (Kullanılan SQL Konuları)
Proje kapsamında yazılan analitik sorgularda aşağıdaki SQL yetkinlikleri kullanılmıştır:
* **Veri Filtreleme & Sıralama:** `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
* **Gruplama & Kümeleme:** `GROUP BY`, `COUNT()`, `SUM()`, `AVG()`
* **İlişkisel Bağlantılar:** `INNER JOIN` (Tablolar arası veri birleştirme)

---

## Proje Klasör Yapısı ve Kullanım
Proje, SQL süreçlerinin standardına uygun olarak mantıksal bir sıra halinde dosyalanmıştır:

1. **`01_tablolari_olustur.sql`**: Veri tabanı şemasının ve `PRIMARY / FOREIGN KEY` ilişkilerinin kurulması.
2. **`02_verileri_ekle.sql`**: Analiz için gerekli olan anonim test verilerinin tablolara yüklenmesi.
3. **`03_analiz_sorgulari.sql`**: İş problemlerini çözen ve yönetim raporlamalarını oluşturan `SELECT` sorguları.

---
*Bu proje, İş Analistliği yolculuğumda SQL yetkinliklerimi geliştirmek ve veri tabanı mantığını pratik yaparak öğrenmek amacıyla hazırladığım bir portfolyo çalışmasıdır.*
