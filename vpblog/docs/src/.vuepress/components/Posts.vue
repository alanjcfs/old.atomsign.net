<template>
    <div class="post-container">
        <router-link v-for="page in pages" :to="page.path">
            <div class="post-card">
                <div class="page-title">{{ page.title }}</div>
                <div class="page-description">
                    {{ page.frontmatter.description }}
                </div>
            </div>
        </router-link>
    </div>
</template>

<script>
export default {
    data() {
        return {
            pages: [],
        };
    },
    mounted() {
        this.$site.pages.forEach(page => {
            if (page.frontmatter.type === 'post') {
                this.pages.push(page);
            }
        })
    }
}
</script>
<style scoped>
.post-container {
    display: flex;
    flex-wrap: wrap;
    width: 100%;
}
.post-card {
    width: 600px;
    margin: 1rem;
    border: 1px solid #ccc;
    border-radius: 3px;
    padding: 1rem;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.description {
    width: 100%;
    display: flex;
    justify-content: center;
}
</style>
