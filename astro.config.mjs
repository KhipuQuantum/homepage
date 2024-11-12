import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
    site: 'https://khipuquantum.com',
    integrations: [sitemap()],
    devToolbar: {
        enabled: false
    }
});
