<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <img
        :src="'../images/data/List/' + orgData.headerpic"
        style="height: 100%; width: 100%; object-fit: contain;"
      >
      <div class="container mt-4 mb-3">
        <a
          v-if="usernow.admin"
          :href="'/listorgs/'+ id +'/edit'"
          class="btn btn-sm btn-warning float-right"
          role="button"
        >Edit</a>

        <h2 class="title">{{orgData.name_org}}</h2>
        <h2 class="txt-regular">{{orgData.description}}</h2>
        <h2 class="txt-regular">ที่อยู่ : {{orgData.address}}</h2>
      </div>
      <div class="container">
        <div id="map_canvas1"></div>
      </div>
      <div class="container mt-4 mb-3">
        <div class="row">
          <div class="col-md-2" v-if="usernow.admin"></div>
        </div>
        <hr>
        <div v-if="reviews.length != 0" id="columns-holder">
          <div class="box" v-for="review in reviews.slice().reverse()" :key="review.review_id">
            <div class="row p-3">
              <!-- <div class="col-md-2"></div> -->
              <div class="col-md-12">
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
        <div v-if="reviews.length == 0">
          <h1 class="txt-regular text-center">There aren’t any reviews for this organization yet.</h1>
        </div>
        <hr>
        <div class="form-group" v-if="this.reviews.some(checkPost)">
          <span>
            <center>You have already reviewed this organization.</center>
          </span>
        </div>
        <div class="form-group" v-else>
          <h1 class="txt-regular">รีวิวให้กับสถานที่ฝึกงานนี้</h1>
          <textarea
            class="form-control mb-2"
            id="exampleFormControlTextarea1"
            rows="3"
            v-model="getReview.getDescription"
          ></textarea>
          <div class="row">
            <div class="col-md-6">
              <div id="ratings">
                <div id="like" class="rating">
                  <input
                    type="radio"
                    id="heart_5"
                    name="like"
                    value="5"
                    v-model="getReview.getRating"
                  >
                  <label for="heart_5" title="Five">&#10084;</label>
                  <input
                    type="radio"
                    id="heart_4"
                    name="like"
                    value="4"
                    v-model="getReview.getRating"
                  >
                  <label for="heart_4" title="Four">&#10084;</label>
                  <input
                    type="radio"
                    id="heart_3"
                    name="like"
                    value="3"
                    v-model="getReview.getRating"
                  >
                  <label for="heart_3" title="Three">&#10084;</label>
                  <input
                    type="radio"
                    id="heart_2"
                    name="like"
                    value="2"
                    v-model="getReview.getRating"
                  >
                  <label for="heart_2" title="Two">&#10084;</label>
                  <input
                    type="radio"
                    id="heart_1"
                    name="like"
                    value="1"
                    v-model="getReview.getRating"
                  >
                  <label for="heart_1" title="One">&#10084;</label>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <button class="btn btn-primary float-right" v-on:click="addNewReview()">Submit</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "usernow"],
  data() {
    return {
      reviews: [],
      orgData: [],
      getReview: {
        getOrgId: this.id,
        getUserId: this.usernow.id,
        getRating: "",
        getDescription: ""
      }
    };
  },
  mounted() {
    this.getData();
    this.initialize();
    google.maps.event.addDomListener(window, "load", initialize);
  },
  methods: {
    addNewReview() {
      var date = new Date()
        .toLocaleString("en-US", { hour12: false })
        .split(" ");
      var time = date[1];
      var mdy = date[0];
      mdy = mdy.split("/");
      var month = parseInt(mdy[0]);
      var day = parseInt(mdy[1]);
      var year = parseInt(mdy[2]);
      var formattedDate = year + "-" + month + "-" + day + " " + time;
      if (
        this.getReview.getDescription != "" &&
        this.getReview.getRating != 0
      ) {
        axios.post("/api/reviews", {
          org_id: this.getReview.getOrgId,
          user_id: this.getReview.getUserId,
          description: this.getReview.getDescription,
          rating: this.getReview.getRating
        });
        const newReview = {
          description: this.getReview.getDescription,
          user: this.usernow,
          rating: this.getReview.getRating,
          created_at: formattedDate
        };
        this.reviews.push(newReview);
        this.getReview.getDescription = "";
        this.getReview.getRating = 0;
        alert("OK");
      } else {
        alert("Please Review and rate this");
      }
    },
    getData() {
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
    },
    checkPost(Arr) {
      return Arr.user.id == this.usernow.id;
    },
    initialize() {
      var mapOptions = {
        center: new google.maps.LatLng(this.orgData.Lat, this.orgData.Lng),
        zoom: 15
      };
      var map = new google.maps.Map(
        document.getElementById("map_canvas1"),
        mapOptions
      );
    }
  }
};
</script>