# 📚 Panduan Interaktif: CSS3 & Tailwind CSS Dasar

> **Modul:** 02 | **Level:** 🟢 Pemula | **Estimasi:** 24 JP (6 TM)
> **Tools:** Tailwind 💨 + Chrome DevTools 🌐 + CSS Variables 🎨
> **Konteks:** Styling katalog produk E-Commerce dari Modul 01

---

## 🎯 Tujuan Pembelajaran

Setelah menyelesaikan panduan ini, Anda **mampu**:

1. 🎨 Menjelaskan konsep CSS3 modern (Flexbox, Grid, Variables)
2. 📐 Menerapkan Flexbox untuk layout 1 dimensi
3. 🎯 Menerapkan CSS Grid untuk layout 2 dimensi
4. 📱 Mengimplementasikan Mobile-First Design dengan Tailwind
5. 🎨 Membuat tema toko dengan CSS Variables
6. 🔍 Menganalisis styling dengan Chrome DevTools

---

## ⏱️ Estimasi Waktu Total

| Section | Durasi | Tipe |
|:---|:---:|:---:|
| Persiapan Environment | 30' | Setup |
| Section 1: Konsep CSS3 Modern | 60' | Teori |
| Section 2: Flexbox Layout | 210' | Teori + Live Coding |
| Section 3: CSS Grid Layout | 210' | Teori + Live Coding |
| Section 4: Mobile-First Design | 210' | Teori + Live Coding |
| Section 5: CSS Variables & DevTools | 180' | Teori + Live Coding |
| Tugas Mandiri: Restyle Katalog | 180' | Praktik |
| Submission & Review | 60' | Review |
| **TOTAL** | **~24 jam** | |

---

## 🚀 Persiapan Environment (30 menit)

### Step 1: Cek Tools

Buka terminal di Codespaces dan jalankan:

```bash
node --version    # Harus: v20.x.x
bun --version     # Harus: 1.x.x
```

Jika `bun: command not found`, jalankan:
```bash
source ~/.bashrc
```

### Step 2: Install Dependencies

```bash
cd level-01-pemula/modul-02-tailwind-css
bun install
```

### Step 3: Jalankan Dev Server

```bash
bun run dev
```

Browser preview akan terbuka otomatis di port `5173`.

### Step 4: Setup Split Screen

Atur VS Code Anda seperti ini:

```
┌──────────────────────────┬──────────────────────────┐
│                          │                          │
│   VS Code Editor         │   Browser Preview        │
│   (materi_02.md +        │   (http://localhost:5173)│
│    file kode)            │                          │
│                          │                          │
└──────────────────────────┴──────────────────────────┘
```

### Step 5: Siapkan Chrome DevTools

1. Buka browser preview
2. Tekan `F12` atau `Ctrl+Shift+I` untuk buka DevTools
3. Pilih tab **"Elements"** (untuk inspeksi HTML & CSS)
4. Klik ikon 📱 (Toggle Device Toolbar) untuk test responsive
5. Pilih tab **"Console"** (untuk test JavaScript nanti)

### Step 6: Siapkan HTML dari Modul 01

Copy file `src/praktikum/tugas-01.html` dari **Modul 01** ke Modul 02. Ini akan jadi starting point untuk di-style.

- [ ] ✅ **Checkpoint Persiapan:** Environment siap, DevTools terbuka, HTML Modul 01 sudah di-copy

---

## 📖 Section 1: Konsep CSS3 Modern (60 menit)

### 📘 Teori Singkat

**CSS3** adalah evolusi terbaru dari CSS yang memperkenalkan fitur-fitur modern untuk layout dan styling.

### 🔑 Konsep Kunci

#### A. Box Model

Setiap elemen HTML adalah "kotak" yang terdiri dari:

```
┌─────────────────────────────┐  ← margin (jarak luar)
│  ┌───────────────────────┐  │
│  │  ┌─────────────────┐  │  │  ← border (garis tepi)
│  │  │  ┌───────────┐  │  │  │
│  │  │  │  CONTENT  │  │  │  │  ← content (isi)
│  │  │  └───────────┘  │  │  │
│  │  └─────────────────┘  │  │  ← padding (jarak dalam)
│  └───────────────────────┘  │
└─────────────────────────────┘
```

#### B. Display Types

| Display | Fungsi | Contoh Penggunaan |
|:---|:---|:---|
| `block` | Memenuhi lebar penuh | `<div>`, `<p>`, `<h1>` |
| `inline` | Hanya selebar konten | `<span>`, `<a>`, `<strong>` |
| `inline-block` | Inline tapi bisa di-set width/height | `<img>`, `<button>` |
| `flex` | Layout 1 dimensi (Flexbox) | Navigasi, kartu produk |
| `grid` | Layout 2 dimensi (Grid) | Katalog produk, dashboard |
| `none` | Sembunyikan elemen | Toggle menu mobile |

#### C. Positioning

| Position | Fungsi |
|:---|:---|
| `static` | Default, mengikuti flow dokumen |
| `relative` | Relatif terhadap posisi normal |
| `absolute` | Relatif terhadap parent positioned |
| `fixed` | Relatif terhadap viewport (sticky di layar) |
| `sticky` | Hybrid relative + fixed |

### 🎯 Mengapa Penting untuk E-Commerce?

1. **Layout Modern** — Flexbox & Grid menggantikan teknik lama (float, table)
2. **Responsive** — Media queries + Tailwind breakpoints
3. **Performance** — CSS3 lebih efisien daripada JavaScript untuk animasi
4. **Maintainability** — Kode lebih mudah dibaca dan di-maintain

### 🎮 Game Learning (Opsional tapi Recommended)

Sebelum lanjut, coba mainkan game ini untuk memahami konsep:

1. **Flexbox Froggy** — https://flexboxfroggy.com/
   - 14 level belajar Flexbox
   - Waktu: ~20 menit

2. **Grid Garden** — https://cssgridgarden.com/
   - 28 level belajar CSS Grid
   - Waktu: ~30 menit

> 💡 **Tips:** Kerjakan game ini di waktu luang. Konsep yang dipelajari akan sangat membantu di Live Coding berikutnya.

### 📝 Catatan Belajar

```
CSS3 Modern = Box Model + Display Types + Positioning + Flexbox + Grid + Variables
```

- [ ] ✅ **Checkpoint #1:** Saya sudah memahami konsep dasar CSS3 Modern

---

## 📖 Section 2: Flexbox Layout (210 menit)

### 📘 Teori Singkat

**Flexbox** (Flexible Box Layout) adalah metode layout **1 dimensi** — mengatur item dalam **baris ATAU kolom**.

### 🔑 Konsep Kunci

#### A. Container vs Items

```html
<!-- Flex Container -->
<div class="flex">
  <!-- Flex Items -->
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

#### B. Main Axis vs Cross Axis

```
           Main Axis (horizontal)
           ─────────────────────────►

  Cross    ┌─────┐ ┌─────┐ ┌─────┐
  Axis     │  1  │ │  2  │ │  3  │
    │      └─────┘ └─────┘ └─────┘
    ▼
```

#### C. Properti Penting

**Di Container:**
| Properti | Fungsi | Contoh Tailwind |
|:---|:---|:---|
| `display: flex` | Aktifkan Flexbox | `flex` |
| `flex-direction` | Arah main axis | `flex-row`, `flex-col` |
| `justify-content` | Alignment main axis | `justify-center`, `justify-between` |
| `align-items` | Alignment cross axis | `items-center`, `items-start` |
| `flex-wrap` | Wrap items ke baris baru | `flex-wrap` |
| `gap` | Jarak antar items | `gap-4`, `gap-6` |

**Di Items:**
| Properti | Fungsi | Contoh Tailwind |
|:---|:---|:---|
| `flex-grow` | Item membesar mengisi ruang | `flex-1`, `flex-grow` |
| `flex-shrink` | Item mengecil jika kurang ruang | `flex-shrink-0` |
| `flex-basis` | Ukuran awal item | `basis-1/3` |
| `align-self` | Override alignment item | `self-center` |

### 🎬 LIVE CODING #1: Flexbox untuk Navigasi & Kartu Produk

**File:** `src/examples/01-flexbox-basics.html`

#### Langkah 1: Navigasi Horizontal

Buka file `src/examples/01-flexbox-basics.html` dan ganti isinya dengan:

```html
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 01: Flexbox Basics</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">

  <header class="bg-white shadow-sm">
    <h1 class="text-2xl font-bold p-4">Contoh 01: Flexbox Basics</h1>
  </header>

  <main class="container mx-auto p-4 space-y-8">

    <!-- DEMO 1: Navigasi Horizontal -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🧭 Demo 1: Navigasi Horizontal</h2>

      <!-- Coba ubah class di bawah ini dan lihat perubahannya -->
      <nav class="flex items-center justify-between bg-primary-600 text-white p-4 rounded-lg">
        <div class="text-xl font-bold">🌐 Toko Digital</div>
        <ul class="flex space-x-6">
          <li><a href="#" class="hover:underline">Beranda</a></li>
          <li><a href="#" class="hover:underline">Katalog</a></li>
          <li><a href="#" class="hover:underline">Tentang</a></li>
          <li><a href="#" class="hover:underline">Kontak</a></li>
        </ul>
      </nav>

      <div class="mt-4 bg-blue-50 p-3 rounded text-sm">
        <strong>💡 Coba edit:</strong> Ganti <code>justify-between</code> dengan
        <code>justify-center</code>, <code>justify-start</code>, atau <code>justify-end</code>
      </div>
    </section>

    <!-- DEMO 2: Kartu Produk dengan Flexbox -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🛍️ Demo 2: Kartu Produk Fleksibel</h2>

      <div class="flex gap-4">
        <!-- Kartu Produk -->
        <article class="flex-1 bg-white border rounded-lg overflow-hidden">
          <img src="https://images.unsplash.com/photo-1603302576832-01eb16b7a5b8?w=400&h=200&fit=crop" alt="Laptop" class="w-full h-48 object-cover">
          <div class="p-4 flex flex-col">
            <h3 class="font-bold text-lg">Laptop Gaming</h3>
            <p class="text-gray-600 text-sm flex-1">Performa tinggi untuk gaming profesional</p>
            <div class="flex justify-between items-center mt-3">
              <span class="text-2xl font-bold text-secondary-600">Rp 15.000.000</span>
              <button class="bg-primary-600 text-white px-4 py-2 rounded hover:bg-primary-700">Beli</button>
            </div>
          </div>
        </article>

        <article class="flex-1 bg-white border rounded-lg overflow-hidden">
          <img src="https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&h=200&fit=crop" alt="Mouse" class="w-full h-48 object-cover">
          <div class="p-4 flex flex-col">
            <h3 class="font-bold text-lg">Mouse Wireless</h3>
            <p class="text-gray-600 text-sm flex-1">Ergonomis dan presisi</p>
            <div class="flex justify-between items-center mt-3">
              <span class="text-2xl font-bold text-secondary-600">Rp 250.000</span>
              <button class="bg-primary-600 text-white px-4 py-2 rounded hover:bg-primary-700">Beli</button>
            </div>
          </div>
        </article>
      </div>

      <div class="mt-4 bg-green-50 p-3 rounded text-sm">
        <strong>💡 Perhatikan:</strong> Class <code>flex-1</code> membuat kedua kartu memiliki lebar yang sama.
        Class <code>flex-1</code> di dalam <code>&lt;p&gt;</code> membuat deskripsi mengisi ruang kosong.
      </div>
    </section>

    <!-- DEMO 3: Centering dengan Flexbox -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🎯 Demo 3: Centering Sempurna</h2>

      <div class="flex items-center justify-center h-64 bg-gradient-to-r from-primary-500 to-secondary-500 rounded-lg">
        <div class="text-center text-white">
          <h3 class="text-3xl font-bold">Centered Content</h3>
          <p class="mt-2">Horizontal & Vertical Centering dengan Flexbox</p>
        </div>
      </div>

      <div class="mt-4 bg-yellow-50 p-3 rounded text-sm">
        <strong>💡 Rumus Centering:</strong> <code>flex items-center justify-center</code>
      </div>
    </section>

  </main>
</body>
</html>
```

#### Langkah 2: Eksplorasi di DevTools

1. **Buka DevTools** (F12)
2. **Klik ikon panah** (🔍) di kiri atas DevTools
3. **Klik pada navigasi** → lihat struktur Flexbox di panel Elements
4. **Coba toggle** properti Flexbox di panel Styles:
   - Klik icon di sebelah `display: flex` untuk disable/enable
   - Lihat bagaimana layout berubah

#### Langkah 3: Tantangan

**Tantangan 1:** Ubah navigasi menjadi **vertical** (kolom) di mobile
```html
<!-- Tambahkan class ini -->
<nav class="flex flex-col md:flex-row ...">
```

**Tantangan 2:** Buat 3 kartu produk dengan lebar berbeda
```html
<!-- Kartu 1: lebar 2x -->
<article class="flex-[2]">...</article>
<!-- Kartu 2 & 3: lebar normal -->
<article class="flex-1">...</article>
<article class="flex-1">...</article>
```

- [ ] ✅ **Checkpoint #2:** Saya sudah memahami Flexbox dasar dan bisa membuat navigasi + kartu produk

---

## 📖 Section 3: CSS Grid Layout (210 menit)

### 📘 Teori Singkat

**CSS Grid** adalah metode layout **2 dimensi** — mengatur item dalam **baris DAN kolom** sekaligus.

### 🔑 Konsep Kunci

#### A. Container vs Items

```html
<!-- Grid Container -->
<div class="grid">
  <!-- Grid Items -->
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

#### B. Properti Penting

**Di Container:**
| Properti | Fungsi | Contoh Tailwind |
|:---|:---|:---|
| `display: grid` | Aktifkan Grid | `grid` |
| `grid-template-columns` | Definisi kolom | `grid-cols-3`, `grid-cols-[1fr_2fr]` |
| `grid-template-rows` | Definisi baris | `grid-rows-2` |
| `gap` | Jarak antar items | `gap-4`, `gap-6` |
| `grid-auto-flow` | Arah auto-placement | `grid-flow-row`, `grid-flow-col` |

**Di Items:**
| Properti | Fungsi | Contoh Tailwind |
|:---|:---|:---|
| `grid-column` | Span kolom | `col-span-2` |
| `grid-row` | Span baris | `row-span-2` |
| `justify-self` | Alignment horizontal | `justify-self-center` |
| `align-self` | Alignment vertical | `align-self-start` |

### 🎬 LIVE CODING #2: CSS Grid untuk Katalog Produk

**File:** `src/examples/02-grid-layout.html`

#### Langkah 1: Grid Dasar untuk Katalog

Buka file `src/examples/02-grid-layout.html` dan ganti isinya dengan:

```html
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 02: Grid Layout</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">

  <header class="bg-white shadow-sm">
    <h1 class="text-2xl font-bold p-4">Contoh 02: Grid Layout</h1>
  </header>

  <main class="container mx-auto p-4 space-y-8">

    <!-- DEMO 1: Grid Dasar 3 Kolom -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🎯 Demo 1: Grid 3 Kolom</h2>

      <div class="grid grid-cols-3 gap-4">
        <div class="bg-primary-100 p-6 rounded text-center">1</div>
        <div class="bg-primary-200 p-6 rounded text-center">2</div>
        <div class="bg-primary-300 p-6 rounded text-center">3</div>
        <div class="bg-primary-400 p-6 rounded text-center">4</div>
        <div class="bg-primary-500 p-6 rounded text-center text-white">5</div>
        <div class="bg-primary-600 p-6 rounded text-center text-white">6</div>
      </div>

      <div class="mt-4 bg-blue-50 p-3 rounded text-sm">
        <strong>💡 Coba edit:</strong> Ganti <code>grid-cols-3</code> dengan
        <code>grid-cols-2</code>, <code>grid-cols-4</code>, atau <code>grid-cols-6</code>
      </div>
    </section>

    <!-- DEMO 2: Grid Responsif dengan auto-fit -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">📱 Demo 2: Grid Responsif (auto-fit)</h2>

      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <article class="bg-white border rounded-lg overflow-hidden shadow hover:shadow-lg transition">
          <img src="https://images.unsplash.com/photo-1603302576832-01eb16b7a5b8?w=400&h=250&fit=crop" alt="Laptop" class="w-full h-48 object-cover">
          <div class="p-4">
            <h3 class="font-bold">Laptop Gaming</h3>
            <p class="text-sm text-gray-600">Performa tinggi</p>
            <p class="text-xl font-bold text-secondary-600 mt-2">Rp 15.000.000</p>
          </div>
        </article>

        <article class="bg-white border rounded-lg overflow-hidden shadow hover:shadow-lg transition">
          <img src="https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&h=250&fit=crop" alt="Mouse" class="w-full h-48 object-cover">
          <div class="p-4">
            <h3 class="font-bold">Mouse Wireless</h3>
            <p class="text-sm text-gray-600">Ergonomis</p>
            <p class="text-xl font-bold text-secondary-600 mt-2">Rp 250.000</p>
          </div>
        </article>

        <article class="bg-white border rounded-lg overflow-hidden shadow hover:shadow-lg transition">
          <img src="https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400&h=250&fit=crop" alt="Keyboard" class="w-full h-48 object-cover">
          <div class="p-4">
            <h3 class="font-bold">Keyboard Mechanical</h3>
            <p class="text-sm text-gray-600">RGB lighting</p>
            <p class="text-xl font-bold text-secondary-600 mt-2">Rp 750.000</p>
          </div>
        </article>
      </div>

      <div class="mt-4 bg-green-50 p-3 rounded text-sm">
        <strong>💡 Responsive Breakpoints:</strong><br>
        • <code>grid-cols-1</code> → Mobile (1 kolom)<br>
        • <code>md:grid-cols-2</code> → Tablet (2 kolom)<br>
        • <code>lg:grid-cols-3</code> → Desktop (3 kolom)
      </div>
    </section>

    <!-- DEMO 3: Grid dengan Spanning -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🎨 Demo 3: Grid dengan Spanning</h2>

      <div class="grid grid-cols-4 gap-4">
        <div class="col-span-2 bg-accent-500 text-white p-6 rounded">Featured Product (col-span-2)</div>
        <div class="bg-primary-100 p-6 rounded">1</div>
        <div class="bg-primary-200 p-6 rounded">2</div>
        <div class="bg-primary-300 p-6 rounded">3</div>
        <div class="col-span-2 row-span-2 bg-secondary-500 text-white p-6 rounded">Promo Banner (col-span-2, row-span-2)</div>
        <div class="bg-primary-400 p-6 rounded">4</div>
        <div class="bg-primary-500 text-white p-6 rounded">5</div>
      </div>

      <div class="mt-4 bg-yellow-50 p-3 rounded text-sm">
        <strong>💡 Spanning:</strong> <code>col-span-2</code> = item melebar 2 kolom.
        <code>row-span-2</code> = item melebar 2 baris.
      </div>
    </section>

  </main>
</body>
</html>
```

#### Langkah 2: Test Responsive di DevTools

1. **Buka DevTools** (F12)
2. **Klik ikon 📱** (Toggle Device Toolbar)
3. **Pilih device:**
   - iPhone SE (375px) → harus 1 kolom
   - iPad (768px) → harus 2 kolom
   - Desktop (1280px) → harus 3 kolom
4. **Perhatikan** bagaimana grid otomatis menyesuaikan

#### Langkah 3: Tantangan

**Tantangan:** Buat layout dashboard E-Commerce dengan:
- Header full-width
- Sidebar kiri (1 kolom)
- Main content (3 kolom)
- Footer full-width

```html
<div class="grid grid-cols-4 gap-4">
  <header class="col-span-4 bg-primary-600 text-white p-4">Header</header>
  <aside class="col-span-1 bg-gray-200 p-4">Sidebar</aside>
  <main class="col-span-3 bg-white p-4">Main Content</main>
  <footer class="col-span-4 bg-gray-800 text-white p-4">Footer</footer>
</div>
```

- [ ] ✅ **Checkpoint #3:** Saya sudah memahami CSS Grid dan bisa membuat katalog produk responsif

---

## 📖 Section 4: Mobile-First Design (210 menit)

### 📘 Teori Singkat

**Mobile-First Design** adalah metodologi di mana kita **mendesign untuk mobile dulu**, baru kemudian enhance untuk tablet dan desktop.

### 🔑 Mengapa Mobile-First?

| Statistik | Nilai |
|:---|:---:|
| Traffic web dari mobile | **> 70%** |
| User expectation (load time) | **< 3 detik** |
| Google ranking factor | **Mobile-friendly** |

### 🔑 Konsep Kunci

#### A. Breakpoints Tailwind

| Prefix | Min-width | Device |
|:---|:---:|:---|
| (default) | 0px | 📱 Mobile |
| `sm:` | 640px | 📱 Large Mobile |
| `md:` | 768px | 📱 Tablet |
| `lg:` | 1024px | 💻 Laptop |
| `xl:` | 1280px | 💻 Desktop |
| `2xl:` | 1536px | 🖥️ Large Desktop |

#### B. Pola Mobile-First

```html
<!-- Mobile: 1 kolom (default) -->
<!-- Tablet: 2 kolom (md:) -->
<!-- Desktop: 3 kolom (lg:) -->
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
  ...
</div>
```

**Prinsip:** Tulis styling mobile **tanpa prefix**, lalu tambahkan prefix untuk layar lebih besar.

### 🎬 LIVE CODING #3: Mobile-First dengan Tailwind

**File:** `src/examples/03-responsive-design.html`

#### Langkah 1: Navbar Responsif

Buka file `src/examples/03-responsive-design.html` dan ganti isinya dengan:

```html
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 03: Responsive Design</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">

  <!-- NAVBAR RESPONSIF -->
  <header class="bg-white shadow-sm sticky top-0 z-50">
    <nav class="container mx-auto px-4 py-4">
      <div class="flex items-center justify-between">

        <!-- Logo (selalu tampil) -->
        <div class="flex items-center space-x-2">
          <span class="text-2xl">🌐</span>
          <h1 class="text-xl font-bold text-primary-700">Toko Digital</h1>
        </div>

        <!-- Menu Desktop (hidden di mobile) -->
        <ul class="hidden md:flex space-x-6">
          <li><a href="#" class="nav-link nav-link-active">Beranda</a></li>
          <li><a href="#" class="nav-link">Katalog</a></li>
          <li><a href="#" class="nav-link">Tentang</a></li>
          <li><a href="#" class="nav-link">Kontak</a></li>
        </ul>

        <!-- Hamburger Button (tampil di mobile saja) -->
        <button class="md:hidden text-gray-600" aria-label="Menu">
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
          </svg>
        </button>
      </div>
    </nav>
  </header>

  <main class="container mx-auto p-4 space-y-8">

    <!-- DEMO 1: Text Responsif -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">📝 Demo 1: Text Responsif</h2>

      <h3 class="text-2xl md:text-3xl lg:text-4xl font-bold mb-2">
        Judul yang Berubah Ukuran
      </h3>
      <p class="text-sm md:text-base lg:text-lg text-gray-600">
        Paragraf ini juga berubah ukuran sesuai breakpoint.
        Mobile: text-sm, Tablet: text-base, Desktop: text-lg.
      </p>

      <div class="mt-4 bg-blue-50 p-3 rounded text-sm">
        <strong>💡 Tipografi Responsif:</strong> Gunakan prefix untuk mengubah ukuran font di breakpoint berbeda.
      </div>
    </section>

    <!-- DEMO 2: Layout yang Berubah -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">🎨 Demo 2: Layout yang Berubah</h2>

      <!-- Mobile: stack vertical, Desktop: side-by-side -->
      <div class="flex flex-col md:flex-row gap-6">
        <div class="md:w-1/3 bg-primary-100 p-6 rounded">
          <h3 class="font-bold mb-2">Sidebar</h3>
          <p class="text-sm">Di mobile: full-width di atas. Di desktop: 1/3 lebar di kiri.</p>
        </div>
        <div class="md:w-2/3 bg-secondary-100 p-6 rounded">
          <h3 class="font-bold mb-2">Main Content</h3>
          <p class="text-sm">Di mobile: full-width di bawah. Di desktop: 2/3 lebar di kanan.</p>
        </div>
      </div>

      <div class="mt-4 bg-green-50 p-3 rounded text-sm">
        <strong>💡 Pola Umum:</strong> <code>flex-col md:flex-row</code> = stack di mobile, side-by-side di desktop.
      </div>
    </section>

    <!-- DEMO 3: Hide/Show Element -->
    <section class="bg-white rounded-lg p-6 shadow">
      <h2 class="text-xl font-bold mb-4">👁️ Demo 3: Hide/Show Element</h2>

      <div class="space-y-4">
        <div class="bg-red-100 p-4 rounded">
          <strong class="hidden md:inline">🖥️ Desktop Only:</strong>
          <strong class="md:hidden">📱 Mobile Only:</strong>
          Teks ini berbeda di mobile vs desktop
        </div>

        <div class="bg-yellow-100 p-4 rounded hidden lg:block">
          <strong>💻 Hanya tampil di layar besar (lg+)</strong>
        </div>

        <div class="bg-green-100 p-4 rounded lg:hidden">
          <strong>📱 Hanya tampil di mobile & tablet (bukan desktop)</strong>
        </div>
      </div>

      <div class="mt-4 bg-yellow-50 p-3 rounded text-sm">
        <strong>💡 Utility Hide/Show:</strong><br>
        • <code>hidden md:block</code> → hidden di mobile, block di desktop<br>
        • <code>hidden lg:block</code> → hidden di mobile/tablet, block di desktop<br>
        • <code>lg:hidden</code> → block di mobile/tablet, hidden di desktop
      </div>
    </section>

  </main>
</body>
</html>
```

#### Langkah 2: Test di Berbagai Device

1. **Buka DevTools** (F12)
2. **Toggle Device Toolbar** (Ctrl+Shift+M)
3. **Test di berbagai device:**

| Device | Width | Expected |
|:---|:---:|:---|
| iPhone SE | 375px | Menu hamburger, layout stack |
| iPhone 12 | 390px | Menu hamburger, layout stack |
| iPad | 768px | Menu horizontal, layout side-by-side |
| iPad Pro | 1024px | Menu horizontal, layout side-by-side |
| Desktop | 1280px+ | Menu horizontal, layout side-by-side |

4. **Perhatikan** elemen yang muncul/hilang di breakpoint berbeda

#### Langkah 3: Tantangan

**Tantangan:** Buat halaman produk yang:
- Mobile: gambar di atas, detail di bawah
- Desktop: gambar di kiri (1/2), detail di kanan (1/2)

```html
<div class="flex flex-col md:flex-row gap-8">
  <div class="md:w-1/2">
    <img src="..." alt="Produk" class="w-full rounded">
  </div>
  <div class="md:w-1/2">
    <h2 class="text-3xl font-bold">Nama Produk</h2>
    <p class="text-gray-600">Deskripsi produk...</p>
    <p class="text-3xl font-bold text-secondary-600 mt-4">Rp 1.000.000</p>
    <button class="btn-primary mt-4">Beli Sekarang</button>
  </div>
</div>
```

- [ ] ✅ **Checkpoint #4:** Saya sudah memahami Mobile-First Design dan bisa membuat halaman responsif

---

## 📖 Section 5: CSS Variables & DevTools (180 menit)

### 📘 Teori Singkat

**CSS Variables** (Custom Properties) adalah cara menyimpan nilai CSS yang bisa dipakai ulang di seluruh website. Sangat berguna untuk **theming**.

### 🔑 Konsep Kunci

#### A. Definisi di `:root`

```css
:root {
  --color-primary: #3b82f6;
  --color-secondary: #22c55e;
  --spacing-md: 1rem;
}
```

#### B. Penggunaan dengan `var()`

```css
.button {
  background-color: var(--color-primary);
  padding: var(--spacing-md);
}
```

#### C. Keuntungan

1. **Konsistensi** — Warna sama di seluruh website
2. **Mudah diubah** — Ganti 1 variable, semua berubah
3. **Dark Mode** — Swap variables untuk tema berbeda
4. **Maintainability** — Kode lebih mudah di-maintain

### 🎬 LIVE CODING #4: CSS Variables untuk Tema Toko

**File:** `src/styles/main.css`

#### Langkah 1: Buka file `src/styles/main.css`

Perhatikan bagian `:root` di awal file:

```css
:root {
  --color-primary: #3b82f6;
  --color-secondary: #22c55e;
  --color-accent: #f97316;
  --color-bg: #f9fafb;
  --color-text: #111827;
  --color-muted: #6b7280;
  /* ... dan lainnya */
}
```

#### Langkah 2: Buat Tema Alternatif

Tambahkan di **paling bawah** file `main.css`:

```css
/* ============================================================
   TEMA ALTERNATIF: Dark Mode (akan aktif jika user prefer dark)
   ============================================================ */
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
}

/* ============================================================
   TEMA ALTERNATIF: Tema Merah (untuk toko fashion)
   ============================================================ */
.tema-fashion {
  --color-primary: #dc2626;
  --color-secondary: #db2777;
  --color-accent: #f59e0b;
}

/* ============================================================
   TEMA ALTERNATIF: Tema Hijau (untuk toko organik)
   ============================================================ */
.tema-organik {
  --color-primary: #059669;
  --color-secondary: #65a30d;
  --color-accent: #d97706;
}
```

#### Langkah 3: Test Tema

1. **Buka browser** → halaman harus tampil normal
2. **Test Dark Mode:**
   - DevTools → Tab "Rendering"
   - Centang "Emulate CSS media feature prefers-color-scheme: dark"
   - Halaman harus berubah jadi dark mode
3. **Test Tema Fashion:**
   - Edit `index.html`, tambahkan class `tema-fashion` di `<body>`:
   ```html
   <body class="bg-gray-50 text-gray-900 tema-fashion">
   ```
   - Warna primary harus berubah jadi merah

#### Langkah 4: Gunakan Variables di Komponen

Edit komponen di `main.css` untuk menggunakan variables:

```css
@layer components {
  .btn-primary {
    @apply btn text-white hover:opacity-90;
    background-color: var(--color-primary);
  }

  .price-tag {
    @apply text-2xl font-bold;
    color: var(--color-secondary);
  }
}
```

### 🎬 LIVE CODING #5: Chrome DevTools Debugging

**File:** `index.html` (atau file manapun)

#### Langkah 1: Inspeksi Elemen

1. **Klik kanan** pada elemen di halaman → **"Inspect"**
2. Panel Elements akan terbuka dengan elemen ter-highlight
3. **Panel Styles** di kanan menunjukkan semua CSS yang berlaku

#### Langkah 2: Edit CSS Live

1. Di panel Styles, **klik pada nilai** properti
2. **Ubah nilai** → lihat perubahan langsung di halaman
3. Contoh: ubah `padding: 1rem` → `padding: 2rem`

#### Langkah 3: Cek Box Model

1. Di panel Styles, scroll ke bawah
2. Lihat **Box Model diagram** (margin, border, padding, content)
3. Hover pada setiap bagian → di-highlight di halaman

#### Langkah 4: Test Responsive

1. **Toggle Device Toolbar** (Ctrl+Shift+M)
2. Pilih device dari dropdown
3. **Rotate** (Ctrl+Shift+E) untuk test landscape/portrait
4. **Custom size** → ketik ukuran custom

#### Langkah 5: Performance Analysis

1. Tab **"Lighthouse"** di DevTools
2. Pilih kategori: **Performance, Accessibility, Best Practices, SEO**
3. Klik **"Analyze page load"**
4. Lihat skor dan rekomendasi

### 📝 Catatan Belajar

```
CSS Variables = Theming yang konsisten
Chrome DevTools = Senjata utama web developer
```

- [ ] ✅ **Checkpoint #5:** Saya sudah memahami CSS Variables dan bisa debug dengan Chrome DevTools

---

## 🎯 Ringkasan Pembelajaran

### ✅ Yang Sudah Anda Pelajari

| Section | Konsep | Output |
|:---|:---|:---|
| 1. CSS3 Modern | Box Model, Display, Positioning | Pemahaman fondasi |
| 2. Flexbox | Layout 1D, justify/align | Navigasi & kartu produk |
| 3. CSS Grid | Layout 2D, template, span | Katalog produk responsif |
| 4. Mobile-First | Breakpoints, responsive | Halaman responsif |
| 5. Variables & DevTools | Theming, debugging | Tema toko + debugging skills |

### 📊 Progress Checklist

- [ ] ✅ Persiapan environment
- [ ] ✅ Live Coding #1: Flexbox
- [ ] ✅ Live Coding #2: CSS Grid
- [ ] ✅ Live Coding #3: Mobile-First
- [ ] ✅ Live Coding #4: CSS Variables
- [ ] ✅ Live Coding #5: Chrome DevTools

---

## 💪 Tugas Mandiri: Restyle Katalog Modul 01 (180 menit)

### 🎯 Deskripsi

Ambil HTML katalog produk yang sudah Anda buat di **Modul 01** (Tugas 01), lalu **style dengan Tailwind CSS** menggunakan konsep yang sudah dipelajari.

### 📂 File yang Dikerjakan

**Lokasi:** `src/praktikum/tugas-01.html`

### 📋 Checklist Pengerjaan

**Struktur:**
- [ ] Header dengan logo + navigasi responsif
- [ ] Hero section dengan gradient
- [ ] Katalog produk dengan Grid (3 kolom di desktop)
- [ ] Sidebar filter dengan Flexbox
- [ ] Footer dengan Grid

**Styling:**
- [ ] Gunakan komponen dari `main.css` (btn, card, badge, dll)
- [ ] Gunakan CSS Variables untuk warna
- [ ] Hover effects pada kartu produk
- [ ] Transisi smooth

**Responsive:**
- [ ] Mobile: 1 kolom
- [ ] Tablet: 2 kolom
- [ ] Desktop: 3 kolom
- [ ] Navbar: hamburger di mobile, horizontal di desktop

**Accessibility:**
- [ ] Focus indicator terlihat
- [ ] Alt text pada semua gambar
- [ ] Kontras warna WCAG compliant

### 📸 Screenshot yang Harus Diambil

1. **Desktop view** (1280px+)
2. **Tablet view** (768px)
3. **Mobile view** (375px)
4. **DevTools Lighthouse score** (Accessibility ≥ 90)

### 🔗 Link GitHub

```
https://github.com/[username]/web-development-modern-course/tree/modul-02-nama-anda
```

---

## 📤 Submission Checklist

Sebelum submit, pastikan:

### 📸 Screenshot (Wajib)
- [ ] Screenshot Live Coding #1 (Flexbox)
- [ ] Screenshot Live Coding #2 (Grid)
- [ ] Screenshot Live Coding #3 (Responsive)
- [ ] Screenshot Live Coding #4 (CSS Variables)
- [ ] Screenshot Live Coding #5 (DevTools)
- [ ] Screenshot tugas mandiri (desktop, tablet, mobile)

### 📝 File yang Sudah Diedit
- [ ] `src/examples/01-flexbox-basics.html`
- [ ] `src/examples/02-grid-layout.html`
- [ ] `src/examples/03-responsive-design.html`
- [ ] `src/praktikum/tugas-01.html` (restyle katalog)
- [ ] `src/praktikum/tugas-02.html` (navigasi responsif)

### 📋 Kuis & Tugas
- [ ] Kerjakan `KUIS.md` (100 poin)
- [ ] Kerjakan `PRAKTIKUM.md` (checklist)
- [ ] (Opsional) Kerjakan `soal_latihan.md` (+20 poin bonus)

### 🚀 Git Submission
```bash
# 1. Buat branch
git checkout -b modul-02-nama-anda

# 2. Commit
git add .
git commit -m "feat(modul-02): restyle katalog with Tailwind CSS"

# 3. Push
git push origin modul-02-nama-anda
```

### 📮 Submit ke Google Classroom
- [ ] Attach link branch GitHub
- [ ] Upload 6+ screenshot
- [ ] Submit sebelum deadline

---

## 🎓 Preview Modul Berikutnya

**📘 Modul 03: JavaScript ES6+ & Bun**

Di modul berikutnya, Anda akan:
- Mempelajari JavaScript modern (ES6+)
- Menggunakan Bun sebagai runtime
- Membuat filter produk interaktif
- Manipulasi data JSON
- **Output:** Katalog produk yang sudah di-style di Modul 02 menjadi **interaktif**

> 💡 **Benang merah:** HTML (Modul 01) → di-style (Modul 02) → jadi interaktif (Modul 03)

---

## 🏆 Selamat!

Anda telah menyelesaikan **Modul 02: CSS3 & Tailwind CSS Dasar**.

<div align="center">

### 🎨 **Karya Anda Sekarang Punya Style!**

> *"Good design is obvious. Great design is transparent."* — Joe Sparano

**Next:** Kerjakan `KUIS.md` → Submit → Lanjut Modul 03

</div>
