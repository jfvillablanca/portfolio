<script setup lang="ts">
import { Marked } from 'marked'
import DOMPurify from 'dompurify'
import { markedHighlight } from 'marked-highlight'
import hljs from 'highlight.js'
import 'highlight.js/styles/github.css'
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

<style lang="scss">
.markdown-body {
    box-sizing: border-box;
    min-width: 200px;
    max-width: 980px;
    margin: 0 auto;
    padding: 45px;
}

@media (prefers-color-scheme: dark) {
    .markdown-body {
        /* 'vt-c-black' specified in assets/base.css */
        background-color: var(--vt-c-black);
    }

    .hljs {
        color: #c9d1d9;
        background: #0d1117;
    }
    .hljs-doctag,
    .hljs-keyword,
    .hljs-meta .hljs-keyword,
    .hljs-template-tag,
    .hljs-template-variable,
    .hljs-type,
    .hljs-variable.language_ {
        color: #ff7b72;
    }
    .hljs-title,
    .hljs-title.class_,
    .hljs-title.class_.inherited__,
    .hljs-title.function_ {
        color: #d2a8ff;
    }
    .hljs-attr,
    .hljs-attribute,
    .hljs-literal,
    .hljs-meta,
    .hljs-number,
    .hljs-operator,
    .hljs-variable,
    .hljs-selector-attr,
    .hljs-selector-class,
    .hljs-selector-id {
        color: #79c0ff;
    }
    .hljs-regexp,
    .hljs-string,
    .hljs-meta .hljs-string {
        color: #a5d6ff;
    }
    .hljs-built_in,
    .hljs-symbol {
        color: #ffa657;
    }
    .hljs-comment,
    .hljs-code,
    .hljs-formula {
        color: #8b949e;
    }
    .hljs-name,
    .hljs-quote,
    .hljs-selector-tag,
    .hljs-selector-pseudo {
        color: #7ee787;
    }
    .hljs-subst {
        color: #c9d1d9;
    }
    .hljs-section {
        color: #1f6feb;
        font-weight: bold;
    }
    .hljs-bullet {
        color: #f2cc60;
    }
    .hljs-emphasis {
        color: #c9d1d9;
        font-style: italic;
    }
    .hljs-strong {
        color: #c9d1d9;
        font-weight: bold;
    }
    .hljs-addition {
        color: #aff5b4;
        background-color: #033a16;
    }
    .hljs-deletion {
        color: #ffdcd7;
        background-color: #67060c;
    }
}
</style>
