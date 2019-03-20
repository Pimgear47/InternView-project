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
            <div class="row">
              <div
                class="card-wo-r shadow col-lg-12 p-2 mb-2"
                v-for="(ListOrg, index) in filteredOrgs"
                :key="ListOrg.id"
              >
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
          </div>
          <div class="col-md-4">
            <div class="card-wo-r shadow p-3">
              <p class="title">Search :</p>
              <input v-model="search" type="text" class="form-control mb-3" placeholder="Search">
              <div class="form-group">
                <label class="title" for="sel1">สายงานที่สนใจ :</label>
                <select class="form-control" id="sel1">
                  <option>Software</option>
                  <option>Hardware</option>
                  <option>Network</option>
                </select>
              </div>
              <label class="title" for="customRange3">Rating :</label>
              <input type="range" class="custom-range" min="0" max="5" step="0.5" id="customRange3">
              <hr>
              <button class="btn btn-block btn-primary" type="submit">Submit</button>
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
      },
      search:''
    };
  },
  computed: {
    filteredOrgs: function(){
      return this.ListOrgs.filter((ListOrg)=>{
        return ListOrg.name_org.match(this.search)
      })
    }
  },
};
</script>
