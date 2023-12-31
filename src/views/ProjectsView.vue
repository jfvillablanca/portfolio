<script setup lang="ts">
import ProjectCS50 from '../assets/images/project-cs50.png'
import ProjectBourne from '../assets/images/project-bourne-task-app.png'
import ProjectConverz from '../assets/images/project-converz.png'
import ProjectFastFood from '../assets/images/project-fast-food-app.png'
import ProjectFlatr from '../assets/images/project-flatr.gif'
import ProjectOnano from '../assets/images/project-onano.gif'
import ProjectQuizzical from '../assets/images/project-quizzical.gif'
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
        images: [ProjectBourne],
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
        images: [ProjectConverz],
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
        images: [ProjectFastFood],
    },
    {
        name: 'Onano Text Editor',
        description: 'A simple text editor written in Rust based on the GNU nano',
        technologies: ['Rust', 'Termion', 'Unicode-Segmentation'],
        githubRepo: 'https://github.com/jfvillablanca/onano',
        images: [ProjectOnano],
    },
    {
        name: 'Flatr',
        description:
            'A CLI app written in Rust with the Clap crate. It takes a JSON file then flattens the key-value pairs and prints to standard output',
        technologies: ['Rust', 'Serde_Json', 'Clap', 'Colored'],
        githubRepo: 'https://github.com/jfvillablanca/flatr',
        images: [ProjectFlatr],
    },
    {
        name: "Let's get quizzical",
        description:
            'A React app that retrieves quiz items from the Open Trivia Database through Fetch API calls',
        technologies: ['React', 'Vite', 'SCSS'],
        githubRepo: 'https://github.com/jfvillablanca/lets-get-quizzical',
        images: [ProjectQuizzical],
    },
    {
        name: 'CS50: Introduction to Computer Science',
        description:
            "Completed Harvard's CS50, refining skills in C, Python, and SQL. Valuable refresher to solidify computer science knowledge. Documented progress on GitHub which includes solutions to problem sets written in other languages such as Rust.",
        technologies: ['C', 'Python', 'Flask', 'SQL', 'HTML', 'Javascript', 'CSS', 'Rust'],
        githubRepo: 'https://github.com/jfvillablanca/cs50',
        images: [ProjectCS50],
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
