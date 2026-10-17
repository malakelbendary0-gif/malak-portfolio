/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      fontFamily: {
        sans: ['"Plus Jakarta Sans"', 'sans-serif'],
        mono: ['"Fira Code"', 'monospace'],
        cyber: ['"Rajdhani"', 'sans-serif'],
      },
      colors: {
        cyber: {
          black: '#040711',
          darker: '#070d1e',
          dark: '#0c152e',
          slate: '#122044',
          surface: '#15244e',
          border: '#1f3570',
          cyan: '#00f2fe',
          cyanGlow: '#4facfe',
          green: '#10b981',
          neonGreen: '#00ff88',
          emerald: '#059669',
          amber: '#f59e0b',
          red: '#f43f5e'
        }
      },
      boxShadow: {
        'neon-cyan': '0 0 25px -5px rgba(0, 242, 254, 0.45), 0 0 10px -2px rgba(0, 242, 254, 0.3)',
        'neon-green': '0 0 25px -5px rgba(0, 255, 136, 0.4), 0 0 10px -2px rgba(0, 255, 136, 0.25)',
        'glass': '0 8px 32px 0 rgba(0, 0, 0, 0.37)'
      },
      animation: {
        'pulse-slow': 'pulse 4s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'float': 'float 6s ease-in-out infinite',
        'scanline': 'scanline 8s linear infinite',
      },
      keyframes: {
        float: {
          '0%, 100%': { transform: 'translateY(0px)' },
          '50%': { transform: 'translateY(-10px)' },
        },
        scanline: {
          '0%': { transform: 'translateY(-100%)' },
          '100%': { transform: 'translateY(1000%)' },
        }
      }
    },
  },
  plugins: [],
}
