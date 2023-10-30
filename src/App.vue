<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import { Github, Linkedin, Menu, Shell } from 'lucide-vue-next'
import { ref, onMounted } from 'vue'

const isShowMenu = ref(false)
function toggleMenu() {
    isShowMenu.value = !isShowMenu.value
}

function hideMenu() {
    isShowMenu.value = false
}

onMounted(() => {
    document.addEventListener('click', () => {
        hideMenu()
    })

    document.addEventListener('scroll', () => {
        hideMenu()
    })
})
</script>

<template>
    <header>
        <nav>
            <RouterLink to="/">
                <Shell class="logo" :size="60" />
            </RouterLink>
            <button class="menu-button" @click.stop="toggleMenu">
                <Menu />
            </button>
            <div :class="['links', { visible: isShowMenu }]">
                <RouterLink to="/about" @click.stop="hideMenu">About</RouterLink>
                <RouterLink to="/projects" @click.stop="hideMenu">Projects</RouterLink>
                <RouterLink to="/blog" @click.stop="hideMenu">Blog</RouterLink>
            </div>
        </nav>
    </header>

    <main>
        <RouterView />
    </main>

    <footer>
        <nav>
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

    position: relative;

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

    .menu-button {
        color: var(--color-a);
        transition: 0.4s;

        svg {
            height: 3rem;
            width: auto;
        }
    }

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

    .links.visible {
        position: absolute;
        right: 0;
        top: 100%;

        display: flex;
        gap: 2rem;
        flex-direction: column;
        align-items: flex-end;

        padding: 1.2rem;
        border-width: 1px;
        border-color: var(--color-border);
        border-radius: 1rem;

        background-color: var(--color-background-mute);
    }

    .links {
        display: none;
    }

    @media (min-width: 768px) {
        .menu-button {
            display: none;
        }

        .links {
            width: 30%;
            height: min-content;
            display: flex;
            gap: 2rem;
            justify-content: space-between;
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
        text-align: center;

        font-size: 1.4rem;
    }

    @media (min-width: 640px) {
        p {
            font-size: 1.8rem;
        }
    }
}
</style>
