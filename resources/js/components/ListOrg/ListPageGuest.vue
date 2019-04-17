<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow pt-5 pl-5 pr-5 pb-3">
      <div class="row mb-3">
        <div class="col-md-10">
          <h2>รายชื่อบริษัทและองค์กร</h2>
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
                        :src="ListOrg.image"
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
                      <div class="inline text-left" v-for="i in parseInt(CalRating(ListOrg))" :key="i.id">
                        <div class="like-icon">&#10084; &nbsp;</div>
                      </div>&nbsp;
                      <span>Rating: {{CalRating(ListOrg)}}/5</span>&nbsp;
                      <ul class="tags">
                        <li v-for="tag in ArrTag(ListOrg)">
                          <a href="javascript:void(0);">{{tag}}</a>
                        </li>
                      </ul>
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
    },
    CalRating(ListOrg) {
      var rating = 0;
      var avg = 0;
      if (ListOrg.review.length != 0) {
        for (var i = 0; i < ListOrg.review.length; i++) {
          rating += parseInt(ListOrg.review[i].rating);
        }
        avg = parseInt(rating / ListOrg.review.length);
      } else avg = 0;
      return avg;
    },
    ArrTag(ListOrg) {
      var tagType = [];
      tagType = ListOrg.type.split(",");
      return tagType.splice(1);
    }
  },
  data() {
    return {
      ListOrgs: [],
      search: "",
      type: "",
      rating_s: "0",
      tagType: []
    };
  },
  computed: {
    filteredOrgs: function() {
      return this.ListOrgs.filter(ListOrg => {
        return (
          ListOrg.name_org.match(this.search) &&
          this.CalRating(ListOrg) >= parseInt(this.rating_s) &&
          ListOrg.type.match(this.type)
        );
      });
    }
  }
};
</script>
