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

nav {




        display: flex;
    }

    }

    }


    }
}
</style>
