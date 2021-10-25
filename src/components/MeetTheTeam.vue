<template>
    <h1 class="orbitron">Our Team</h1>
    <div class="d-flex flex-wrap justify-content-evenly">
        <div class="profile" v-for="person in committee" :key="person.name">
            <img :src="'/' + person.image" :alt="person.name">
            <p class="nametag nunito">{{person.name}}</p>
            <p class="title nunito">{{person.title}}</p>
        </div>
    </div>
    <div class="d-flex flex-wrap justify-content-evenly">
        <div class="profile" v-for="person in non_committee" :key="person.name">
            <img :src="'/' + person.image" :alt="person.name">
            <p class="nametag nunito">{{person.name}}</p>
        </div>
    </div>
</template>

<script>

export default {
    name: 'AboutUs',
    props: ['members'],
    data() {
        return {
            committee: this.members.filter(x => x.title !== undefined),
            non_committee: this.members.filter(x => x.title === undefined)
        }
    }
}
</script>

<style scoped>
.profile{
    /* border: 1px black solid; */
    margin-left: 20px;
    margin-right: 20px;
}
img {
    max-height: 300px;
    max-width: 300px;
}
.nametag {
    font-size: 1.8rem;
    margin-bottom: 0;
}
.title {
    font-size: 1.5rem;
    margin-bottom: 5px;
    color: #555;
}
</style>