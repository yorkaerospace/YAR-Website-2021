<template>
  <div class="row">
    <div class="col-lg-5" id="banner-cont">
      <img id="banner" src="/YAR Logo Light.png" alt="YAR logo" />
      <br />
      <button type="button" class="btn btn-light orbitron"
        onclick="window.open('https://yusu.org/activities/view/aerospace-and-rocketry','_blank');">
        Join Now!
        <img src="/YUSU_logo.webp" alt="YUSU logo" />
      </button>
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
  font-size: 1.4rem;
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
  margin-bottom: 20px;
}

button {
  font-size: 2.5rem;
  padding: 1rem;
  border-radius: 1rem;
}

button:hover {
  transform: scale(1.05);
}

img {
  max-height: 4rem;
  margin-left: 1rem;
}
</style>