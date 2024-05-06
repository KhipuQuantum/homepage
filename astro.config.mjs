import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
    devToolbar: {
        enabled: false
    },
    server: {
        port: 4120,
        host: true,
    }
});
