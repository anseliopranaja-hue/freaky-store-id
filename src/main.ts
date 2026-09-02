/**
 * Entry point utama aplikasi Modul 02
 * File ini di-import oleh index.html
 */

// Import CSS (Tailwind akan di-process oleh PostCSS)
import './styles/main.css'

// Log untuk verifikasi bahwa TypeScript berjalan
console.log('🎨 Modul 02 - CSS3 & Tailwind CSS loaded successfully!')
console.log('💨 Styling E-Commerce dengan Tailwind CSS')
console.log('⚡ Powered by Vite + Bun + Tailwind CSS')

// Verifikasi environment
if (import.meta.env.DEV) {
  console.log('🔧 Development mode aktif')
}

// Fungsi sederhana untuk demonstrasi TypeScript
function formatRupiah(amount: number): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
  }).format(amount)
}

// Test fungsi
const harga = formatRupiah(15000000)
console.log(`💰 Contoh format harga: ${harga}`)
