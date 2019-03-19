<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow p-5">
      <div class="row mb-3">
        <div class="col-md-10">
          <h2>รายชื่อบริษัทและองค์กร</h2>
        </div>
        <div class="col-md-2">
          <h2>
            <a href="/listorgs/create" class="btn btn-primary float-right" role="button">Add Data</a>
          </h2>
        </div>
      </div>
      <div class="row ml-3 mr-3">
        <div class="card-wo-r shadow col-lg-12 p-2 mb-2" v-for="(ListOrg, index) in ListOrgs" :key="ListOrg.id">
          <div class="row">
            <div class="col-md-2">
              <p style="text-align:center;">
                <img
                  :src="'images/data/List/' + ListOrg.picture"
                  style="height: 90%; width: 90%; object-fit: contain"
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
              <h5 class="title">{{ListOrg.name_org}}</h5>
              <h5>Rating: {{ListOrg.rating}}</h5>
              <a
                :href="'/listorgs/'+ ListOrg.id +'/edit'"
                class="btn btn-block btn-warning"
                role="button"
              >Edit</a>
            </div>
          </div>
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
