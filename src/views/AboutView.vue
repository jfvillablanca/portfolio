<script setup lang="ts">
import { ChevronRight, ExternalLink } from 'lucide-vue-next'
const thingsToLearn = [
    'Vue 3 and the Composition API',
    'CLI Development',
    'Backend Development',
    'The Rust Language',
    'Reproducible software builds',
    'Sandboxed development environment',
    'Linux systems and containers',
]
</script>

<template>
    <div class="container">
        <h1 class="section-header">Who am I?</h1>
        <p class="section-paragraph font-sans">I'm a software developer!</p>
        <p class="section-paragraph font-sans">
            I got my bachelor's degree in
            <span class="accented">Electronics and Communications Engineering</span> from
            <span class="accented">UP Diliman</span>.
        </p>
        <p class="section-paragraph font-sans">
            I've recently transitioned to a web development career, with most of my current skills
            being self-taught. Having an engineering degree lay the groundwork and years of hobby
            programming certainly helped in this career shift.
        </p>

        <h1 class="section-header">What's keeping me busy right now?</h1>
        <p class="section-paragraph font-sans">
            I live and breath <span class="accented">open source</span>! I am a proud member of the
            Nix community and I help maintain several packages in the
            <a class="inline-flex gap-2" href="https://github.com/NixOS/nixpkgs" target="_blank">
                Nixpkgs
                <ExternalLink :size="16" />
            </a>
            repository.
        </p>

        <h1 class="section-header">A Perennial Learner</h1>
        <p class="section-paragraph font-sans">
            Lately, I have been exploring these topics/frameworks/languages:
        </p>
        <ul>
            <li v-for="thing in thingsToLearn" :key="thing" class="things-to-learn font-sans">
                <ChevronRight />
                <p>{{ thing }}</p>
            </li>
        </ul>

        <h1 class="section-header">Beyond the keyboard and screen</h1>
        <p class="section-paragraph font-sans">
            When not immersed on coding a new project or creating/reviewing pull requests to
            Nixpkgs, I'll be teaching myself the guitar and bass; diving into music theory, and
            transcribing jazz solos or comping to bossa rhythms.
        </p>
    </div>
</template>

<style scoped lang="scss">
.container {
    --color-accent: #04a777;
    a,
    .accented {
        text-decoration: none;
        color: var(--color-accent);
        transition: 0.4s;
    }

    @media (prefers-color-scheme: dark) {
        --color-accent: #4cfac6;
        a,
        .accented {
            color: var(--color-accent);
        }
    }

    .section-header {
        margin-block: 2rem;

        font-size: 4rem;
    }

    ul,
    .section-paragraph {
        margin-bottom: 1.8rem;

        font-size: 2rem;
    }

    .things-to-learn {
        display: flex;
        align-items: start;
        gap: 0.5rem;

        p {
            height: 100%;
        }

        svg {
            color: var(--color-accent);
        }
    }
}
</style>
