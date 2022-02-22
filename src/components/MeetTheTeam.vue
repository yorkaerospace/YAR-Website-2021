<template>
  <h1 class="orbitron">Our Team</h1>
  <div class="row justify-content-center">
    <div class="profile col-md" v-for="person in committee" :key="person.name">
      <img
        :src="person.image ? '/' + person.image : default_image"
        :alt="person.name"
        :style="{ opacity: person.image ? 1 : 0.4 }"
      />
      <p class="nametag nunito">{{ person.name }}</p>
      <p class="title nunito">{{ person.title }}</p>
    </div>
  </div>
  <div class="row justify-content-center">
    <div
      class="profile col-md"
      v-for="person in non_committee"
      :key="person.name"
    >
      <img
        :src="person.image ? '/' + person.image : default_image"
        :alt="person.name"
      />
      <p class="nametag nunito">{{ person.name }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "AboutUs",
  props: ["members", "default_profile"],
  data() {
    return {
      committee: this.members.filter((x) => x.title !== undefined),
      non_committee: this.members.filter((x) => x.title === undefined),
      default_image: this.default_profile,
    };
  },
};
</script>

<style scoped>
.profile {
  /* border: 1px black solid; */
}
img {
  max-height: 300px;
  max-width: 300px;
  padding: 10px;
  border-radius: 25px;
}
.nametag {
  font-size: 1.8rem;
  margin-bottom: 0;
}
.title {
  font-size: 1.5rem;
  margin-bottom: 5px;
  color: #aaa;
}
</style>