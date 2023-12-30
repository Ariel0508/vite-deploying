<script>
import NarbarComponent from './components/NarbarComponent.vue'
import CartComponent from './components/CartComponent.vue'
import ProductComponent from './components/ProductComponent.vue'
export default {
  components: {
    NarbarComponent,
    CartComponent,
    ProductComponent
  }
}
</script>

<template>
  <div class="container">
    <NarbarComponent></NarbarComponent>
    <CartComponent></CartComponent>
    <ProductComponent></ProductComponent>
  </div>
  <!-- <RouterView/> -->
</template>

<style lang="scss">
@import "./assets/all.scss";
.card-img-top {
            object-fit: cover;
            height: 200px;
          }

          .table-image {
            width: 75px;
            height: 75px;
            object-fit: cover;
          }
</style>
