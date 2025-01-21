/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        "f-light": "#202020",
        "f-dark": "#e2e2e2",
        "b-light": "#f7f6f0",
        "b-dark": "#232221",
        "c-orange": "#e96724",
        "c-yellow": "#f0c475",
        "c-green": "#abc97b",
        "c-brown": "#95714f",
        "c-blue": "#458dd1",
      },
      typography: ({ theme }) => ({
        DEFAULT: {
          css: {
            blockquote: {
              "border-inline-start-color": theme("colors.c-green/0.8"),
            },
            a: {
              color: theme("colors.c-blue"),
              "font-style": "italic",
              "&:hover": {
                opacity: "60%",
              },
            },
          },
        },
      }),
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
