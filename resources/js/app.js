require('./bootstrap');

window.Vue = require('vue');
window.axios = require('axios');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('main-page', require('./components/MainPage.vue').default);

Vue.component('list-page', require('./components/ListOrg/ListPage.vue').default);
Vue.component('edit', require('./components/ListOrg/Edit.vue').default);
Vue.component('create', require('./components/ListOrg/Create.vue').default);
Vue.component('show-org', require('./components/ListOrg/ShowOrg.vue').default);

const app = new Vue({
    el: '#app'
});