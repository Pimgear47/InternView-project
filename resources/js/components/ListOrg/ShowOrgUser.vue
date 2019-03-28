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
        <div class="form-group">
          <h1 class="txt-regular">รีวิวสถานที่ฝึกงานนี้</h1>
          <textarea class="form-control mb-2" id="exampleFormControlTextarea1" rows="3" v-model="getReview.getDescription">></textarea>
          <div class="row">
            <div class="col-md-6">
              <div id="ratings">
                <div id="like" class="rating">
                  <input type="radio" id="heart_5" name="like" value="5" v-model="getReview.getRating">
                  <label for="heart_5" title="Five">&#10084;</label>
                  <input type="radio" id="heart_4" name="like" value="4" v-model="getReview.getRating">
                  <label for="heart_4" title="Four">&#10084;</label>
                  <input type="radio" id="heart_3" name="like" value="3" v-model="getReview.getRating">
                  <label for="heart_3" title="Three">&#10084;</label>
                  <input type="radio" id="heart_2" name="like" value="2" v-model="getReview.getRating">
                  <label for="heart_2" title="Two">&#10084;</label>
                  <input type="radio" id="heart_1" name="like" value="1" v-model="getReview.getRating">
                  <label for="heart_1" title="One">&#10084;</label>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <button class="btn btn-primary float-right">Submit</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id","usernow"],
  data() {
    return {
      reviews: [],
      orgData: {
        name_org: "",
        headerpic: "",
        description: ""
      },
      getReview: {
        getOrgId : this.id,
        getUserId : this.usernow.id,
        getRating : "",
        getDescription: ""
      },
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