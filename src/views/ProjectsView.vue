<script setup lang="ts">
import ProjectPlaceholder from '../assets/images/project-placeholder.png'
import { ExternalLink } from 'lucide-vue-next'

type Project = {
    name: string
    description: string
    technologies: string[]
    githubRepo: string
    images: string[]
}
const projects: Project[] = [
    {
        name: 'Bourne Task App',
        description:
            'A Trello-inspired task management app. NestJS/Express CRUD API backend complemented by a Vite/React frontend',
        technologies: [
            'Typescript',
            'React',
            'Vite',
            'TanStack Query',
            'Axios',
            'React Hook Form',
            'TailwindCSS',
            'NestJS',
            'MongoDB',
            'Express',
            'PassportJS',
            'Jest',
            'Husky',
            'Prettier',
            'Eslint',
        ],
        githubRepo: 'https://github.com/jfvillablanca/bourne-task-app',
        images: [ProjectPlaceholder],
    },
    {
        name: 'Converz Real Time Chat App',
        description:
            "An RTC app, replicating Discord's chat room functionality. The project's tech stack uses React, Express, and Socket.IO to enable bidirectional communication channels",
        technologies: [
            'Typescript',
            'React',
            'Socket.IO',
            'Express',
            'MongoDB',
            'Mongoose',
            'TailwindCSS',
            'Prettier',
            'Eslint',
        ],
        githubRepo: 'https://github.com/jfvillablanca/converz-rtc',
        images: [ProjectPlaceholder],
    },
    {
        name: 'Fast Food App',
        description:
            'A mock fast food mobile app built using Vue 3 Composition API, Ionic Framework components and CapacitorJS',
        technologies: [
            'Vue 3',
            'Composition API',
            'Ionic Framework',
            'CapacitorJS',
            'SwiperJS',
            'SCSS',
            'Prettier',
            'Eslint',
        ],
        githubRepo: 'https://github.com/jfvillablanca/ionic-vue',
        images: [ProjectPlaceholder],
    },
    {
        name: 'Onano Text Editor',
        description: 'A simple text editor written in Rust based on the GNU nano',
        technologies: ['Rust', 'Termion', 'Unicode-Segmentation'],
        githubRepo: 'https://github.com/jfvillablanca/onano',
        images: [ProjectPlaceholder],
    },
    {
        name: 'Flatr',
        description:
            'A CLI app written in Rust with the Clap crate. It takes a JSON file then flattens the key-value pairs and prints to standard output',
        technologies: ['Rust', 'Serde_Json', 'Clap', 'Colored'],
        githubRepo: 'https://github.com/jfvillablanca/flatr',
        images: [ProjectPlaceholder],
    },
    {
        name: "Let's get quizzical",
        description:
            'A React app that retrieves quiz items from the Open Trivia Database through Fetch API calls',
        technologies: ['React', 'Vite', 'SCSS'],
        githubRepo: 'https://github.com/jfvillablanca/lets-get-quizzical',
        images: [ProjectPlaceholder],
    },
]
</script>

<template>
    <h1 class="section-header">Recent Works</h1>
    <ul>
        <li v-for="project in projects" :key="project.name" class="project-card">
            <figure>
                <img :src="project.images[0]" alt="" />
            </figure>
            <div class="project-info">
                <div class="flex gap-2">
                    <h1 class="project-name">
                        {{ project.name }}
                    </h1>
                    <a :href="project.githubRepo" target="_blank">
                        <ExternalLink />
                    </a>
                </div>
                <p class="project-description font-sans">{{ project.description }}</p>
                <ul class="technologies">
                    <li
                        v-for="technology in project.technologies"
                        :key="technology"
                        class="font-sans font-semibold"
                    >
                        {{ technology }}
                    </li>
                </ul>
            </div>
        </li>
    </ul>
</template>

<style scoped lang="scss">
.section-header {
    margin-block: 2rem;

    font-size: 4rem;
}

.project-card {
    --color-a: #04a777;

    margin-bottom: 7rem;

    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1rem;

    .project-info {
        margin-top: 2rem;
        margin-inline: 2rem;
        a {
            text-decoration: none;
            color: var(--color-a);
            transition: 0.4s;
        }

        @media (prefers-color-scheme: dark) {
            --color-a: #4cfac6;
            a {
                color: var(--color-a);
            }
        }

        .project-name {
            margin-bottom: 1rem;

            font-size: 3.6rem;
        }

        .project-description {
            margin-bottom: 1.8rem;

            font-size: 2rem;
        }

        .technologies {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;

            li {
                border-width: 1px;
                border-radius: 1rem;
                padding: 0.5rem 1rem;
            }
        }
    }
}

@media (min-width: 768px) {
    .project-card {
        flex-direction: row;
        align-items: start;
        gap: 2rem;

        .project-info {
            margin-top: 0;
            width: 70%;
        }
    }
}
</style>
