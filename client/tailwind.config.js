/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        "light-font": "#202020",
        "light-bg": "#f7f6f0",
        "dark-font": "#e2e2e2",
        "dark-divide": "#fe8c59",
        "dark-bg": "#232221",
        "divide-orange": "#e96724",
      },
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
