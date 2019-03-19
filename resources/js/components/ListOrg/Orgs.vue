<template>
      <div class="row">
        <div class="card-wo-r shadow col-lg-12 p-2 mb-2" v-for="(ListOrg, index) in ListOrgs" :key="ListOrg.id">
          <div class="row">
            <div class="col-md-2">
              <p style="text-align:center;">
                <img
                  :src="'images/data/List/' + ListOrg.picture"
                  style="height: 100%; width: 100%; object-fit: contain"
                >
              </p>
            </div>
            <div class="col-md-10 mt-2">
              <a
                href="javascript:;"
                class="btn btn-sm btn-danger float-right"
                role="button"
                v-on:click="deleteOrg(ListOrg.id,index)"
              >Delete</a>
              <h2 class="txt-bold">{{ListOrg.name_org}}</h2>
              <a
                :href="'/listorgs/'+ ListOrg.id +'/edit'"
                class="btn btn-sm btn-warning float-right"
                role="button"
              >Edit</a>
              <h2 class="txt-bold">Rating: {{ListOrg.rating}}</h2>
            </div>
          </div>
        </div>
      </div>
</template>

<script>
export default {
  mounted() {
    this.getOrgData();
  },
  methods: {
    getOrgData() {
      axios.get("api/listorgs").then(response => {
        this.ListOrgs = response.data;
      });
    },
    deleteOrg(id, index) {
      axios.delete("api/listorgs/" + id).then(response => {
        this.ListOrgs.splice(index, 1);
      });
    }
  },
  data() {
    return {
      ListOrgs: [],
      ListOrg: {
        id: 0,
        picture: "",
        name_org: "",
        rating: 0
      }
    };
  }
};
</script>
