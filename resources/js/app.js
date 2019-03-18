require('./bootstrap');

window.Vue = require('vue');
window.axios = require('axios');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('search-main', require('./components/SearchMain.vue').default);


Vue.component('list-orgs', require('./components/ListOrg/ListOrgs.vue').default);
Vue.component('edit', require('./components/ListOrg/Edit.vue').default);
Vue.component('create', require('./components/ListOrg/Create.vue').default);

const app = new Vue({
    el: '#app'
});