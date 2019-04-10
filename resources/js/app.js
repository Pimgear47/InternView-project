require('./bootstrap');

window.Vue = require('vue');
window.axios = require('axios');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('main-page', require('./components/MainPage.vue').default);

Vue.component('list-page-guest', require('./components/ListOrg/ListPageGuest.vue').default);
Vue.component('list-page-admin', require('./components/ListOrg/ListPageAdmin.vue').default);
Vue.component('edit-list', require('./components/ListOrg/Edit.vue').default);
Vue.component('create-list', require('./components/ListOrg/CreateOrg.vue').default);

Vue.component('show-org-user', require('./components/ListOrg/ShowOrgUser.vue').default);
Vue.component('show-org-guest', require('./components/ListOrg/ShowOrgGuest.vue').default);

Vue.component('list-announcement-admin', require('./components/Announcement/ListAnnouncementAdmin.vue').default);
Vue.component('list-announcement-guest', require('./components/Announcement/ListAnnouncementGuest.vue').default);

Vue.component('create-ann', require('./components/Announcement/CreateAnn.vue').default);
Vue.component('show-ann-user', require('./components/Announcement/ShowAnnUser.vue').default);
Vue.component('show-ann-guest', require('./components/Announcement/ShowAnnGuest.vue').default);
Vue.component('edit-ann', require('./components/Announcement/Edit.vue').default);

const app = new Vue({
    el: '#app'
});