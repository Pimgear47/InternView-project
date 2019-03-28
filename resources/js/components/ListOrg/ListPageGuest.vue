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
        <div class="col-md-12 mt-3">
          <div class="row">
            <div class="col-md-8 col-lg-9">
              <div
                class="card-wo-r shadow col-lg-12 p-2 mb-2"
                v-for="(ListOrg) in filteredOrgs"
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
                      :href="'/listorgs/'+ ListOrg.id"
                      class="txt-bold text-link"
                    >{{ListOrg.name_org}}</a>
                    <div class="row p-3">
                      <div>
                      </div>
                      <div class="inline text-left" v-for="i in parseInt(ListOrg.rating)" :key="i.id">
                        <img src="images/icon/Heart-icon.png">&nbsp;
                      </div>
                      <div class="inline text-left" v-if="ListOrg.rating%1!=0">
                        <img src="images/icon/Heart-icon-half.png">
                      </div>
                      &nbsp;<h2 class="txt-bold">Rating: {{(Math.round(ListOrg.rating*2))/2}}/5</h2>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-lg-3 float-right mb-2">
              <div class="card-wo-r shadow p-3">
                <p class="title">Search :</p>
                <input v-model="search" type="text" class="form-control mb-3" placeholder="Search">
                <div class="form-group">
                  <label class="title" for="sel1">สายงานที่สนใจ : {{type}}</label>
                  <select class="form-control" id="sel1" v-model="type">
                    <option>All</option>
                    <option>software</option>
                    <option>hardware</option>
                    <option>network</option>
                  </select>
                </div>
                <label class="title" for="customRange3">Rating ขั้นต่ำ : {{rating_s}}</label>
                <input
                  v-model="rating_s"
                  type="range"
                  class="custom-range"
                  min="0"
                  max="5"
                  step="1"
                  id="customRange3"
                >
              </div>
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
      search: "",
      type: "",
      rating_s: "0"
    };
  },
  computed: {
    filteredOrgs: function() {
      return this.ListOrgs.filter(ListOrg => {
        return (
          ListOrg.name_org.match(this.search) &&
          Math.round(ListOrg.rating * 2) / 2 >= parseInt(this.rating_s) &&
          ListOrg.type.match(this.type)
        );
      });
    }
  }
};
</script>
