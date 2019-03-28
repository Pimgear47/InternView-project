<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <img
        :src="'../images/data/List/' + orgData.headerpic"
        style="height: 100%; width: 100%; object-fit: contain;"
      >
      <div class="container mt-4 mb-3">
        <h2 class="title">{{orgData.name_org}}</h2>
        <h2 class="txt-regular">{{orgData.description}}</h2>
        <hr>
        <div id="columns-holder">
          <div class="box" v-for="review in reviews" :key="review.review_id">
            <div class="row p-2">
              <div class="col-md-2"></div>
              <div class="col-md-10">
                <h2 class="txt-regular">
                  <b>{{review.user.firstname}} {{review.user.lastname}}</b>
                </h2>
                <h2 class="txt-regular"># {{review.created_at}}</h2>
                <h2 class="txt-regular">{{review.description}}</h2>
                <div class="row ml-1">
                  <div
                    class="like-icon"
                    v-for="i in parseInt(review.rating)"
                    :key="i.id"
                  >&#10084; &nbsp;</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id"],
  data() {
    return {
      reviews: [],
      orgData: {
        name_org: "",
        headerpic: "",
        description: ""
      }
    };
  },
  mounted() {
    axios.get("/api/listorgs/" + this.id).then(response => {
      var ArrayData = response.data;

      this.orgData = ArrayData.ListOrg;

      this.reviews = ArrayData.Review.map(review => {
        return {
          description: review.description,
          user: review.user,
          rating: review.rating,
          created_at: review.created_at
        };
      });
    });
  }
};
</script>