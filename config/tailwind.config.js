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
          grey: {
            100: '#f6f5f7',
            200: '#dbd9dc',
            300: '#b0adb2',
            400: '#959298',
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
