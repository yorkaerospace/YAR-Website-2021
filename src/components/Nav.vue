<template>
  <div class="navbar">
    <header class="d-flex flex-wrap justify-content-around px-3">
      <!-- YAR logo and title -->
      <a href="/" class="d-flex align-items-end text-decoration-none">
        <!-- <img src="../assets/YAR_Logo_simple.png" alt="YAR Logo" class="me-2" style="height: 4rem; width:4rem;"> -->
        <span class="fs-1 orbitron">York Aerospace and Rocketry</span>
      </a>

      <!-- Nav links (auto-generated) -->
      <ul class="nav align-items-end">
        <li class="nav-item fs-3" v-for="(section, index) in sections" :key="index">
          <a :href="'#' + section.anchor" class="nav-link active nunito" aria-current="page">{{ section.title }}</a>
        </li>
      </ul>
    </header>
  </div>
  <div class="spacer"></div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'

export default {
  name: "Nav",
  props: ["content"],
  components: {
    // HelloWorld
  },
  data() {
    return {
      sections: [
        {
          title: "About Us",
          anchor: "About",
        },
        {
          title: "Meet the Team",
          anchor: "Meet",
        },
        {
          title: "Sponsors",
          anchor: "Sponsors",
        },
        {
          title: "Contact us",
          anchor: "Contact",
        },
      ],
    };
  },
};
</script>

<style scoped>
.nav-link,
.nav-link:visited,
span {
  color: var(--accent-text);
}

.nav-link:hover,
.nav-link:active {
  color: var(--link-hover);
}

.navbar {
  background-color: var(--accent);
  margin-bottom: 10px;
  position: fixed;
  width: 100%;
  z-index: 100;
}

header {
  width: 100%;
}

li {
  border-top: solid transparent 2px;
  border-radius: 10px;
}

li:hover {
  border-top: solid var(--accent-text) 2px;
  border-radius: 10px;
}

.spacer{
  width: 100%;
  height: 
}
</style>
