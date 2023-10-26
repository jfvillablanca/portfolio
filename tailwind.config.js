/** @type {import('tailwindcss').Config} */
import defaultTheme from 'tailwindcss/defaultTheme'

module.exports = {
    content: ['./index.html', './src/**/*.{js,ts,vue}'],
    theme: {
        extend: {
            fontFamily: {
                sans: [
                    'Heebo',
                    ...defaultTheme.fontFamily.sans,
                ],
                mono: [
                    'Ubunto Mono',
                    ...defaultTheme.fontFamily.mono,
                ],
            }
        },
    },
    plugins: [],
}
