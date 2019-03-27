require('./bootstrap');

window.Vue = require('vue');
window.axios = require('axios');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('main-page', require('./components/MainPage.vue').default);

Vue.component('list-page-guest', require('./components/ListOrg/ListPageGuest.vue').default);
Vue.component('list-page-admin', require('./components/ListOrg/ListPageAdmin.vue').default);
Vue.component('edit', require('./components/ListOrg/Edit.vue').default);
Vue.component('create', require('./components/ListOrg/Create.vue').default);
Vue.component('show-org', require('./components/ListOrg/ShowOrg.vue').default);

Vue.component('show-review', require('./components/ListOrg/ShowReview.vue').default);

const app = new Vue({
    el: '#app'
});