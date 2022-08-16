<template>
  <Nav :content="content" />

  <div class="container" style="min-height: 100vh">
    <div id="About" class="spacer"></div>
    <AboutUs :text="content['About Us']" />
    <div id="Meet" class="spacer"></div>
    <MeetTheTeam :members="content['Meet the Team']" :default_profile="content['default_profile']" />
    <div id="Sponsors" class="spacer"></div>
    <Sponsors :sponsors="content['Sponsors']" />
    <div id="Contact" class="spacer"></div>
    <Contact :links="content['Contact Us']" />
    <div class="spacer"></div>
  </div>

  <div class="" id="footer">
    Site Design / Logo © 2022 York Aerospace and Rocketry
  </div>
</template>

<script>
import Nav from "./components/Nav.vue";
import AboutUs from "./components/AboutUs.vue";
import MeetTheTeam from "./components/MeetTheTeam.vue";
import Sponsors from "./components/Sponsors.vue";
import Contact from "./components/Contact.vue";

import Content from "./content/main.json";

export default {
  name: "App",
  components: {
    Nav,
    AboutUs,
    MeetTheTeam,
    Sponsors,
    Contact,
  },
  data() {
    return {
      content: Content,
    };
  },
};
</script>

<style>
/* Site theme colours */

/* Light theme */
/* :root {
  --main-bg: #f3f3f3;
  --accent: #170851;
  --main-text: black;
  --accent-text: white;
  --link-hover: gray;
} */
/* Dark Theme */
:root {
  --main-bg: #1b1b1b;
  --accent: #7f0000;
  --main-text: white;
  --accent-text: white;
  --link-hover: var(--accent-text);
}

/* Font for the title on the navbar */
@font-face {
  font-family: "Orbitron";
  src: local("Orbitron"), url(./assets/orbitron-light.ttf) format("truetype");
}

.orbitron {
  font-family: Orbitron;
  font-style: italic;
}

@font-face {
  font-family: "Nunito";
  src: local("Nunito"), url(./assets/Nunito-Regular.ttf) format("truetype");
}

.nunito {
  font-family: Nunito;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  color: var(--main-text);
  background-color: var(--main-bg);
}

.spacer {
  height: 4rem;
}

#banner {
  max-height: 50vh;
}

#footer {
  background-color: var(--accent);
  color: var(--accent-text);
  text-align: right;
  padding: 1rem;
}

h1 {
  font-size: 3em;
}
</style>
