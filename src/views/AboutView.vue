<template>
  <!-- <div class="about">
    {{ data }}
  </div> -->
  <div class="container">
    <NarbarComponent></NarbarComponent>
    <CartComponent></CartComponent>
    <ProductComponent></ProductComponent>
  </div>
</template>

<script>
import NarbarComponent from '../components/NarbarComponent.vue'
import CartComponent from '../components/CartComponent.vue'
import ProductComponent from '../components/ProductComponent.vue'
export default {
  data() {
    return {
      data: {}
    }
  },
  mounted() {
    // console.log(import.meta.env.VITE_PATH);
    console.log(import.meta.env.VITE_TEXT);
    const url = import.meta.env.VITE_PATH
    this.$http.get(url).then((res) => {
      // console.log(res)
      this.data = res.data.results[0]
      console.log(this.data)
    })
  },
  components: {
    NarbarComponent,
    CartComponent,
    ProductComponent
  }
}
</script>

<style lang="scss">
@import "../assets/all.scss";
.card-img-top {
            object-fit: cover;
            height: 200px;
          }

          .table-image {
            width: 75px;
            height: 75px;
            object-fit: cover;
          }
/*@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}*/
</style>
