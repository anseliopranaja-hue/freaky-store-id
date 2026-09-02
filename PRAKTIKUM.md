# 💻 PRAKTIKUM MODUL 02: CSS3 & Tailwind CSS Dasar

> **Mata Pelajaran:** Web Development Modern
> **Level:** 🟢 Pemula | **Bobot:** 40 poin (dari 100 poin total)
> **Waktu Pengerjaan:** 240 menit (disarankan)

---

## 👤 Identitas Siswa

| Field | Isi |
|:---|:---|
| **Nama Lengkap** | |
| **Kelas / Level** | |
| **Tanggal Pengerjaan** | |
| **Link Branch GitHub** | |

---

## 🎯 Tujuan Praktikum

Membangun 2 halaman web E-Commerce yang:
1. ✅ Menggunakan Flexbox dan CSS Grid dengan tepat
2. ✅ Responsive di mobile, tablet, dan desktop
3. ✅ Menggunakan Tailwind CSS utility classes
4. ✅ Mengimplementasikan Mobile-First Design
5. ✅ Menggunakan CSS Variables untuk theming
6. ✅ Accessible dan user-friendly

---

## 🚀 Persiapan Environment

Sebelum mulai, pastikan:

```bash
# 1. Masuk ke folder modul
cd level-01-pemula/modul-02-tailwind-css

# 2. Install dependencies (jika belum)
bun install

# 3. Jalankan dev server
bun run dev

# 4. Buka browser preview di port 5173
```

- [ ] ✅ Environment siap, dev server berjalan

---

## 📋 TUGAS 1: Restyle Katalog Produk (20 poin)

### 📂 File yang Dikerjakan

**Lokasi:** `src/praktikum/tugas-01.html`

### 🎯 Deskripsi Tugas

Ambil HTML katalog produk yang sudah Anda buat di **Modul 01** (Tugas 01), lalu **style dengan Tailwind CSS** menggunakan konsep yang sudah dipelajari di Modul 02.

### 📐 Spesifikasi Teknis

#### A. Struktur Layout

```
┌─────────────────────────────────────────┐
│  HEADER (sticky, shadow)                │
│  🌐 Toko Digital    [Beranda] [Katalog] │
├─────────────────────────────────────────┤
│                                         │
│  HERO SECTION (gradient, centered)      │
│  Selamat Datang di Toko Digital         │
│  [Lihat Katalog]                        │
│                                         │
├─────────────────────────────────────────┤
│  KATALOG PRODUK (Grid responsif)        │
│  ┌──────┐ ┌──────┐ ┌──────┐            │
│  │ [IMG]│ │ [IMG]│ │ [IMG]│            │
│  │Laptop│ │Mouse │ │Keybd │            │
│  │Rp 15jt│ │Rp 250k│ │Rp 750k│           │
│  └──────┘ └──────┘ └──────┘            │
│                                         │
├─────────────────────────────────────────┤
│  SIDEBAR (Flexbox)                      │
│  Filter: [Elektronik] [Gaming] [Akses]  │
├─────────────────────────────────────────┤
│  FOOTER (Grid 3 kolom)                  │
│  Tentang | Kontak | Sosial Media        │
└─────────────────────────────────────────┘
```

#### B. Komponen yang Harus Ada

| Komponen | Class Tailwind | Konten |
|:---|:---|:---|
| **Header** | `sticky top-0 shadow-sm` | Logo + navigasi responsif |
| **Hero** | `bg-gradient-to-r text-center py-16` | Judul + CTA button |
| **Katalog** | `grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6` | Minimal 3 kartu produk |
| **Kartu Produk** | `.card-product` dari `main.css` | Gambar + judul + harga + tombol |
| **Badge** | `.badge-primary`, `.badge-secondary` | Kategori produk |
| **Price Tag** | `.price-tag` dari `main.css` | Harga dengan format Rupiah |
| **Sidebar** | `flex flex-wrap gap-2` | Filter kategori |
| **Footer** | `grid grid-cols-1 md:grid-cols-3 gap-6` | 3 kolom informasi |

#### C. Responsive Breakpoints

| Device | Width | Expected Layout |
|:---|:---:|:---|
| **Mobile** | < 768px | 1 kolom, navbar hamburger |
| **Tablet** | 768px - 1023px | 2 kolom, navbar horizontal |
| **Desktop** | ≥ 1024px | 3 kolom, navbar horizontal |

### ✅ Acceptance Criteria (Checklist)

**Struktur Dokumen:**
- [ ] Menggunakan HTML5 semantik dari Modul 01
- [ ] Ada `<!DOCTYPE html>` dan `<html lang="id">`
- [ ] Ada `<meta viewport>` untuk responsive
- [ ] Ada `<title>` yang deskriptif

**Header & Navigasi:**
- [ ] Header sticky di atas (`sticky top-0`)
- [ ] Logo di kiri, menu di kanan
- [ ] Menu horizontal di desktop (`md:flex`)
- [ ] Hamburger button di mobile (`md:hidden`)
- [ ] Hover effects pada menu items

**Hero Section:**
- [ ] Background gradient (`bg-gradient-to-r`)
- [ ] Teks centered (`text-center`)
- [ ] CTA button dengan styling
- [ ] Responsive padding (`py-12 md:py-16`)

**Katalog Produk:**
- [ ] Menggunakan CSS Grid (`grid`)
- [ ] 1 kolom di mobile (`grid-cols-1`)
- [ ] 2 kolom di tablet (`md:grid-cols-2`)
- [ ] 3 kolom di desktop (`lg:grid-cols-3`)
- [ ] Gap antar kartu (`gap-6`)
- [ ] Minimal 3 kartu produk

**Kartu Produk:**
- [ ] Menggunakan class `.card-product`
- [ ] Gambar dengan hover effect (`group-hover:scale-105`)
- [ ] Badge kategori (`.badge-primary`)
- [ ] Judul produk (`font-bold text-lg`)
- [ ] Deskripsi dengan line-clamp (`.line-clamp-2`)
- [ ] Harga dengan `.price-tag`
- [ ] Tombol beli dengan `.btn-primary`

**Sidebar & Footer:**
- [ ] Sidebar menggunakan Flexbox (`flex flex-wrap`)
- [ ] Footer menggunakan Grid (`grid md:grid-cols-3`)
- [ ] Footer responsive di mobile

**Styling & Responsive:**
- [ ] Menggunakan CSS Variables untuk warna
- [ ] Hover effects pada kartu produk
- [ ] Transisi smooth (`transition`)
- [ ] Focus indicator terlihat
- [ ] Alt text pada semua gambar
- [ ] Tampil baik di mobile, tablet, desktop

### 📸 Screenshot yang Harus Diambil

1. **Desktop view** (1280px+) — full page
2. **Tablet view** (768px) — full page
3. **Mobile view** (375px) — full page
4. **DevTools Lighthouse score** — Accessibility ≥ 90

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

### 🔗 Link GitHub

```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

---

## 📋 TUGAS 2: Navigasi Responsif (20 poin)

### 📂 File yang Dikerjakan

**Lokasi:** `src/praktikum/tugas-02.html`

### 🎯 Deskripsi Tugas

Buat navbar responsif untuk toko online dengan hamburger menu di mobile dan horizontal menu di desktop.

### 📐 Spesifikasi Teknis

#### A. Layout Navbar

**Desktop (≥ 768px):**
```
┌─────────────────────────────────────────────────────┐
│  🌐 Toko Digital    Beranda | Katalog | Tentang | Kontak │
└─────────────────────────────────────────────────────┘
```

**Mobile (< 768px):**
```
┌──────────────────────────┐
│  🌐 Toko Digital    ☰    │
└──────────────────────────┘
```

#### B. Komponen yang Harus Ada

| Komponen | Class Tailwind | Fungsi |
|:---|:---|:---|
| **Navbar** | `sticky top-0 z-50 shadow-sm` | Sticky di atas |
| **Logo** | `flex items-center space-x-2` | Logo + nama toko |
| **Menu Desktop** | `hidden md:flex space-x-6` | Hidden di mobile, flex di desktop |
| **Hamburger Button** | `md:hidden` | Tampil di mobile saja |
| **Menu Items** | `.nav-link` dari `main.css` | Styling menu |
| **Active State** | `.nav-link-active` | Menu yang sedang aktif |

#### C. Fitur Tambahan (Opsional, Bonus +5 poin)

- [ ] Dropdown untuk kategori produk
- [ ] Search bar
- [ ] Cart icon dengan badge
- [ ] Toggle animation untuk hamburger menu

### ✅ Acceptance Criteria (Checklist)

**Struktur Navbar:**
- [ ] Navbar sticky di atas (`sticky top-0 z-50`)
- [ ] Background putih dengan shadow (`bg-white shadow-sm`)
- [ ] Container dengan padding (`container mx-auto px-4 py-4`)

**Layout Desktop:**
- [ ] Logo di kiri
- [ ] Menu di kanan
- [ ] Menggunakan Flexbox (`flex justify-between`)
- [ ] Menu horizontal (`flex space-x-6`)
- [ ] Hover effects pada menu items

**Layout Mobile:**
- [ ] Logo di kiri
- [ ] Hamburger button di kanan
- [ ] Menu hidden (`hidden`)
- [ ] Hamburger button tampil (`md:hidden`)

**Responsive Behavior:**
- [ ] Menu hidden di mobile (`hidden`)
- [ ] Menu tampil di tablet+ (`md:flex`)
- [ ] Hamburger hidden di tablet+ (otomatis dengan `md:hidden`)
- [ ] Transisi smooth saat resize

**Accessibility:**
- [ ] `aria-label` pada hamburger button
- [ ] Focus indicator terlihat
- [ ] Keyboard navigation berfungsi (Tab)
- [ ] Kontras warna WCAG compliant

**Styling:**
- [ ] Menggunakan `.nav-link` dari `main.css`
- [ ] Active state untuk menu aktif
- [ ] Hover effects (warna berubah)
- [ ] Transisi smooth (`transition`)

### 📸 Screenshot yang Harus Diambil

1. **Desktop view** — menu horizontal
2. **Mobile view** — hamburger button
3. **Mobile view dengan menu terbuka** (jika implementasi toggle)
4. **Focus indicator** — saat Tab ditekan

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

### 🔗 Link GitHub

```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

---

## 🧪 Testing Mandiri

Sebelum submit, lakukan testing mandiri:

### Test 1: Responsive Design

1. Buka halaman di Chrome
2. Tekan F12 → Tab "Elements"
3. Klik ikon 📱 (Toggle Device Toolbar)
4. Test di berbagai device:

| Device | Width | Expected |
|:---|:---:|:---|
| iPhone SE | 375px | 1 kolom, hamburger menu |
| iPhone 12 | 390px | 1 kolom, hamburger menu |
| iPad | 768px | 2 kolom, horizontal menu |
| iPad Pro | 1024px | 3 kolom, horizontal menu |
| Desktop | 1280px+ | 3 kolom, horizontal menu |

- [ ] ✅ Semua device tampil dengan benar

### Test 2: Lighthouse Audit

1. Buka halaman di Chrome
2. Tekan F12 → Tab "Lighthouse"
3. Pilih kategori: **Accessibility, Best Practices, SEO**
4. Klik "Analyze page load"
5. Pastikan skor minimal 90

- [ ] ✅ Accessibility score ≥ 90
- [ ] ✅ Best Practices score ≥ 90
- [ ] ✅ SEO score ≥ 90

### Test 3: Keyboard Navigation

1. Tekan Tab berulang kali
2. Pastikan semua link dan button bisa diakses
3. Pastikan focus indicator terlihat
4. Tekan Enter pada link → harus navigate

- [ ] ✅ Semua link bisa diakses dengan Tab
- [ ] ✅ Focus indicator terlihat jelas
- [ ] ✅ Enter berfungsi untuk navigate

### Test 4: CSS Variables

1. Buka DevTools → Tab "Elements"
2. Inspeksi elemen dengan warna primary
3. Cek Computed tab → harus menggunakan `var(--color-primary)`
4. Ubah value di `:root` → semua elemen harus berubah

- [ ] ✅ CSS Variables terdefinisi di `:root`
- [ ] ✅ Komponen menggunakan `var(--name)`
- [ ] ✅ Perubahan variable berdampak global

---

## 📤 Submission Guidelines

### Langkah-langkah Submit

```bash
# 1. Buat branch baru
git checkout -b modul-02-nama-anda

# 2. Tambahkan semua perubahan
git add src/praktikum/tugas-01.html
git add src/praktikum/tugas-02.html

# 3. Commit dengan pesan deskriptif
git commit -m "feat(modul-02): restyle katalog and responsive navbar with Tailwind CSS"

# 4. Push ke GitHub
git push origin modul-02-nama-anda
```

### File yang Di-submit

- [ ] `src/praktikum/tugas-01.html` (katalog produk restyled)
- [ ] `src/praktikum/tugas-02.html` (navigasi responsif)
- [ ] 8 screenshot (4 untuk tugas 1, 4 untuk tugas 2)
- [ ] Link branch GitHub

---

## 📊 Self-Assessment

Sebelum submit, evaluasi diri Anda:

| Aspek | Skor Mandiri (0-10) |
|:---|:---:|
| Implementasi Flexbox | |
| Implementasi CSS Grid | |
| Mobile-First Design | |
| Responsive breakpoints | |
| CSS Variables usage | |
| Tailwind utility classes | |
| Accessibility | |
| Kualitas kode & kerapian | |
| Kelengkapan screenshot | |
| **Total** | **/90** |

---

## ❓ FAQ Praktikum

**Q: Bolehkah menggunakan CSS biasa tanpa Tailwind?**
A: Tidak. Modul ini fokus pada Tailwind CSS. Gunakan utility classes dari Tailwind.

**Q: Berapa minimal produk yang harus ditampilkan?**
A: Minimal 3 produk. Boleh lebih jika ingin bonus poin.

**Q: Apakah gambar harus dari internet?**
A: Boleh dari internet (Unsplash, Pexels) atau lokal. Jika dari internet, gunakan URL yang valid.

**Q: Bagaimana jika Tailwind classes tidak bekerja?**
A: Pastikan `bun install` sudah dijalankan dan `tailwind.config.js` sudah ada. Restart dev server jika perlu.

**Q: Apakah navbar harus punya toggle function?**
A: Tidak wajib. Yang penting hamburger button muncul di mobile dan menu horizontal di desktop. Toggle function adalah bonus.

**Q: Bolehkah menggunakan JavaScript untuk toggle menu?**
A: Tidak di modul ini. Modul ini fokus pada CSS. Toggle menu akan dipelajari di Modul 03 (JavaScript).

**Q: Bagaimana cara test responsive tanpa device asli?**
A: Gunakan Chrome DevTools → Toggle Device Toolbar (Ctrl+Shift+M). Anda bisa test di berbagai ukuran layar.

---

<div align="center">

### 💪 **Selamat Mengerjakan Praktikum!**

> *"Good design is obvious. Great design is transparent."* — Joe Sparano

**Total Poin Praktikum: _____ / 40**

</div>
