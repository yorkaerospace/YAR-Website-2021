<template>
  <div class="row">
    <div class="col-lg-5" id="banner-cont">
      <img id="banner" src="/YAR Logo Light.png" alt="" />
    </div>
    <div class="col-lg-7">
      <h1 class="orbitron">About Us</h1>
      <p v-for="item of text" :key="item">{{ item }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "AboutUs",
  props: ["text"],
  data() {
    return {
      lorem: "Lorem ipsum",
    };
  },
};
</script>

<style scoped>
p {
  text-align: left;
  font-size: 1.2rem;
  font-family: Nunito;
}
#banner {
  padding: 20px;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
#banner-cont {
  text-align: center;
}
</style>