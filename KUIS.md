# 📝 KUIS MODUL 02: CSS3 & Tailwind CSS Dasar

> **Mata Pelajaran:** Web Development Modern
> **Level:** 🟢 Pemula | **Bobot:** 100 poin
> **Waktu Pengerjaan:** 120 menit (disarankan)

---

## 👤 Identitas Siswa

| Field | Isi |
|:---|:---|
| **Nama Lengkap** | |
| **Kelas / Level** | |
| **Tanggal Pengerjaan** | |
| **Link Branch GitHub** | |

---

## 📚 BAGIAN A: TEORI (40 poin)

**Instruksi:** Jawab pertanyaan berikut dengan **singkat, jelas, dan tepat**. Gunakan bahasa sendiri, hindari copy-paste dari internet.

---

### Soal A1 (10 poin) — CPM-01

**Jelaskan perbedaan mendasar antara Flexbox dan CSS Grid! Berikan masing-masing 2 contoh kasus penggunaan yang tepat dalam konteks E-Commerce!**

**Jawaban Anda:**

```
[Ketik jawaban Anda di sini. Minimal 6 kalimat.]

Panduan jawaban:
- Jelaskan perbedaan dimensi (1D vs 2D)
- Jelaskan main axis vs cross axis
- Contoh Flexbox: navigasi, kartu produk
- Contoh Grid: katalog produk, dashboard
- Berikan alasan mengapa satu lebih cocok dari yang lain
```

---

### Soal A2 (10 poin) — CPM-04

**Jelaskan konsep Mobile-First Design dan mengapa metodologi ini lebih disarankan daripada Desktop-First! Sebutkan minimal 3 keuntungan Mobile-First!**

**Jawaban Anda:**

```
[Ketik jawaban Anda di sini. Minimal 8 kalimat.]

Panduan jawaban:
- Definisi Mobile-First Design
- Statistik traffic mobile (>70%)
- Keuntungan 1: Performance (load lebih cepat)
- Keuntungan 2: UX (prioritas konten penting)
- Keuntungan 3: SEO (Google mobile-first indexing)
- Cara implementasi dengan Tailwind breakpoints
```

---

### Soal A3 (10 poin) — CPM-05

**Apa itu CSS Variables (Custom Properties)? Jelaskan cara mendefinisikan dan menggunakannya! Berikan contoh implementasi CSS Variables untuk membuat tema toko E-Commerce yang konsisten!**

**Jawaban Anda:**

```
[Ketik jawaban Anda di sini. Minimal 8 kalimat.]

Panduan jawaban:
- Definisi CSS Variables
- Cara definisi di :root
- Cara penggunaan dengan var(--name)
- Contoh: --color-primary, --color-secondary
- Keuntungan: konsistensi, mudah diubah, theming
- Contoh implementasi untuk dark mode
```

---

### Soal A4 (10 poin) — CPM-06

**Sebuah halaman E-Commerce memiliki masalah: layout rusak di mobile, gambar terlalu besar, dan teks tidak terbaca. Jelaskan langkah-langkah debugging menggunakan Chrome DevTools untuk mengidentifikasi dan memperbaiki masalah tersebut!**

**Jawaban Anda:**

```
[Ketik jawaban Anda di sini. Minimal 8 kalimat.]

Panduan jawaban:
- Buka DevTools (F12)
- Toggle Device Toolbar untuk test responsive
- Inspeksi elemen di panel Elements
- Cek Computed tab untuk nilai CSS
- Cek Box Model untuk spacing
- Test di berbagai breakpoint
- Gunakan Lighthouse untuk audit
- Identifikasi masalah spesifik
```

---

## 💻 BAGIAN B: PRAKTIKUM (40 poin)

**Instruksi:** Kerjakan tugas berikut di file yang sudah disediakan. Sertakan screenshot hasil dan link branch GitHub.

---

### Soal B1 (20 poin) — CPM-02, CPM-03, CPM-04, CPM-06

**Tugas: Restyle Katalog Produk dari Modul 01 dengan Tailwind CSS**

**File:** `src/praktikum/tugas-01.html`

**Kriteria Penerimaan:**

- [ ] Menggunakan struktur HTML5 semantik dari Modul 01
- [ ] Header dengan navigasi responsif (hamburger di mobile, horizontal di desktop)
- [ ] Hero section dengan gradient background
- [ ] Katalog produk menggunakan CSS Grid (1 kolom mobile, 2 kolom tablet, 3 kolom desktop)
- [ ] Setiap kartu produk menggunakan komponen dari `main.css` (`.card-product`, `.badge`, `.price-tag`)
- [ ] Hover effects pada kartu produk (shadow, scale)
- [ ] Sidebar filter menggunakan Flexbox
- [ ] Footer dengan Grid 3 kolom
- [ ] Menggunakan CSS Variables untuk warna konsisten
- [ ] Responsive di mobile (375px), tablet (768px), desktop (1280px)
- [ ] Focus indicator terlihat untuk accessibility
- [ ] Alt text pada semua gambar

**Screenshot yang Harus Diambil:**

1. **Desktop view** (1280px+)
2. **Tablet view** (768px)
3. **Mobile view** (375px)
4. **DevTools Lighthouse score** (Accessibility ≥ 90)

**Screenshot Desktop:**
```
[Paste screenshot di sini]
```

**Screenshot Tablet:**
```
[Paste screenshot di sini]
```

**Screenshot Mobile:**
```
[Paste screenshot di sini]
```

**Screenshot Lighthouse:**
```
[Paste screenshot di sini]
```

**Link GitHub:**
```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

---

### Soal B2 (20 poin) — CPM-02, CPM-04, CPM-06

**Tugas: Buat Navigasi Responsif dengan Hamburger Menu**

**File:** `src/praktikum/tugas-02.html`

**Kriteria Penerimaan:**

- [ ] Navbar sticky di atas (tidak hilang saat scroll)
- [ ] Logo di kiri, menu di kanan (desktop)
- [ ] Hamburger button muncul di mobile (hidden di desktop)
- [ ] Menu horizontal di desktop (min-width 768px)
- [ ] Menu vertical di mobile (max-width 767px)
- [ ] Menggunakan Flexbox untuk layout
- [ ] Menggunakan utility `hidden md:flex` untuk hide/show
- [ ] Hover effects pada menu items
- [ ] Active state untuk menu yang sedang aktif
- [ ] Dropdown untuk kategori produk (opsional, bonus +5 poin)
- [ ] Accessibility: aria-label pada button hamburger
- [ ] Keyboard navigation berfungsi (Tab)

**Screenshot yang Harus Diambil:**

1. **Desktop view** (menu horizontal)
2. **Mobile view** (hamburger button)
3. **Mobile view dengan menu terbuka** (jika implementasi toggle)
4. **Focus indicator** (saat Tab ditekan)

**Screenshot Desktop:**
```
[Paste screenshot di sini]
```

**Screenshot Mobile:**
```
[Paste screenshot di sini]
```

**Screenshot Menu Terbuka:**
```
[Paste screenshot di sini]
```

**Screenshot Focus Indicator:**
```
[Paste screenshot di sini]
```

**Link GitHub:**
```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

---

## 🔍 BAGIAN C: STUDI KASUS (20 poin)

**Instruksi:** Analisis kasus berikut dengan kritis dan berikan solusi yang komprehensif.

---

### Soal C1 (20 poin) — CPM-01, CPM-04, CPM-06

**Kasus: "Toko Online Jaya"**

Toko Online Jaya memiliki halaman katalog produk dengan CSS seperti ini:

```css
/* CSS lama - Desktop-First */
.katalog {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  max-width: 1200px;
  margin: 0 auto;
}

.kartu-produk {
  width: 280px;
  height: 400px;
  border: 1px solid #ccc;
}

@media (max-width: 768px) {
  .katalog {
    grid-template-columns: repeat(2, 1fr);
  }

  .kartu-produk {
    width: 100%;
    height: auto;
  }
}

@media (max-width: 480px) {
  .katalog {
    grid-template-columns: 1fr;
  }
}
```

**Masalah yang dilaporkan:**
1. Layout rusak di mobile landscape
2. Kartu produk terlalu besar di tablet
3. Tidak ada hover effects
4. Tidak responsive di layar sangat kecil (< 320px)
5. CSS tidak konsisten (campuran px dan fr)

**Pertanyaan:**

**1. Identifikasi Masalah (5 poin)**
Sebutkan minimal 5 masalah pada CSS di atas dari segi responsive design, maintainability, dan best practices!

**2. Solusi Perbaikan (10 poin)**
Tulis ulang CSS tersebut dengan pendekatan Mobile-First menggunakan Tailwind CSS! Pastikan responsive di semua breakpoint!

**3. Dampak Perbaikan (5 poin)**
Jelaskan dampak perbaikan tersebut terhadap:
- User experience di mobile
- Performance (load time)
- Maintainability (developer lain yang membaca kode)

**Jawaban Anda:**

```
[Ketik jawaban Anda di sini. Minimal 15 kalimat total untuk 3 pertanyaan.]

1. Identifikasi Masalah:
   - ...
   - ...
   - ...
   - ...
   - ...

2. Solusi Perbaikan:
   [Tulis kode HTML + Tailwind classes yang sudah diperbaiki]

3. Dampak Perbaikan:
   - UX Mobile: ...
   - Performance: ...
   - Maintainability: ...
```

---

## ✅ CHECKLIST SEBELUM SUBMIT

Pastikan semua hal berikut sudah dipenuhi sebelum submit:

### 📝 Kelengkapan Jawaban
- [ ] Semua soal di Bagian A sudah dijawab (4 soal)
- [ ] Semua soal di Bagian B sudah dikerjakan (2 tugas)
- [ ] Soal di Bagian C sudah dianalisis (1 studi kasus)
- [ ] Jawaban menggunakan bahasa sendiri (bukan copy-paste)

### 📸 Screenshot
- [ ] Screenshot katalog produk desktop (Soal B1)
- [ ] Screenshot katalog produk tablet (Soal B1)
- [ ] Screenshot katalog produk mobile (Soal B1)
- [ ] Screenshot Lighthouse score (Soal B1)
- [ ] Screenshot navigasi desktop (Soal B2)
- [ ] Screenshot navigasi mobile (Soal B2)
- [ ] Screenshot focus indicator (Soal B2)

### 🔗 Link GitHub
- [ ] Branch sudah dibuat: `modul-02-nama-anda`
- [ ] Semua perubahan sudah di-commit
- [ ] Branch sudah di-push ke GitHub
- [ ] Link branch sudah diisi di bagian identitas

### 📤 Submission
- [ ] File KUIS.md sudah di-save
- [ ] Submit ke Google Classroom
- [ ] Submit sebelum deadline

---

## 📊 SELF-ASSESSMENT

Sebelum submit, evaluasi diri Anda sendiri:

| Aspek | Skor Mandiri (0-10) |
|:---|:---:|
| Pemahaman Flexbox vs Grid | |
| Implementasi Mobile-First | |
| Penggunaan CSS Variables | |
| Debugging dengan DevTools | |
| Kualitas kode Tailwind | |
| Responsive design | |
| Kelengkapan submission | |
| **Total** | **/70** |

---

## 📜 PERNYATAAN ORISINALITAS

Dengan men-submit kuis ini, saya menyatakan bahwa:

1. ✅ Semua jawaban adalah hasil pekerjaan saya sendiri
2. ✅ Saya tidak melakukan plagiarisme dari sumber manapun
3. ✅ Saya memahami konsekuensi jika terbukti menyontek
4. ✅ Saya bersedia menerima sanksi sesuai kebijakan sekolah

**Tanda Tangan Digital:**

```
[Ketik nama lengkap Anda sebagai tanda persetujuan]
```

---

<div align="center">

### 🎯 **Selamat Mengerjakan!**

> *"Design is not just what it looks like and feels like. Design is how it works."* — Steve Jobs

**Total Poin: _____ / 100**

</div>
