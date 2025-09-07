<template>
  <div id="ComponenteMio">
    <h1>Componente Mio</h1>
    <h2 :style="{color: color}" @mouseover="cambiarColor" @mouseleave="resetColor">{{subtitulo}}</h2>
    <a @click="click('Has hecho click')">Hazme click</a>
  </div>
</template>

<script>
export default {
  name: 'ComponenteMio', // ¡Debe coincidir exactamente!
  data(){
    return {
    subtitulo: 'Soy el subtitulo de mi componente',
    color: 'blue'
    }
  },
  methods: {
    cambiarColor() {
      this.color = this.color === 'blue' ? 'red' : 'blue'; // Alterna colores
    },
    resetColor() {
      this.color = 'blue';
    },
    click(mensaje) {
      alert(mensaje);
    }
  }
};
</script>
