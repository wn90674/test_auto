<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <!-- <van-field v-model="value" @input="onInput"></van-field> -->
    <input type="number" v-model_="val" />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
// @ is an alias to /src
@Component({
  components: {
    // HelloWorld,
  },
  directives: {
    model_: {
      inserted(el, binding, vnode) {
        // eslint-disable-next-line
        el.addEventListener("input", evt => {
          // eslint-disable-next-line
          // eslint-disable-next-line
          // (el as HTMLInputElement).value = (evt as any).data;
          // eslint-disable-next-line
          if (vnode.context) {
            // eslint-disable-next-line
            vnode.context.$data.val = (el as HTMLInputElement).value;
          }
        });
      },
      update(el, binding, vnode) {
        console.error(binding.oldValue, binding.value);
        // eslint-disable-next-line
        const { badInput } = (el as any).validity;
        console.dir(badInput);
        // eslint-disable-next-line
        (el as HTMLInputElement).value = binding[badInput ? 'oldValue' : 'value'];
        // eslint-disable-next-line
        (vnode.context as any).$data.val = binding[badInput ? 'oldValue' : 'value'];
      },
    },
  },
})
export default class HelloWorld extends Vue {
  private val: number | string = '';

  private oldValue: number | string = '';

  onInput() {
    this.oldValue = this.val;
    console.log(this.val);
  }
}
</script>

<style lang="scss" scoped>
input {
  border: 1px solid red;
}
</style>
