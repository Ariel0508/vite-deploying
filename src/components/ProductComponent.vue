<template>
  <div class="row row-cols-3 my-4 g-4">
      <div class="col" v-for="product in sortProducts" :key="product.id">
        <CardComponent :product="product"></CardComponent>
      </div>
    </div>
</template>

<script>
import ProductStore from '../stores/productStore.js'
import CartStore from '../stores/cartStore.js'
import CardComponent from './CardComponent.vue'
import { mapState, mapActions } from 'pinia'

export default {
  computed: {
    ...mapState(ProductStore, ['sortProducts'])
  },
  methods: {
    ...mapActions(CartStore, ['addToCart'])
  },
  components: {
    CardComponent
  }
}
</script>
