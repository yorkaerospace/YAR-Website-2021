<template>
    <h1 class="orbitron">Sponsors</h1>
    <!-- <p class="isLink" onclick="">Interested in sponsoring us? Click here to learn more! >>></p> -->
    <div class="class row justify-content-center">

        <h2 v-if="tier(4).length > 0">Tier 4 Sponsors</h2>
        <div class="profile col-12" v-for="org in tier(4)" :key="org.name" :class="{ isLink: org.link !== undefined }"
            @click="() => { if (org.link) opn(org.link) }">
            <div class="row">
                <div class="col-6">
                    <div class="imgbox">
                        <img :src="'/' + org.logo" :alt="org.name">
                    </div>
                </div>
                <div class="col-lg-6" style="display: flex; flex-direction: column; align-items: center; ">
                    <p class="nametag nunito" style="font-size: 2rem">{{ org.name }}</p>
                    <p style="text-align: left;">{{ org.text }}</p>
                </div>
            </div>
        </div>

        <h2 v-if="tier(3).length > 0">Tier 3 Sponsors</h2>
        <div class="profile col-md-6" v-for="org in tier(3)" :key="org.name" :class="{ isLink: org.link !== undefined }"
            @click="() => { if (org.link) opn(org.link) }">
            <div class="imgbox">
                <img :src="'/' + org.logo" :alt="org.name">
            </div>
            <p class="nametag nunito" style="font-size: 2rem">{{ org.name }}</p>
            <p class=" nunito" style="font-size: 1.5rem; color: var(--accent-text)">{{ org.text }}</p>
        </div>

        <h2 v-if="tier(2).length > 0">Tier 2 Sponsors</h2>
        <div class="profile col-sm-4" v-for="org in tier(2)" :key="org.name" :class="{ isLink: org.link !== undefined }"
            @click="() => { if (org.link) opn(org.link) }">
            <div class="imgbox">
                <img :src="'/' + org.logo" :alt="org.name">
            </div>
            <p class="nametag nunito" style="font-size: 2rem">{{ org.name }}</p>
        </div>

        <h2 v-if="tier(1).length > 0">Tier 1 Sponsors</h2>
        <div class="profile col-sm-3" v-for="org in tier(1)" :key="org.name" :class="{ isLink: org.link !== undefined }"
            @click="() => { if (org.link) opn(org.link) }">
            <div class="imgbox" style="height: 200px;">
                <img :src="'/' + org.logo" :alt="org.name">
            </div>
            <p class="nametag nunito">{{ org.name }}</p>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Sponsors',
    props: ['sponsors'],
    methods: {
        opn(url) {
            window.open(url, '_blank').focus()
        },
        tier(x) {
            return this.sponsors.filter(s => s.tier == x)
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
.imgbox {
    height: 300px;
    position: relative;
    margin: 10px;
}

img {
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}

h2 {
    font-family: orbitron;
    font-style: italic;
    font-size: 2.5rem;
}
</style>