const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        ...colors,
        theme: {
          grey: { // all spicy greys have a bit of purple in them
            100: '#f6f5f7',
            200: '#ebe9ec',
            300: '#e0dde2',
            400: '#d5d2d8',
            500: '#36333e',
            600: '#2c292f',
            700: '#242025',
            800: '#1c191e',
          },
          aqua: '#c2e6e8',
          greeny: '#cce9de',
          turquoise: '#6dc6aa'
        },
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
