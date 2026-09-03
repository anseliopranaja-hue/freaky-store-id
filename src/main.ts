/**
 * Entry point FREAKY STORE ID
 * Modul 02 - Tailwind CSS
 */

import './styles/main.css'

console.log('🎨 FREAKY STORE ID berhasil dimuat!')
console.log('🛒 Katalog akun Mobile Legends dan Blood Strike')
console.log('⚡ Powered by Vite + Bun + Tailwind CSS')

if (import.meta.env.DEV) {
  console.log('🔧 Development mode aktif')
}

function formatRupiah(amount: number): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
  }).format(amount)
}

const hargaBloodStrike = formatRupiah(450000)
const hargaML = formatRupiah(1500000)

console.log(`💰 Harga Blood Strike: ${hargaBloodStrike}`)
console.log(`💰 Harga Mobile Legends: ${hargaML}`)