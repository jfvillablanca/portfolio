<script setup lang="ts">
import ProjectPlaceholder from '../assets/images/project-placeholder.png'

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
</template>

<style scoped lang="scss">
.section-header {
    margin-block: 2rem;

    font-size: 4rem;
}
</style>
