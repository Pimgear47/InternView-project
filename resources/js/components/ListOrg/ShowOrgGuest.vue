<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <img
        :src="orgData.cover"
        style="height: 100%; width: 100%; object-fit: contain;"
      >
      <div class="container mt-4 mb-3">
        <h2 class="title">{{orgData.name_org}}</h2>
        <h2 class="txt-regular">{{orgData.description}}</h2>
        <h2 class="txt-regular">ที่อยู่ : {{orgData.address}}</h2>
      </div>
      <div class="container">
        <div id="map_canvas1"></div>
      </div>
      <div class="container mt-4 mb-3">
        <hr>
        <div v-if="reviews.length != 0" id="columns-holder">
          <div class="box" v-for="review in reviews.slice().reverse()" :key="review.review_id">
            <div class="row p-3">
              <!-- <div class="col-md-2"></div> -->
              <div class="col-md-12">
                <h1 class="txt-regular">
                  <b>{{review.user.firstname}} {{review.user.lastname}}</b>
                </h1>
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
        <div>
          <center>
            <span>
              If you have any review to share, please login first
              <a
                href="/login"
                class="btn btn-outline-primary mr-2 ml-2"
              >Login</a>
              or
              <a href="/register" class="btn btn-outline-primary mr-2 ml-2">Sign up</a>
            </span>
          </center>
        </div>
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
        description: "",
        Lat: "",
        Lng: ""
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
    this.initialize();
    google.maps.event.addDomListener(window, "load", initialize);
  },
  methods: {
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