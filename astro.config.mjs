import { defineConfig } from "astro/config";
import { fileURLToPath } from 'url';

export default defineConfig({
  vite: {
    resolve: {
      alias: {
        "@assets": fileURLToPath(new URL('./src/assets', import.meta.url)),
        "@components": fileURLToPath(new URL('./src/components', import.meta.url)),
        "@layouts": fileURLToPath(new URL('./src/layouts', import.meta.url)),
      },
    },
  },
});
