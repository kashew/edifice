<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" class="center" />
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App"/>
  </div>
</template>

<style lang="scss" scoped>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>

<script lang="ts">
import { Options, Vue } from 'vue-class-component'
import HelloWorld from '@/components/HelloWorld.vue' // @ is an alias to /src

@Options({
  components: {
    HelloWorld
  }
})
export default class Home extends Vue {}
</script>
