<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow pt-5 pl-5 pr-5 pb-3">
      <div class="row mb-3">
        <div class="col-md-10">
          <h2>รายชื่อบริษัทและองค์กร</h2>
        </div>
        <div class="col-md-2">
          <h2>
            <a href="/listorgs/create" class="btn btn-primary float-right" role="button">Add Data</a>
          </h2>
        </div>
        <div class="row mt-3 p-2">
          <div class="col-md-8">
            <orgs></orgs>
          </div>
          <div class="col-md-4">
            <div class="card-wo-r shadow p-3">
              <search></search>
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
