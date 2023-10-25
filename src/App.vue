<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import { Shell } from 'lucide-vue-next'
</script>

<template>
    <header>
        <nav>
            <RouterLink to="/">
                <Shell class="logo" :size="60" />
            </RouterLink>
            <div class="links">
                <RouterLink to="/about">About</RouterLink>
                <RouterLink to="/projects">Projects</RouterLink>
                <RouterLink to="/blog">Blog</RouterLink>
            </div>
        </nav>
    </header>

    <main>
        <RouterView />
    </main>
</template>

<style scoped lang="scss">
nav {
    --color-a: #04a777;

    margin-top: 3rem;

    display: flex;
    justify-content: space-between;

    font-size: 2.4rem;

    .logo {
        color: var(--color-a);
        transition: 0.4s;
    }

    .links {
        width: 30%;
        height: min-content;
        display: flex;
        justify-content: space-between;

        a {
            position: relative;

            text-decoration: none;
            color: var(--color-a);
            transition: 0.4s;
        }

        a::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            bottom: -1px;
            background-color: transparent;
            transform: scaleX(0);
            transform-origin: center;
            transition: transform 0.3s ease;
        }

        a:hover::before {
            transform: scaleX(1.3);
            background-color: var(--color-a);
        }
    }

    @media (prefers-color-scheme: dark) {
        --color-a: #4cfac6;
        a {
            color: var(--color-a);
        }
    }
}
</style>
