<template>
    <h1 class="orbitron">Sponsors</h1>
    <div class="d-flex flex-wrap justify-content-evenly">
        <div class="profile"
             :class="{isLink: org.link !== undefined}"
             :title="org.name"
             v-for="org in sponsors"
             :key="org.name" 
             @click="() => opn(org.link)">
            <img :src="'/' + org.logo" :alt="org.name">
            <p class="nametag nunito">{{org.name}}</p>
        </div>
    </div>
</template>

<script>

export default {
    name: 'Sponsors',
    props: ['sponsors'],
    methods: {
        opn(url){
            window.open(url, '_blank').focus()
        }
    }
}
</script>

<style scoped>
p {
    text-align: center;
    font-size: 1.5rem;
    font-family: Nunito;
}
.isLink {
    cursor: pointer;
}
.profile {
    max-width: 300px;
}
</style>