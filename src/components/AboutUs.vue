<template>
    <h1 class="orbitron">About Us</h1>
    <p v-for="item of text" :key="item">{{item}}</p>
</template>

<script>

export default {
    name: 'AboutUs',
    props: ['text'],
    data() { return {
        lorem: "Lorem ipsum"
    }}
}
</script>

<style scoped>
p {
    text-align: center;
    font-size: 1.2rem;
    font-family: Nunito;
}
</style>