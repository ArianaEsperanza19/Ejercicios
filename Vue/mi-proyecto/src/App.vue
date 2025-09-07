<template>
  <div>
    <img alt="Vue logo" src="./assets/logo.png">
    <h1 style="color: red;">¡Vue está funcionando!</h1>
    <ComponenteMio />
  </div>
</template>

<script>
import ComponenteMio from './components/ComponenteMio.vue'

export default {
  name: 'App',
  components: {
    ComponenteMio
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
