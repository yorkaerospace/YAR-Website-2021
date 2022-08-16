<template>
  <h1 class="orbitron">Contact Us</h1>
  <div class="d-flex flex-wrap justify-content-evenly" style="max-width: 1000px; margin: auto">
    <a v-for="link in links" :key="link.name" :href="link.link" target="_blank">
      <i class="icon" :class="'bi-' + link.icon"></i>
    </a>
  </div>
</template>

<script>
export default {
  name: "Contact",
  props: ["links"],
};
</script>

<style scoped>
p {
  text-align: center;
  font-size: 1.5rem;
  font-family: Nunito;
}

.icon {
  font-size: 4rem;
  color: var(--main-text);
}
</style>