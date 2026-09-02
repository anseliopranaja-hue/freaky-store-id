#!/bin/bash

# ============================================================
# 🚀 SETUP SCRIPT - Modul 02: CSS3 & Tailwind CSS Dasar
# ============================================================
# Script ini akan generate semua file dan folder untuk Modul 02.
# Bersifat idempotent: file yang sudah ada TIDAK akan di-overwrite.
#
# CARA MENGGUNAKAN:
#   cd level-01-pemula/modul-02-tailwind-css
#   chmod +x setup.sh
#   ./setup.sh
#
# OPSI:
#   ./setup.sh --force    → Overwrite semua file (HATI-HATI!)
#   ./setup.sh --clean    → Hapus semua file hasil generate
# ============================================================

set -e

# ------------------------------------------------------------
# KONFIGURASI WARNA & UTILITAS
# ------------------------------------------------------------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Counter untuk statistik
FILES_CREATED=0
FILES_SKIPPED=0
DIRS_CREATED=0

# ------------------------------------------------------------
# FUNGSI HELPER
# ------------------------------------------------------------
print_header() {
  echo ""
  echo -e "${CYAN}╔══════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}  ${BOLD}$1${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝${NC}"
  echo ""
}

print_section() {
  echo ""
  echo -e "${BLUE}▶ $1${NC}"
}

create_dir() {
  local dir="$1"
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo -e "  ${GREEN}📁 Created directory:${NC} $dir"
    DIRS_CREATED=$((DIRS_CREATED + 1))
  else
    echo -e "  ${YELLOW}📁 Exists:${NC} $dir"
  fi
}

create_file() {
  local file="$1"
  local content="$2"
  local force="${3:-false}"

  if [ -f "$file" ] && [ "$force" != "true" ]; then
    echo -e "  ${YELLOW}⏭️  Skipped:${NC} $file (already exists)"
    FILES_SKIPPED=$((FILES_SKIPPED + 1))
    return 0
  fi

  # Buat direktori parent jika belum ada
  local dir=$(dirname "$file")
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
  fi

  echo "$content" > "$file"
  echo -e "  ${GREEN}✅ Created:${NC} $file"
  FILES_CREATED=$((FILES_CREATED + 1))
}

# ------------------------------------------------------------
# HANDLE ARGUMENTS
# ------------------------------------------------------------
FORCE_MODE=false
CLEAN_MODE=false

for arg in "$@"; do
  case $arg in
    --force)
      FORCE_MODE=true
      echo -e "${YELLOW}⚠️  FORCE MODE: Files will be overwritten!${NC}"
      ;;
    --clean)
      CLEAN_MODE=true
      ;;
    --help|-h)
      echo "Usage: ./setup.sh [OPTIONS]"
      echo ""
      echo "Options:"
      echo "  --force    Overwrite existing files"
      echo "  --clean    Remove all generated files"
      echo "  --help     Show this help message"
      exit 0
      ;;
    *)
      echo -e "${RED}Unknown option: $arg${NC}"
      exit 1
      ;;
  esac
done

# ------------------------------------------------------------
# CLEAN MODE
# ------------------------------------------------------------
if [ "$CLEAN_MODE" = true ]; then
  print_header "🧹 CLEAN MODE - Removing Generated Files"

  read -p "Are you sure you want to remove all generated files? (y/N) " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf src/
    rm -f README.md materi_02.md KUIS.md PRAKTIKUM.md RUBRIK.md FEEDBACK.md soal_latihan.md
    rm -f package.json vite.config.ts tailwind.config.js postcss.config.js tsconfig.json
    rm -f index.html .gitignore
    echo -e "${GREEN}✅ Cleanup complete!${NC}"
  else
    echo -e "${YELLOW}Cleanup cancelled.${NC}"
  fi
  exit 0
fi

# ------------------------------------------------------------
# MULAI SETUP
# ------------------------------------------------------------
print_header "🚀 SETUP MODUL 02: CSS3 & Tailwind CSS Dasar"

echo -e "${BOLD}📍 Working directory:${NC} $(pwd)"
echo -e "${BOLD}📅 Timestamp:${NC} $(date)"
echo -e "${BOLD}⚙️  Force mode:${NC} $FORCE_MODE"

# ============================================================
# 1. CREATE DIRECTORIES
# ============================================================
print_section "📁 Creating Directory Structure"

create_dir "src"
create_dir "src/examples"
create_dir "src/praktikum"
create_dir "src/styles"
create_dir "src/assets"
create_dir "src/assets/images"

# ============================================================
# 2. CREATE CONFIGURATION FILES
# ============================================================
print_section "⚙️  Creating Configuration Files"

# --- package.json ---
create_file "package.json" '{
  "name": "modul-02-tailwind-css",
  "private": true,
  "version": "1.0.0",
  "description": "Modul 02 - CSS3 & Tailwind CSS Dasar untuk E-Commerce",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "preview": "vite preview",
    "lint": "eslint src --ext .ts,.tsx",
    "format": "prettier --write src/"
  },
  "keywords": [
    "css3",
    "tailwindcss",
    "flexbox",
    "grid",
    "responsive",
    "mobile-first",
    "e-commerce"
  ],
  "author": "Web Development Modern Course",
  "license": "MIT",
  "devDependencies": {
    "autoprefixer": "^10.4.20",
    "postcss": "^8.4.47",
    "tailwindcss": "^3.4.13",
    "typescript": "^5.6.2",
    "vite": "^5.4.8"
  }
}' "$FORCE_MODE"

# --- vite.config.ts ---
create_file "vite.config.ts" "import { defineConfig } from 'vite'

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    port: 5173,
    host: '0.0.0.0',
    strictPort: true,
    open: true,
  },
  build: {
    outDir: 'dist',
    sourcemap: true,
    minify: 'esbuild',
    target: 'es2020',
    rollupOptions: {
      output: {
        manualChunks: undefined,
      },
    },
  },
  preview: {
    port: 4173,
    host: '0.0.0.0',
  },
  css: {
    devSourcemap: true,
  },
  optimizeDeps: {
    exclude: ['node_modules/.vite'],
  },
})" "$FORCE_MODE"

# --- tailwind.config.js ---
create_file "tailwind.config.js" "/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './index.html',
    './src/**/*.{html,js,ts,jsx,tsx}',
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff', 100: '#dbeafe', 200: '#bfdbfe',
          300: '#93c5fd', 400: '#60a5fa', 500: '#3b82f6',
          600: '#2563eb', 700: '#1d4ed8', 800: '#1e40af',
          900: '#1e3a8a', 950: '#172554',
        },
        secondary: {
          50: '#f0fdf4', 100: '#dcfce7', 200: '#bbf7d0',
          300: '#86efac', 400: '#4ade80', 500: '#22c55e',
          600: '#16a34a', 700: '#15803d', 800: '#166534',
          900: '#14532d', 950: '#052e16',
        },
        accent: {
          50: '#fff7ed', 100: '#ffedd5', 200: '#fed7aa',
          300: '#fdba74', 400: '#fb923c', 500: '#f97316',
          600: '#ea580c', 700: '#c2410c', 800: '#9a3412',
          900: '#7c2d12', 950: '#431407',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        mono: ['JetBrains Mono', 'Fira Code', 'monospace'],
      },
      keyframes: {
        'fade-in': {
          '0%': { opacity: '0', transform: 'translateY(10px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        },
        'slide-in': {
          '0%': { transform: 'translateX(-100%)' },
          '100%': { transform: 'translateX(0)' },
        },
        'bounce-in': {
          '0%': { transform: 'scale(0.9)', opacity: '0' },
          '50%': { transform: 'scale(1.05)' },
          '100%': { transform: 'scale(1)', opacity: '1' },
        },
      },
      animation: {
        'fade-in': 'fade-in 0.3s ease-out',
        'slide-in': 'slide-in 0.3s ease-out',
        'bounce-in': 'bounce-in 0.5s ease-out',
      },
      boxShadow: {
        'card': '0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)',
        'card-hover': '0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)',
      },
    },
  },
  plugins: [],
}" "$FORCE_MODE"

# --- postcss.config.js ---
create_file "postcss.config.js" "export default {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}" "$FORCE_MODE"

# --- tsconfig.json ---
create_file "tsconfig.json" '{
  "compilerOptions": {
    "target": "ES2020",
    "useDefineForClassFields": true,
    "module": "ESNext",
    "lib": ["ES2020", "DOM", "DOM.Iterable"],
    "skipLibCheck": true,
    "moduleResolution": "bundler",
    "allowImportingTsExtensions": true,
    "isolatedModules": true,
    "moduleDetection": "force",
    "noEmit": true,
    "strict": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "noFallthroughCasesInSwitch": true,
    "forceConsistentCasingInFileNames": true,
    "resolveJsonModule": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true
  },
  "include": ["src", "vite.config.ts"],
  "exclude": ["node_modules", "dist"]
}' "$FORCE_MODE"

# ============================================================
# 3. CREATE SOURCE FILES
# ============================================================
print_section "💻 Creating Source Files"

# --- src/vite-env.d.ts ---
create_file "src/vite-env.d.ts" "/// <reference types=\"vite/client\" />

interface ImportMetaEnv {
  readonly DEV: boolean
  readonly PROD: boolean
  readonly SSR: boolean
  readonly MODE: string
  readonly BASE_URL: string
}

interface ImportMeta {
  readonly env: ImportMetaEnv
}" "$FORCE_MODE"

# --- src/main.ts ---
create_file "src/main.ts" "/**
 * Entry point utama aplikasi Modul 02
 */

import './styles/main.css'

console.log('🎨 Modul 02 - CSS3 & Tailwind CSS loaded successfully!')
console.log('💨 Styling E-Commerce dengan Tailwind CSS')
console.log('⚡ Powered by Vite + Bun + Tailwind CSS')

if (import.meta.env.DEV) {
  console.log('🔧 Development mode aktif')
}

// Fungsi untuk format Rupiah (akan dipakai di Modul 03)
function formatRupiah(amount: number): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
  }).format(amount)
}

const harga = formatRupiah(15000000)
console.log(\`💰 Contoh format harga: \${harga}\`)" "$FORCE_MODE"

# --- src/styles/main.css ---
create_file "src/styles/main.css" "/* ============================================================
   🎨 Main Stylesheet - Modul 02: CSS3 & Tailwind CSS
   ============================================================
   Fokus: Flexbox, Grid, Responsive, CSS Variables
   ============================================================ */

/* Tailwind Directives */
@tailwind base;
@tailwind components;
@tailwind utilities;

/* ============================================================
   CSS VARIABLES (THEME)
   ============================================================ */
:root {
  --color-primary: #3b82f6;
  --color-secondary: #22c55e;
  --color-accent: #f97316;
  --color-bg: #f9fafb;
  --color-text: #111827;
  --color-muted: #6b7280;
  --spacing-xs: 0.25rem;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 1.5rem;
  --spacing-xl: 2rem;
  --radius-sm: 0.25rem;
  --radius-md: 0.5rem;
  --radius-lg: 0.75rem;
  --shadow-sm: 0 1px 2px 0 rgb(0 0 0 / 0.05);
  --shadow-md: 0 4px 6px -1px rgb(0 0 0 / 0.1);
  --shadow-lg: 0 20px 25px -5px rgb(0 0 0 / 0.1);
  --transition-fast: 150ms;
  --transition-normal: 300ms;
  --transition-slow: 500ms;
}

/* ============================================================
   BASE LAYER
   ============================================================ */
@layer base {
  html {
    scroll-behavior: smooth;
  }

  body {
    @apply font-sans text-gray-900 bg-gray-50;
    font-feature-settings: \"cv02\", \"cv03\", \"cv04\", \"cv11\";
  }

  h1, h2, h3, h4, h5, h6 {
    @apply font-bold tracking-tight;
  }

  h1 { @apply text-4xl md:text-5xl; }
  h2 { @apply text-3xl md:text-4xl; }
  h3 { @apply text-2xl md:text-3xl; }
  h4 { @apply text-xl md:text-2xl; }

  a {
    @apply transition-colors duration-200;
  }

  *:focus-visible {
    @apply outline-none ring-2 ring-primary-500 ring-offset-2;
  }

  ::selection {
    @apply bg-primary-200 text-primary-900;
  }
}

/* ============================================================
   COMPONENTS LAYER
   ============================================================ */
@layer components {
  .btn {
    @apply inline-flex items-center justify-center px-4 py-2 rounded-lg font-medium transition-all duration-200 focus:outline-none focus:ring-2 focus:ring-offset-2;
  }

  .btn-primary {
    @apply btn bg-primary-600 text-white hover:bg-primary-700 focus:ring-primary-500;
  }

  .btn-secondary {
    @apply btn bg-secondary-600 text-white hover:bg-secondary-700 focus:ring-secondary-500;
  }

  .btn-accent {
    @apply btn bg-accent-600 text-white hover:bg-accent-700 focus:ring-accent-500;
  }

  .btn-outline {
    @apply btn border-2 border-primary-600 text-primary-600 hover:bg-primary-50 focus:ring-primary-500;
  }

  .card {
    @apply bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-200;
  }

  .card-product {
    @apply card group;
  }

  .card-product:hover .card-product-image {
    @apply scale-105;
  }

  .card-product-image {
    @apply transition-transform duration-300;
  }

  .input {
    @apply w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition;
  }

  .badge {
    @apply inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium;
  }

  .badge-primary {
    @apply badge bg-primary-100 text-primary-800;
  }

  .badge-secondary {
    @apply badge bg-secondary-100 text-secondary-800;
  }

  .badge-accent {
    @apply badge bg-accent-100 text-accent-800;
  }

  .nav-link {
    @apply text-gray-600 hover:text-primary-600 transition-colors font-medium;
  }

  .nav-link-active {
    @apply text-primary-600 font-semibold;
  }

  .price-tag {
    @apply text-2xl font-bold text-secondary-600;
  }

  .price-tag-old {
    @apply text-sm text-gray-400 line-through;
  }
}

/* ============================================================
   UTILITIES LAYER
   ============================================================ */
@layer utilities {
  .text-gradient {
    @apply bg-clip-text text-transparent bg-gradient-to-r from-primary-600 to-secondary-600;
  }

  .glass {
    @apply bg-white/80 backdrop-blur-md border border-white/20;
  }

  .scrollbar-hide {
    -ms-overflow-style: none;
    scrollbar-width: none;
  }
  .scrollbar-hide::-webkit-scrollbar {
    display: none;
  }

  .aspect-product {
    aspect-ratio: 4 / 3;
  }

  .line-clamp-2 {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .line-clamp-3 {
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  .grid-auto-fit {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 1.5rem;
  }

  .flex-center {
    @apply flex items-center justify-center;
  }

  .flex-between {
    @apply flex items-center justify-between;
  }
}

/* ============================================================
   CUSTOM ANIMATIONS
   ============================================================ */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

@keyframes slideIn {
  from { transform: translateX(-100%); }
  to { transform: translateX(0); }
}

.animate-fade-in {
  animation: fadeIn 0.3s ease-out;
}

.animate-slide-in {
  animation: slideIn 0.3s ease-out;
}

/* ============================================================
   PRINT STYLES
   ============================================================ */
@media print {
  .no-print {
    display: none !important;
  }
}" "$FORCE_MODE"

# --- index.html ---
create_file "index.html" '<!doctype html>
<html lang="id">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Modul 02 - Belajar CSS3 & Tailwind CSS untuk E-Commerce" />
    <title>Modul 02 - CSS3 & Tailwind CSS | Web Dev Modern Course</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet" />
  </head>
  <body class="bg-gray-50 text-gray-900 antialiased">
    <!-- TODO: Konten akan diisi saat pembelajaran -->
    <header class="bg-white shadow-sm border-b border-gray-200">
      <nav class="container mx-auto px-4 py-4">
        <h1 class="text-xl font-bold text-primary-700">🎨 Modul 02: CSS3 & Tailwind</h1>
      </nav>
    </header>

    <main class="container mx-auto px-4 py-8">
      <section class="text-center py-12">
        <h2 class="text-4xl font-bold mb-4">Selamat Datang di Modul 02</h2>
        <p class="text-xl text-gray-600 mb-8">Belajar CSS3 Modern & Tailwind CSS untuk E-Commerce</p>
      </section>
    </main>

    <footer class="bg-gray-900 text-white py-8 mt-12">
      <div class="container mx-auto px-4 text-center">
        <p class="text-gray-400">&copy; 2026 Web Development Modern Course</p>
      </div>
    </footer>

    <script type="module" src="/src/main.ts"></script>
  </body>
</html>' "$FORCE_MODE"

# ============================================================
# 4. CREATE TEMPLATE FILES (akan diisi di step berikutnya)
# ============================================================
print_section "📝 Creating Template Files"

# --- src/examples/01-flexbox-basics.html ---
create_file "src/examples/01-flexbox-basics.html" '<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 01: Flexbox Basics</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">
  <header class="bg-white shadow p-4">
    <h1 class="text-2xl font-bold">Contoh 01: Flexbox Basics</h1>
  </header>

  <main class="container mx-auto p-4">
    <!-- TODO: Contoh Flexbox akan diisi saat live coding -->
    <p class="text-gray-600">Contoh akan diisi saat live coding...</p>
  </main>
</body>
</html>' "$FORCE_MODE"

# --- src/examples/02-grid-layout.html ---
create_file "src/examples/02-grid-layout.html" '<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 02: Grid Layout</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">
  <header class="bg-white shadow p-4">
    <h1 class="text-2xl font-bold">Contoh 02: Grid Layout</h1>
  </header>

  <main class="container mx-auto p-4">
    <!-- TODO: Contoh Grid akan diisi saat live coding -->
    <p class="text-gray-600">Contoh akan diisi saat live coding...</p>
  </main>
</body>
</html>' "$FORCE_MODE"

# --- src/examples/03-responsive-design.html ---
create_file "src/examples/03-responsive-design.html" '<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh 03: Responsive Design</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">
  <header class="bg-white shadow p-4">
    <h1 class="text-2xl font-bold">Contoh 03: Responsive Design</h1>
  </header>

  <main class="container mx-auto p-4">
    <!-- TODO: Contoh Responsive akan diisi saat live coding -->
    <p class="text-gray-600">Contoh akan diisi saat live coding...</p>
  </main>
</body>
</html>' "$FORCE_MODE"

# --- src/praktikum/tugas-01.html ---
create_file "src/praktikum/tugas-01.html" '<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tugas 01: Restyle Katalog Produk</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">
  <!--
    🎯 TUGAS 01: RESTYLE KATALOG PRODUK
    ====================================
    Instruksi:
    1. Ambil HTML dari Modul 01 (tugas-01.html)
    2. Style dengan Tailwind CSS menggunakan komponen dari main.css
    3. Pastikan responsive di mobile, tablet, desktop
    4. Gunakan CSS Variables untuk konsistensi tema

    Setiap save, browser akan auto-refresh (Vite HMR)
  -->

  <header class="bg-white shadow-sm border-b border-gray-200">
    <nav class="container mx-auto px-4 py-4">
      <h1 class="text-xl font-bold">Tugas 01 - Restyle Katalog Produk</h1>
    </nav>
  </header>

  <main class="container mx-auto px-4 py-8">
    <!-- TODO: Restyle katalog produk dari Modul 01 di sini -->
    <p class="text-gray-600 text-center">Mulai styling di sini...</p>
  </main>

  <footer class="bg-gray-900 text-white py-8 mt-12">
    <div class="container mx-auto px-4 text-center">
      <p class="text-gray-400">&copy; 2026 - Tugas Modul 02</p>
    </div>
  </footer>
</body>
</html>' "$FORCE_MODE"

# --- src/praktikum/tugas-02.html ---
create_file "src/praktikum/tugas-02.html" '<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tugas 02: Navigasi Responsif</title>
  <link rel="stylesheet" href="../styles/main.css">
</head>
<body class="bg-gray-50">
  <!--
    🎯 TUGAS 02: NAVIGASI RESPONSIF
    ================================
    Instruksi:
    1. Buat navbar responsif dengan Tailwind CSS
    2. Mobile: hamburger menu (toggle)
    3. Desktop: horizontal menu
    4. Gunakan Flexbox untuk layout
    5. Tambahkan dropdown untuk kategori produk

    Setiap save, browser akan auto-refresh (Vite HMR)
  -->

  <header class="bg-white shadow-sm border-b border-gray-200">
    <nav class="container mx-auto px-4 py-4">
      <h1 class="text-xl font-bold">Tugas 02 - Navigasi Responsif</h1>
    </nav>
  </header>

  <main class="container mx-auto px-4 py-8">
    <!-- TODO: Buat navigasi responsif di sini -->
    <p class="text-gray-600 text-center">Mulai coding navigasi di sini...</p>
  </main>
</body>
</html>' "$FORCE_MODE"

# ============================================================
# 5. CREATE PLACEHOLDER PEDAGOGICAL FILES
# ============================================================
print_section "📚 Creating Pedagogical Placeholders"

create_file "README.md" "# 📚 Modul 02: CSS3 & Tailwind CSS Dasar

> **Level:** 🟢 Pemula | **Estimasi:** 24 JP | **Bobot:** 100 poin
> **Tools:** Tailwind 💨 + Chrome DevTools 🌐
> **Konteks:** Styling katalog produk dari Modul 01

<!-- TODO: Konten lengkap akan diisi di Step 3 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "materi_02.md" "# 📚 Materi Interaktif: CSS3 & Tailwind CSS Dasar

> **Modul:** 02 | **Level:** 🟢 Pemula | **Waktu:** 24 JP

<!-- TODO: Konten lengkap akan diisi di Step 4 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "KUIS.md" "# 📝 KUIS MODUL 02: CSS3 & Tailwind CSS Dasar

**Total Poin:** 100

<!-- TODO: Konten lengkap akan diisi di Step 6 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "PRAKTIKUM.md" "# 💻 PRAKTIKUM MODUL 02: CSS3 & Tailwind CSS Dasar

**Total Poin:** 40 (dari 100)

<!-- TODO: Konten lengkap akan diisi di Step 6 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "RUBRIK.md" "# 📊 RUBRIK PENILAIAN MODUL 02

**Total Poin:** 100

<!-- TODO: Konten lengkap akan diisi di Step 6 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "FEEDBACK.md" "# 💬 FEEDBACK GURU - MODUL 02

**Total Poin:** 100

<!-- TODO: Konten lengkap akan diisi di Step 6 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

create_file "soal_latihan.md" "# 🎁 SOAL LATIHAN BONUS - MODUL 02

**Bonus:** +20 poin

<!-- TODO: Konten lengkap akan diisi di Step 6 -->

**Status:** ⏳ Dalam pengembangan" "$FORCE_MODE"

# ============================================================
# 6. CREATE LOCAL .gitignore
# ============================================================
print_section "🔒 Creating Local .gitignore"

create_file ".gitignore" "# Dependencies
node_modules/
bun.lockb

# Build output
dist/
.vite/

# Environment
.env
.env.local

# Logs
*.log

# Editor
.vscode/*
!.vscode/extensions.json
!.vscode/settings.json
.idea/

# OS
.DS_Store
Thumbs.db" "$FORCE_MODE"

# ============================================================
# 7. CREATE ASSETS PLACEHOLDER
# ============================================================
print_section "🖼️  Creating Asset Placeholders"

create_file "src/assets/images/.gitkeep" "# Placeholder untuk folder images" "$FORCE_MODE"

# ============================================================
# FINAL SUMMARY
# ============================================================
echo ""
echo -e "${CYAN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${NC}  ${BOLD}✅ SETUP COMPLETE!${NC}"
echo -e "${CYAN}╠══════════════════════════════════════════════════════════╣${NC}"
echo -e "${CYAN}║${NC}  📊 Statistics:"
echo -e "${CYAN}║${NC}     • Directories created : ${GREEN}${DIRS_CREATED}${NC}"
echo -e "${CYAN}║${NC}     • Files created       : ${GREEN}${FILES_CREATED}${NC}"
echo -e "${CYAN}║${NC}     • Files skipped       : ${YELLOW}${FILES_SKIPPED}${NC}"
echo -e "${CYAN}╠══════════════════════════════════════════════════════════╣${NC}"
echo -e "${CYAN}║${NC}  🚀 Next Steps:"
echo -e "${CYAN}║${NC}     ${BOLD}1. Install dependencies:${NC}"
echo -e "${CYAN}║${NC}        bun install"
echo -e "${CYAN}║${NC}"
echo -e "${CYAN}║${NC}     ${BOLD}2. Run dev server:${NC}"
echo -e "${CYAN}║${NC}        bun run dev"
echo -e "${CYAN}║${NC}"
echo -e "${CYAN}║${NC}     ${BOLD}3. Open browser:${NC}"
echo -e "${CYAN}║${NC}        http://localhost:5173"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝${NC}"
echo ""
