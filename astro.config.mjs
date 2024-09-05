import { defineConfig, passthroughImageService } from "astro/config";

defineConfig({
    image:{
        service:passthroughImageService()
    },});