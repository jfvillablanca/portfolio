<script setup lang="ts">
import { Marked } from 'marked'
import DOMPurify from 'dompurify'
import { markedHighlight } from 'marked-highlight'
import hljs from 'highlight.js'
import 'github-markdown-css/github-markdown.css'
import { onMounted, ref } from 'vue'

const { rawMarkdown } = defineProps<{ rawMarkdown: string }>()

const renderedMarkdown = ref('')

const marked = new Marked(
    markedHighlight({
        langPrefix: 'hljs language-',
        highlight(code, lang) {
            const language = hljs.getLanguage(lang) ? lang : 'plaintext'
            return hljs.highlight(code, { language }).value
        },
    }),
)

async function markdownToHtml() {
    const parsedMd = await marked.parse(rawMarkdown)
    renderedMarkdown.value = DOMPurify.sanitize(parsedMd)
}

onMounted(() => {
    markdownToHtml()
})
</script>

<template>
    <div class="markdown-body" v-html="renderedMarkdown"></div>
</template>

<style scoped lang="scss">
.markdown-body {
    box-sizing: border-box;
    min-width: 200px;
    max-width: 980px;
    margin: 0 auto;
    padding: 45px;
}
</style>
