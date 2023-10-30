<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import { Github, Linkedin, Shell } from 'lucide-vue-next'
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

    <footer>
        <nav class="">
            <a href="https://github.com/jfvillablanca" target="_blank">
                <Github />
            </a>
            <a href="https://www.linkedin.com/in/jmfv" target="_blank">
                <Linkedin />
            </a>
        </nav>
        <p>This is a public domain software by Jann Marc Villablanca</p>
    </footer>
</template>

<style scoped lang="scss">
nav {
    --color-a: #04a777;

    @media (prefers-color-scheme: dark) {
        --color-a: #4cfac6;
        a {
            color: var(--color-a);
        }
    }

    .logo {
        color: var(--color-a);
        transition: 0.4s;
    }
}

header nav {
    margin-top: 3rem;

    display: flex;
    justify-content: space-between;

    font-size: 2.4rem;

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
}

main {
    flex: 1;
}

footer {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 2rem;

    font-size: 1.8rem;

    nav {
        display: flex;
        gap: 3rem;
        margin-bottom: 1rem;

        svg {
            height: 3.6rem;
            width: auto;
        }
    }

    p {
        margin-bottom: 1rem;
    }
}
</style>
