<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-5">
          <div class="card-body pt-5 pl-5 pr-1 pb-5">
            <div class="row">
              <div class="col-md-10">
                <div class="contact">
                  <h1>Contact us</h1>
                  <ul>
                    <li>
                        <i class="fa fa-phone"></i>
                      <a>098-653-2147</a>
                    </li>
                    <li>
                      <i class="fa fa-envelope"></i>
                      <a href="mailto: CPE_Internview@gmail.com">CPE_Internview@gmail.com</a>
                    </li>
                    <li>
                      <i class="fa fa-facebook"></i>
                      <a href="https://www.facebook.com/Test_minidev-359472217987795">INTERNVIEW FOR CPE</a>
                    </li>
                    <li>
                      <i class="fa fa-map-marker"></i>
                      <p>
                        Department of Computer Engineering
                        <br>4th floor, 30 years Building , 
                        <br>Faculty of Engineering Chiang Mai University 
                      </p>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-12">
                <div class="container">
                  <div id="map_canvas1"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-7">
          <div class="card-body mt-5">
            <p class="mt-5 p-3 pr-5" style="text-align:center;">
              <img src="images/page_contact/Group 106.png" height="100%" width="100%">
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    console.log("Component mounted.");
    this.initialize();
    google.maps.event.addDomListener(window, "load", initialize);
  },
  methods: {
    initialize() {
      var mapOptions = {
        center: new google.maps.LatLng(18.795610, 98.952811),
        zoom: 16
      };
      var map = new google.maps.Map(
        document.getElementById("map_canvas1"),
        mapOptions
      );
    }
  }
};
</script>
