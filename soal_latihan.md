# 🎁 SOAL LATIHAN BONUS — MODUL 02

> **Mata Pelajaran:** Web Development Modern
> **Level:** 🟢 Pemula | **Bonus:** +20 poin
> **Status:** ⭐ OPSIONAL (tidak wajib, tapi sangat disarankan!)

---

## 👤 Identitas Siswa

| Field | Isi |
|:---|:---|
| **Nama Lengkap** | |
| **Kelas / Level** | |
| **Tanggal Pengerjaan** | |

---

## 🎯 Tentang Soal Latihan Bonus

File ini berisi **tantangan tambahan** untuk siswa yang ingin:
- 🏆 Mendapatkan **bonus poin +20** (di luar 100 poin utama)
- 💪 Menguji pemahaman lebih dalam tentang CSS & Tailwind
- 📈 Mempersiapkan portofolio yang lebih kuat
- 🚀 Menantang diri sendiri dengan fitur advanced

**Waktu pengerjaan:** 180 menit (disarankan)

---

## 📋 Daftar Tantangan

| # | Tantangan | Bonus | Tingkat Kesulitan |
|:-:|:---|:---:|:---:|
| 1 | Dark Mode dengan CSS Variables | +10 poin | ⭐⭐⭐ |
| 2 | Animasi & Transisi Advanced | +10 poin | ⭐⭐⭐⭐ |
| **TOTAL** | | **+20 poin** | |

---

## 🏆 TANTANGAN 1: Dark Mode dengan CSS Variables (+10 poin)

### 🎯 Deskripsi

Implementasikan **Dark Mode** untuk katalog produk menggunakan CSS Variables dan media query `prefers-color-scheme`. Halaman harus otomatis berubah ke dark mode jika user preference adalah dark.

### 📐 Spesifikasi Teknis

#### A. CSS Variables untuk Dark Mode

Tambahkan di `src/styles/main.css`:

```css
/* Dark Mode Variables */
@media (prefers-color-scheme: dark) {
  :root {
    --color-primary: #60a5fa;
    --color-secondary: #4ade80;
    --color-accent: #fb923c;
    --color-bg: #111827;
    --color-text: #f9fafb;
    --color-muted: #9ca3af;
  }

  body {
    background-color: var(--color-bg);
    color: var(--color-text);
  }

  .card-product {
    background-color: #1f2937;
    border-color: #374151;
  }

  .nav-link {
    color: var(--color-text);
  }
}
```

#### B. Toggle Button (Opsional, Bonus +3 poin)

Tambahkan button untuk toggle dark mode manual:

```html
<button id="theme-toggle" class="fixed bottom-4 right-4 bg-primary-600 text-white p-3 rounded-full shadow-lg hover:bg-primary-700 transition">
  🌙
</button>
```

### ✅ Acceptance Criteria

**Dark Mode Otomatis:**
- [ ] CSS Variables terdefinisi untuk dark mode
- [ ] Background berubah jadi gelap di dark mode
- [ ] Teks berubah jadi terang di dark mode
- [ ] Kartu produk memiliki background gelap
- [ ] Kontras warna WCAG compliant (minimal 4.5:1)

**Komponen yang Berubah:**
- [ ] Header background
- [ ] Hero section gradient
- [ ] Kartu produk background & border
- [ ] Teks (heading, paragraph, price)
- [ ] Button colors
- [ ] Badge colors
- [ ] Footer background

**Toggle Button (Bonus +3):**
- [ ] Button fixed di pojok kanan bawah
- [ ] Icon berubah (🌙 ↔ ☀️)
- [ ] Click toggle dark mode
- [ ] State tersimpan di localStorage

### 📸 Screenshot

**Light Mode:**
```
[Paste screenshot di sini]
```

**Dark Mode:**
```
[Paste screenshot di sini]
```

**Toggle Button:**
```
[Paste screenshot di sini]
```

### 🔗 Link GitHub

```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

### 📝 Self-Assessment

| Aspek | Skor Mandiri (0-10) |
|:---|:---:|
| CSS Variables implementation | |
| Dark mode consistency | |
| Color contrast (WCAG) | |
| Toggle functionality | |
| User experience | |
| **Total** | **/50** |

---

## 🏆 TANTANGAN 2: Animasi & Transisi Advanced (+10 poin)

### 🎯 Deskripsi

Tambahkan **animasi dan transisi** untuk meningkatkan user experience pada katalog produk. Gunakan CSS animations dan Tailwind transition utilities.

### 📐 Spesifikasi Animasi

#### A. Hover Effects pada Kartu Produk

```html
<article class="card-product group">
  <div class="overflow-hidden">
    <img class="group-hover:scale-110 transition-transform duration-500" />
  </div>
  <div class="group-hover:shadow-xl transition-shadow duration-300">
    <!-- Content -->
  </div>
</article>
```

#### B. Animasi Fade-In saat Scroll

Tambahkan animasi fade-in saat kartu produk muncul di viewport:

```css
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}
```

#### C. Loading Skeleton

Tambahkan loading skeleton saat gambar produk loading:

```html
<div class="animate-pulse bg-gray-200 h-48 rounded-t-lg"></div>
```

#### D. Button Ripple Effect

Tambahkan ripple effect pada button saat diklik:

```css
.btn-ripple {
  position: relative;
  overflow: hidden;
}

.btn-ripple::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 0;
  height: 0;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.5);
  transform: translate(-50%, -50%);
  transition: width 0.6s, height 0.6s;
}

.btn-ripple:active::after {
  width: 300px;
  height: 300px;
}
```

### ✅ Acceptance Criteria

**Hover Effects:**
- [ ] Kartu produk scale saat hover (`group-hover:scale-105`)
- [ ] Gambar zoom saat hover (`group-hover:scale-110`)
- [ ] Shadow berubah saat hover
- [ ] Transisi smooth (`transition duration-300`)

**Scroll Animations:**
- [ ] Kartu produk fade-in saat muncul di viewport
- [ ] Animasi smooth (0.6s ease-out)
- [ ] Tidak ada jank atau lag

**Loading States:**
- [ ] Skeleton loading untuk gambar
- [ ] Pulse animation (`animate-pulse`)
- [ ] Smooth transition ke gambar asli

**Button Effects:**
- [ ] Ripple effect pada button
- [ ] Hover state berubah
- [ ] Active state terlihat
- [ ] Focus indicator tetap ada

**Performance:**
- [ ] Animasi tidak mempengaruhi performance
- [ ] Tidak ada layout shift
- [ ] Smooth di mobile device

### 📸 Screenshot

**Hover Effect:**
```
[Paste screenshot di sini]
```

**Loading Skeleton:**
```
[Paste screenshot di sini]
```

**Button Ripple:**
```
[Paste screenshot di sini]
```

### 🔗 Link GitHub

```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

### 📝 Self-Assessment

| Aspek | Skor Mandiri (0-10) |
|:---|:---:|
| Hover effects quality | |
| Animation smoothness | |
| Loading states | |
| Button interactions | |
| Performance impact | |
| **Total** | **/50** |

---

## 📊 Rekapitulasi Bonus

| Tantangan | Bobot | Status | Poin |
|:---|:---:|:---:|:---:|
| Tantangan 1: Dark Mode | +10 | [ ] | /10 |
| Tantangan 2: Animasi & Transisi | +10 | [ ] | /10 |
| **TOTAL BONUS** | **+20** | | **/20** |

---

## 📤 Submission Guidelines

### Langkah-langkah Submit

```bash
# 1. Pastikan sudah di branch yang benar
git checkout modul-02-nama-anda

# 2. Tambahkan file baru
git add src/styles/main.css
git add src/praktikum/tugas-01.html

# 3. Commit
git commit -m "feat(modul-02): add dark mode and advanced animations"

# 4. Push
git push origin modul-02-nama-anda
```

### File yang Di-submit

- [ ] `src/styles/main.css` (dengan dark mode variables)
- [ ] `src/praktikum/tugas-01.html` (dengan animasi)
- [ ] 6 screenshot (3 untuk tantangan 1, 3 untuk tantangan 2)
- [ ] Link branch GitHub

---

## 💡 Tips Mengerjakan

### 🎯 Prioritas

1. **Selesaikan KUIS.md dulu** (100 poin wajib)
2. **Kerjakan soal_latihan.md** jika masih ada waktu
3. **Fokus kualitas**, bukan kuantitas

### 🛠️ Tools yang Membantu

- **DevTools** (F12) — Inspeksi dan debugging
- **Lighthouse** — Audit accessibility & performance
- **W3C Validator** — Validasi HTML
- **Responsive Design Mode** — Test di berbagai ukuran layar
- **Color Contrast Checker** — Cek kontras warna WCAG

### 📚 Referensi Tambahan

- [Tailwind CSS Animations](https://tailwindcss.com/docs/animation)
- [CSS Tricks: Dark Mode](https://css-tricks.com/dark-mode-css-custom-properties/)
- [Web.dev: Animations](https://web.dev/animations/)
- [Can I Use: prefers-color-scheme](https://caniuse.com/prefers-color-scheme)

---

## 🏆 Penghargaan

Siswa yang menyelesaikan **kedua tantangan** dengan skor minimal 80/100 akan mendapatkan:

- 🏅 **Sertifikat "CSS Master"** (digital badge)
- 🌟 **Highlight di Google Classroom**
- 📚 **Rekomendasi untuk proyek selanjutnya**
- 🎁 **Bonus poin +20** ditambahkan ke nilai akhir

---

<div align="center">

### 🚀 **Selamat Mengerjakan Tantangan Bonus!**

> *"The only way to do great work is to love what you do."* — Steve Jobs

**Total Bonus Poin: _____ / 20**

</div>
