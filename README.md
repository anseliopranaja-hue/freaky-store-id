# 📚 Modul 02: CSS3 & Tailwind CSS Dasar

> **Mata Pelajaran:** Web Development Modern  
> **Level:** 🟢 Pemula (Level 1 dari 4)  
> **Bobot:** 100 poin | **Estimasi:** 24 JP (≈ 6 TM × 4 JP)  
> **Konteks Proyek:** Styling katalog produk E-Commerce dari Modul 01  
> **Stack:** Tailwind 💨 + Chrome DevTools 🌐 + CSS Variables 🎨

---

## 1. 🎯 Capaian Pembelajaran Modul (CPM)

Setelah menyelesaikan modul ini, siswa **mampu**:

| Kode CPM | Capaian Pembelajaran | Bobot |
|:---:|:---|:---:|
| **CPM-01** | 🎨 **Menjelaskan** konsep CSS3 modern (Flexbox, Grid, Variables, Responsive) | 15% |
| **CPM-02** | 📐 **Menerapkan** Flexbox untuk layout 1 dimensi (navigasi, kartu, form) | 20% |
| **CPM-03** | 🎯 **Menerapkan** CSS Grid untuk layout 2 dimensi (katalog produk, dashboard) | 20% |
| **CPM-04** | 📱 **Mengimplementasikan** metodologi Mobile-First Design dengan Tailwind CSS | 20% |
| **CPM-05** | 🎨 **Membuat** tema toko yang konsisten dengan CSS Variables | 10% |
| **CPM-06** | 🔍 **Menganalisis & debugging** styling menggunakan Chrome DevTools | 15% |

---

## 2. 📋 Sub-Capaian Pembelajaran (Sub-CPM) & Indikator

| Sub-CPM | Indikator Ketercapaian | Metode Penilaian |
|:---|:---|:---|
| **Sub-CPM-01**: Siswa memahami konsep CSS3 modern | • Mampu menjelaskan perbedaan Flexbox vs Grid<br>• Mampu menjelaskan konsep Mobile-First<br>• Mampu menjelaskan cara kerja CSS Variables | Kuis Teori (Soal 1-2) |
| **Sub-CPM-02**: Siswa mampu menggunakan Flexbox | • Mampu membuat navigasi horizontal dengan Flexbox<br>• Mampu membuat kartu produk dengan layout fleksibel<br>• Mampu menggunakan `justify-*` dan `align-*` | Praktikum (Tugas 02) |
| **Sub-CPM-03**: Siswa mampu menggunakan CSS Grid | • Mampu membuat layout katalog produk responsif<br>• Mampu menggunakan `grid-template-columns` dengan `repeat()`<br>• Mampu menggunakan `gap` untuk spacing | Praktikum (Tugas 01) |
| **Sub-CPM-04**: Siswa mampu Mobile-First Design | • Mampu menulis class Tailwind dengan breakpoint (`md:`, `lg:`)<br>• Mampu test responsive di Chrome DevTools<br>• Mampu membuat navbar responsif (hamburger di mobile) | Praktikum (Tugas 01 & 02) |
| **Sub-CPM-05**: Siswa mampu menggunakan CSS Variables | • Mampu mendefinisikan `:root` variables<br>• Mampu menggunakan `var(--name)` di CSS<br>• Mampu mengganti tema dengan mengubah variables | Live Coding #4 |
| **Sub-CPM-06**: Siswa mampu debugging styling | • Mampu menggunakan Elements panel untuk inspeksi<br>• Mampu menggunakan Computed tab untuk cek nilai<br>• Mampu menggunakan Responsive Design Mode | Live Coding & Praktikum |

---

## 3. 🗺️ Peta Konsep

```
                    ┌─────────────────────────────────┐
                    │   CSS3 & TAILWIND CSS           │
                    │   (Bab 2 - Roadmap Web Dev)     │
                    └──────────────┬──────────────────┘
                                   │
            ┌──────────────────────┼──────────────────────┐
            │                      │                      │
    ┌───────▼────────┐    ┌───────▼────────┐    ┌────────▼───────┐
    │  LAYOUT        │    │  RESPONSIVE    │    │  THEME         │
    │                │    │                │    │                │
    │ • Flexbox      │    │ • Mobile-First │    │ • CSS Variables│
    │   (1D)         │    │ • Breakpoints  │    │ • :root        │
    │ • CSS Grid     │    │ • Tailwind     │    │ • var()        │
    │   (2D)         │    │   md:, lg:, xl │    │ • Dark Mode    │
    │ • Gap & Spacing│    │ • Media Query  │    │ • Custom Theme │
    └────────────────┘    └────────────────┘    └────────────────┘
                                   │
                          ┌────────▼────────┐
                          │  TOOLS          │
                          │                 │
                          │ • Tailwind CSS  │
                          │ • Chrome        │
                          │   DevTools      │
                          │ • Vite HMR      │
                          └─────────────────┘
```

---

## 4. 📖 Materi Pembelajaran

### 📘 A. Materi Teori (30% — ~7 JP)

| # | Topik | Sub-topik | Durasi | Referensi |
|:-:|:---|:---|:---:|:---|
| 1 | **Konsep CSS3 Modern** | Box Model, Positioning, Display Types, Modern Selectors | 60' | MDN Web Docs |
| 2 | **Flexbox Layout** | Container vs Items, Main/Cross Axis, justify-*, align-*, flex-wrap | 90' | CSS-Tricks Flexbox Guide |
| 3 | **CSS Grid Layout** | Grid Container/Items, template-columns/rows, gap, grid-area, auto-fit/auto-fill | 90' | CSS-Tricks Grid Guide |
| 4 | **Mobile-First Design** | Breakpoints, Media Queries, Tailwind responsive prefixes (sm:, md:, lg:, xl:) | 60' | Tailwind Documentation |
| 5 | **Tailwind CSS Fundamentals** | Utility-first, JIT compiler, component extraction, @apply directive | 60' | Tailwind Documentation |
| 6 | **CSS Variables & Theming** | :root variables, var() function, custom properties, theme consistency | 60' | MDN CSS Variables |

### 💻 B. Materi Praktik (70% — ~17 JP)

| # | Aktivitas | Output | Durasi |
|:-:|:---|:---|:---:|
| 1 | **Live Coding #1**: Flexbox untuk navigasi & kartu produk | Navbar horizontal + kartu produk fleksibel | 120' |
| 2 | **Live Coding #2**: CSS Grid untuk katalog produk | Grid responsif 1/2/3 kolom | 120' |
| 3 | **Live Coding #3**: Mobile-First dengan Tailwind | Halaman responsif dari mobile ke desktop | 120' |
| 4 | **Live Coding #4**: CSS Variables untuk tema toko | Tema warna konsisten di seluruh halaman | 90' |
| 5 | **Live Coding #5**: Chrome DevTools debugging | Inspeksi & fix styling issues | 60' |
| 6 | **Tugas Mandiri**: Restyle katalog Modul 01 | Katalog produk fully-styled dengan Tailwind | 180' |

---

## 5. 📋 Prasyarat

Sebelum memulai modul ini, siswa harus sudah:

- [ ] ✅ Menyelesaikan **Modul 01: HTML5 Semantic** dengan nilai ≥ 70
- [ ] ✅ Memahami struktur HTML5 semantik (`<header>`, `<nav>`, `<main>`, `<article>`, `<footer>`)
- [ ] ✅ Memiliki HTML katalog produk dari Modul 01 (Tugas 01)
- [ ] ✅ Familiar dengan VS Code dan Codespaces
- [ ] ✅ Menjalankan `.devcontainer` di root repository (auto-setup)

> 💡 **Catatan Penting:** Modul 02 akan menggunakan HTML dari Modul 01 sebagai starting point. Pastikan submission Modul 01 sudah selesai dan HTML-nya rapi!

---

## 6. 🛠️ Tools & Teknologi

| Tool | Versi | Fungsi di Modul Ini | Status |
|:---|:---:|:---|:---:|
| 💻 **VS Code** | Latest | Code editor utama via Codespaces | ✅ Wajib |
| 💨 **Tailwind CSS** | 3.x | Utility-first CSS framework | ✅ Fokus Utama |
| 🌐 **Chrome DevTools** | Latest | Inspeksi styling, responsive testing, debugging | ✅ Wajib |
| ⚡ **Vite** | 5.x | Dev server dengan HMR (Hot Module Reload) | ✅ Intisari |
| 🐇 **Bun** | 1.x | Runtime & package manager | ✅ Intisari |
| 🎨 **CSS Variables** | Native | Custom properties untuk theming | ✅ Fokus Utama |

> 🎯 **Catatan Pedagogis:** Modul ini adalah **pendalaman** Tailwind CSS dari intisari di Modul 01. Siswa akan belajar utility classes, responsive design, dan custom theme secara komprehensif.

---

## 7. 📂 Struktur Folder Modul

```
modul-02-tailwind-css/
│
├── 📖 DOKUMENTASI (WAJIB DIBACA)
│   ├── README.md              ← File yang sedang Anda baca
│   ├── materi_02.md           ← Panduan interaktif (LANGKAH DEMI LANGKAH)
│   └── soal_latihan.md        ← Tantangan bonus (+20 poin, opsional)
│
├── 💻 KODE SUMBER
│   ├── index.html             ← Entry point (halaman utama)
│   └── src/
│       ├── main.ts            ← Entry point TypeScript
│       ├── vite-env.d.ts      ← Type definitions Vite
│       ├── styles/
│       │   └── main.css       ← CSS dengan Tailwind + CSS Variables
│       ├── examples/          ← 🎓 Contoh kode per topik
│       │   ├── 01-flexbox-basics.html
│       │   ├── 02-grid-layout.html
│       │   └── 03-responsive-design.html
│       ├── praktikum/         ← 💪 File tugas untuk dikerjakan
│       │   ├── tugas-01.html  ← Restyle katalog produk Modul 01
│       │   └── tugas-02.html  ← Navigasi responsif
│       └── assets/
│           └── images/        ← Gambar produk
│
├── ⚙️  KONFIGURASI
│   ├── package.json           ← Dependencies & scripts
│   ├── vite.config.ts         ← Konfigurasi Vite
│   ├── tailwind.config.js     ← Konfigurasi Tailwind (TEMA E-COMMERCE)
│   ├── postcss.config.js      ← Konfigurasi PostCSS
│   ├── tsconfig.json          ← Konfigurasi TypeScript
│   └── .gitignore             ← File yang diabaikan Git
│
└── 📝 PENILAIAN
    ├── KUIS.md                ← Soal 100 poin (TEORI 40 + PRAKTIKUM 40 + STUDI KASUS 20)
    ├── PRAKTIKUM.md           ← Checklist tugas yang harus dikerjakan
    ├── RUBRIK.md              ← Rubrik penilaian detail
    └── FEEDBACK.md            ← Template feedback guru
```

---

## 8. 🚀 Quick Start (Mulai Belajar dalam 5 Menit)

### Step 1: Buka Codespaces
Pastikan Anda sudah membuka repository ini di **GitHub Codespaces**.

### Step 2: Masuk ke Folder Modul
```bash
cd level-01-pemula/modul-02-tailwind-css
```

### Step 3: Install Dependencies
```bash
bun install
```

### Step 4: Jalankan Development Server
```bash
bun run dev
```
Browser preview akan otomatis terbuka di port `5173`.

### Step 5: Mulai Belajar!
Buka file **`materi_02.md`** dan ikuti panduan interaktif step-by-step.

---

## 9. 📅 Rencana Pembelajaran (RPS Ringkas)

| TM | JP | Kegiatan | Output |
|:---:|:---:|:---|:---|
| **TM-1** | 4 JP | • Pembukaan & review Modul 01 (30')<br>• Teori: Konsep CSS3 Modern (90')<br>• Live Coding #1: Flexbox dasar (120') | Navbar horizontal dengan Flexbox |
| **TM-2** | 4 JP | • Teori: Flexbox lanjutan (60')<br>• Live Coding #1 lanjutan (120')<br>• Latihan mandiri (60') | Kartu produk dengan layout fleksibel |
| **TM-3** | 4 JP | • Teori: CSS Grid (90')<br>• Live Coding #2: Grid layout (120')<br>• Diskusi & Q&A (30') | Katalog produk dengan grid responsif |
| **TM-4** | 4 JP | • Teori: Mobile-First Design (60')<br>• Live Coding #3: Tailwind responsive (120')<br>• Latihan (60') | Halaman responsif mobile → desktop |
| **TM-5** | 4 JP | • Teori: CSS Variables (60')<br>• Live Coding #4: Tema toko (120')<br>• Live Coding #5: DevTools debugging (60') | Tema warna konsisten + debugging skills |
| **TM-6** | 4 JP | • Tugas mandiri: Restyle katalog Modul 01 (180')<br>• Review & submission (60') | Katalog produk fully-styled |

---

## 10. 📊 Sistem Penilaian

### A. Komposisi Nilai (Total: 100 Poin)

| Bagian | Bobot | Detail | CPM yang Diukur |
|:---|:---:|:---|:---:|
| **A. Teori** | 40 poin | 4 soal × 10 poin (konsep, analisis) | CPM-01, CPM-04, CPM-05 |
| **B. Praktikum** | 40 poin | 2 soal × 20 poin (coding + screenshot) | CPM-02, CPM-03, CPM-04, CPM-06 |
| **C. Studi Kasus** | 20 poin | 1 soal × 20 poin (analisis real-world) | CPM-01, CPM-04, CPM-06 |
| **TOTAL** | **100 poin** | | |

### B. Kriteria Kelulusan

| Rentang Nilai | Predikat | Status | Keterangan |
|:---:|:---|:---:|:---|
| 85 – 100 | 🏆 **A (Sangat Baik)** | ✅ Lulus Istimewa | Dipertahankan untuk portofolio |
| 70 – 84 | ✅ **B (Baik)** | ✅ Lulus | Lanjut ke Modul 03 |
| 60 – 69 | ⚠️ **C (Cukup)** | ⚠️ Lulus Bersyarat | Perlu review sebelum lanjut |
| < 60 | ❌ **D (Tidak Lulus)** | ❌ Revisi | Harus revisi & resubmit |

### C. Bonus Points 🎁

| Aktivitas | Bonus | Keterangan |
|:---|:---:|:---|
| Menyelesaikan `soal_latihan.md` | +20 poin | Tantangan bonus (dark mode + animasi) |
| Submit sebelum deadline (H-3) | +5 poin | Early bird |
| Code review teman sekelas | +5 poin | Peer review |

### D. Deadline & Kebijakan Keterlambatan

- **Rilis modul:** Senin, 08.00 WIB
- **Deadline:** Minggu, 23.59 WIB (7 hari)
- **Keterlambatan:** Denda 10% per hari (maksimal 3 hari)
- **Force majeure:** Hubungi guru maksimal H-1 deadline

---

## 11. 📤 Panduan Submission

### A. Langkah-langkah Submit

```bash
# 1. Buat branch baru (WAJIB)
git checkout -b modul-02-nama-anda

# 2. Tambahkan semua perubahan
git add .

# 3. Commit dengan pesan yang deskriptif
git commit -m "feat(modul-02): restyle katalog produk dengan Tailwind CSS"

# 4. Push ke GitHub
git push origin modul-02-nama-anda
```

### B. File yang Harus Di-submit

| File | Keterangan | Wajib? |
|:---|:---|:---:|
| `KUIS.md` | Sudah diisi lengkap (100 poin) | ✅ Ya |
| `src/praktikum/tugas-01.html` | Katalog produk yang sudah di-style | ✅ Ya |
| `src/praktikum/tugas-02.html` | Navigasi responsif | ✅ Ya |
| Screenshot desktop view | Tampilan di layar besar | ✅ Ya |
| Screenshot mobile view | Tampilan di layar kecil | ✅ Ya |
| Screenshot DevTools | Bukti penggunaan Chrome DevTools | ✅ Ya |
| Link branch GitHub | URL branch `modul-02-nama-anda` | ✅ Ya |

### C. Submit ke Google Classroom

1. Buka assignment **"Modul 02 - CSS3 & Tailwind CSS"**
2. Klik **"Add submission"**
3. Attach link branch GitHub Anda
4. Upload screenshot hasil praktikum
5. Klik **"Submit"**

---

## 12. ✅ Checklist Pembelajaran

Gunakan checklist ini untuk memonitor progress Anda:

### 📘 Pemahaman Teori
- [ ] Saya memahami perbedaan Flexbox vs CSS Grid
- [ ] Saya paham konsep Mobile-First Design
- [ ] Saya mengerti cara kerja CSS Variables
- [ ] Saya tahu utility classes Tailwind dasar
- [ ] Saya paham breakpoint responsive (sm, md, lg, xl)

### 💻 Keterampilan Praktik
- [ ] Saya bisa membuat layout dengan Flexbox
- [ ] Saya bisa membuat grid responsif dengan CSS Grid
- [ ] Saya bisa menggunakan Tailwind utility classes
- [ ] Saya bisa test responsive di Chrome DevTools
- [ ] Saya bisa membuat tema dengan CSS Variables
- [ ] Saya bisa debug styling dengan DevTools

### 📝 Submission
- [ ] Semua checkpoint di `materi_02.md` sudah dicentang
- [ ] Screenshot desktop & mobile view sudah diambil
- [ ] Screenshot DevTools sudah diambil
- [ ] `KUIS.md` sudah diisi lengkap
- [ ] Kode sudah di-push ke branch `modul-02-nama-anda`
- [ ] Submission sudah dikirim ke Google Classroom

---

## 13. 📚 Referensi & Dokumentasi

### 📖 Dokumentasi Resmi (Wajib Baca)

| Topik | Link |
|:---|:---|
| 💨 Tailwind CSS | https://tailwindcss.com/docs |
| 📐 Flexbox (CSS-Tricks) | https://css-tricks.com/snippets/css/a-guide-to-flexbox/ |
| 🎯 CSS Grid (CSS-Tricks) | https://css-tricks.com/snippets/css/complete-guide-grid/ |
| 📱 Responsive Design (MDN) | https://developer.mozilla.org/docs/Learn/CSS/CSS_layout/Responsive_Design |
| 🎨 CSS Variables (MDN) | https://developer.mozilla.org/docs/Web/CSS/Using_CSS_custom_properties |
| 🌐 Chrome DevTools | https://developer.chrome.com/docs/devtools |
| 📘 MDN Web Docs - CSS | https://developer.mozilla.org/docs/Web/CSS |

### 🎥 Video Rekomendasi

- [Flexbox in 100 Seconds - Fireship (2 menit)](https://www.youtube.com/watch?v=K74l26pE4YA)
- [CSS Grid in 100 Seconds - Fireship (2 menit)](https://www.youtube.com/watch?v=9zBsdzdE4sM)
- [Tailwind CSS Crash Course - Traversy Media (65 menit)](https://www.youtube.com/watch?v=LYeF_aM2i5Q)
- [Mobile First vs Desktop First - Kevin Powell (15 menit)](https://www.youtube.com/watch?v=gM3wQp5I13o)

### 📚 Bacaan Tambahan

- [Tailwind UI Components](https://tailwindui.com/components) — Contoh komponen siap pakai
- [Flexbox Froggy](https://flexboxfroggy.com/) — Game belajar Flexbox
- [Grid Garden](https://cssgridgarden.com/) — Game belajar CSS Grid
- [Can I Use](https://caniuse.com/) — Cek browser support CSS features

---

## 14. ❓ FAQ & Troubleshooting

### 🔧 Troubleshooting Teknis

| Masalah | Solusi |
|:---|:---|
| Tailwind classes tidak bekerja | Pastikan `bun install` sudah dijalankan dan `tailwind.config.js` ada |
| Styling tidak berubah saat edit CSS | Cek apakah HMR aktif, hard refresh browser (Ctrl+Shift+R) |
| Layout rusak di mobile | Cek breakpoint Tailwind (`md:`, `lg:`), test di DevTools |
| CSS Variables tidak ter-apply | Cek nama variable di `:root`, pastikan pakai `var(--name)` |
| Grid tidak responsif | Gunakan `grid-cols-1 md:grid-cols-2 lg:grid-cols-3` |

### 💬 Pertanyaan Umum

**Q: Apa perbedaan Flexbox dan CSS Grid?**  
A: **Flexbox** untuk layout 1 dimensi (baris ATAU kolom). **CSS Grid** untuk layout 2 dimensi (baris DAN kolom sekaligus). Gunakan Flexbox untuk navigasi, kartu produk. Gunakan Grid untuk katalog produk, dashboard.

**Q: Mengapa harus Mobile-First?**  
A: Karena > 70% user mengakses web dari mobile. Mobile-First memastikan tampilan bagus di layar kecil dulu, baru di-enhance untuk layar besar. Lebih efisien dan user-friendly.

**Q: Apakah harus hafal semua class Tailwind?**  
A: Tidak perlu hafal. Tailwind punya dokumentasi lengkap dan autocomplete di VS Code. Pahami konsepnya, sisanya bisa dilihat di dokumentasi.

**Q: Bolehkah pakai CSS biasa tanpa Tailwind?**  
A: Boleh, tapi di course ini kita fokus ke Tailwind karena lebih cepat dan konsisten. Di industri modern, Tailwind sudah jadi standar.

**Q: Apa itu CSS Variables?**  
A: CSS Variables (custom properties) adalah cara menyimpan nilai CSS yang bisa dipakai ulang. Contoh: `--color-primary: #3b82f6;` lalu pakai `color: var(--color-primary);`. Berguna untuk theming.

**Q: Bagaimana cara test responsive tanpa device asli?**  
A: Gunakan Chrome DevTools → Toggle Device Toolbar (Ctrl+Shift+M). Anda bisa test di berbagai ukuran layar (mobile, tablet, desktop) tanpa device fisik.

---

## 15. 🎓 Preview Modul Selanjutnya

Setelah menyelesaikan modul ini, Anda akan lanjut ke:

### 📘 Modul 03: JavaScript ES6+ & Bun
- **Topik:** JavaScript modern, TypeScript, Bun runtime
- **Tools:** Bun, TypeScript
- **Output:** Filter produk interaktif, manipulasi data JSON
- **Estimasi:** 32 JP

> 🎯 **Benang merah:** Katalog produk yang sudah di-style di Modul 02 akan menjadi **interaktif** di Modul 03 dengan JavaScript. Anda akan menambahkan filter, search, dan sorting!

---

## 16. 📜 Informasi Administratif

| Aspek | Keterangan |
|:---|:---|
| **Mata Pelajaran** | Web Development Modern |
| **Kelas / Level** | X / Pemula (Level 1 dari 4) |
| **Modul** | 02 dari 24 |
| **Semester** | Ganjil (Bab 2 Roadmap) |
| **Alokasi Waktu** | 24 JP (6 TM × 4 JP) |
| **Versi** | 1.0 (Juli 2026) |
| **License** | MIT |
| **Author** | Tim Pengembang Course |
| **Stack** | Tailwind CSS + Chrome DevTools + CSS Variables |
| **Kontak Guru** | Via Google Classroom / GitHub Issues |

---

<div align="center">

### 🚀 **Selamat Belajar & Selamat Berkarya dengan CSS Modern!**

> *"Design is not just what it looks like and feels like. Design is how it works."* — Steve Jobs

**Mulai dari `materi_02.md` →** [Buka Panduan Interaktif](./materi_02.md)

*Dibuat dengan ❤️ untuk generasi developer Indonesia*

</div>