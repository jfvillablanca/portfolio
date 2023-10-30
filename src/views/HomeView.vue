<script setup lang="ts"></script>

<template>
    <div class="container">
        <h3>Hello, I am</h3>
        <h1>Jann Marc</h1>
        <div class="statement">
            <!-- <p class="mr-4">I turn ideas into lines of code one</p> -->
            <!-- <span class="font-mono px-4 py-2 rounded-2xl bg-[#eff1f3] dark:bg-[#343941]"> -->
            <!--     git commit -->
            <!-- </span> -->
            <!-- <p class="ml-4">at a time</p> -->

            <p class="font-mono px-4 py-2 rounded-2xl bg-[#eff1f3] dark:bg-[#343941]">
                Software Developer
            </p>
        </div>
    </div>
</template>

<style scoped lang="scss">
.container {
    margin-top: 30%;
    display: grid;
    place-items: center;

    h1 {
        font-size: 6rem;
    }

    .statement {
        font-size: 2rem;

        display: flex;
        align-items: center;
    }

    h3 {
        font-size: 2rem;
    }
}

@media (min-width: 768px) {
    .container {
        margin-top: 20%;
        h1 {
            font-size: 10rem;
        }

        .statement {
            font-size: 3rem;
        }

        h3 {
            font-size: 4rem;
        }
    }
}
</style>
