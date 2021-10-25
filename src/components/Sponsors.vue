<template>
    <h1 class="orbitron">Sponsors</h1>
    <div class="row justify-content-center">
        <div class="profile col-md"
            :class="{isLink: org.link !== undefined}"
            :title="org.name"
            v-for="org in sponsors"
            :key="org.name" 
            @click="() => opn(org.link)">
            <div class="imgbox">
                <img :src="'/' + org.logo" :alt="org.name">
            </div>
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
    /* width: 300px; */
}
.imgbox {
    height: 300px;
    position: relative;
}
img {
    max-width:100%;
    max-height:100%;
    width: auto;
    height: auto;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}
</style>