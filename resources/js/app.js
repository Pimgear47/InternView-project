require('./bootstrap');

window.Vue = require('vue');
window.axios = require('axios');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('search-main', require('./components/SearchMain.vue').default);

const app = new Vue({
    el: '#app'
});