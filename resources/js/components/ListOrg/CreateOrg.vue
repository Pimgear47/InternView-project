<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow pl-5 pr-5 pb-3">
      <div class="container mt-5 mb-3">
        <h2 class="text-center title">เพิ่มข้อมูล</h2>
        <form action="/listorgs" enctype="multipart/form-data">
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
          </div>
          <div class="form-group">
            <label>picture:</label>
            <input type="file" @change="onImageChange" name="image" class="form-control">
            <br>
            <img :src="image" v-if="checkPic" class="img-responsive" height="100">
          </div>
          <div class="form-group">
            <label>description:</label>
            <textarea
              class="form-control mb-2"
              id="exampleFormControlTextarea1"
              rows="5"
              v-model="description"
            ></textarea>
          </div>
          <div class="form-group">
            <label>address:</label>
            <input type="text" class="form-control" v-model="address">
          </div>
          <div class="form-group">
            <button class="btn btn-primary" v-on:click="addNewOrg()">Save</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name_org: "",
      description: "",
      address: "",
      image: "",
      checkPic: false
    };
  },
  methods: {
    addNewOrg() {
      axios
        .post("/api/listorgs", {
          name_orgS: this.name_org,
          description: this.description,
          address: this.address,
          image: this.image
        })
        .then(response => {
          if (response.data.success) {
            alert(response.data.success);
          }
        })
        .catch(error => {
          console.log(error.message);
        });
    },
    onImageChange(e) {
      let file = e.target.files[0];
      this.checkPic = true;
      let reader = new FileReader();
      reader.onloadend = (e) => {
        this.image = reader.result;
        console.log(this.image);
      }
      reader.readAsDataURL(file);
    },
  }
};
</script>