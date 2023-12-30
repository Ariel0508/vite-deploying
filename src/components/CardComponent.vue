<template>
      <div class="card">
        <img :src="product.imageUrl" class="card-img-top" :alt="product.title" />
        <div class="card-body">
          <h6 class="card-title">
            {{ product.title }}
            <span class="float-end">$ {{ product.price }}</span>
          </h6>
          <a href="#" class="btn btn-outline-primary w-100" @click.prevent="addToCart(product.id, num)">
            加入購物車
          </a>
        </div>
      </div>
</template>
<script>
import cartStore from "../stores/cartStore.js";
import  { mapActions } from "pinia"
export default {
    props: ['product'],
    data(){
        return{
            num:1
        }
    },
    methods: {
        ...mapActions(cartStore, ["addToCart"])
      },
  };
</script>
