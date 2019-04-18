<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow pl-5 pr-5 pb-3">
      <div class="container mt-5 mb-3">
        <h2 class="text-center title">เพิ่มข้อมูล</h2>
        <form action="/listorgs" @submit="checkForm" enctype="multipart/form-data">
          <div v-if="errors.length">
            <b class="text-validate">Please correct the following error(s):</b>
            <ul>
              <li class="text-validate" v-for="error in errors">{{ error }}</li>
            </ul>
          </div>
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
          </div>
          <div class="form-group">
            <label>logo image:</label>
            <input type="file" @change="onImageChange" name="image" class="form-control">
            <br>
            <img :src="image" v-if="checkPic" class="img-responsive" height="100">
          </div>
          <div class="form-group">
            <label>cover image:</label>
            <input type="file" @change="onCoverChange" name="cover" class="form-control">
            <br>
            <img :src="cover" v-if="checkCover" class="img-responsive" height="100">
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
            <label>Type:&nbsp;&nbsp;</label>
            <input type="checkbox" id="Software" value="software" v-model="Type">
            <label for="Software">Software</label>
            <input type="checkbox" id="Hardware" value="hardware" v-model="Type">
            <label for="Hardware">Hardware</label>
            <input type="checkbox" id="Network" value="network" v-model="Type">
            <label for="Network">Network</label>
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
      errors: [],
      Type: ['All'],
      name_org: "",
      description: "",
      address: "",
      image: "",
      cover: "",
      checkPic: false,
      checkCover: false
    };
  },
  methods: {
    addNewOrg() {
      axios
        .post("/api/listorgs", {
          name_orgS: this.name_org,
          description: this.description,
          address: this.address,
          image: this.image,
          cover: this.cover,
          type: this.Type.join()
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
      reader.onloadend = e => {
        this.image = reader.result;
        console.log(this.image);
      };
      reader.readAsDataURL(file);
    },
    onCoverChange(e) {
      let file = e.target.files[0];
      this.checkCover = true;
      let reader = new FileReader();
      reader.onloadend = e => {
        this.cover = reader.result;
        console.log(this.image);
      };
      reader.readAsDataURL(file);
    },
    checkForm: function(e) {
      if (
        this.name_org &&
        this.description &&
        this.address &&
        this.image &&
        this.cover && this.Type.length != 1
      ) {
        return true;
      }
      this.errors = [];
      if (!this.name_org) {
        this.errors.push("Name required.");
      }
      if (!this.image) {
        this.errors.push("Logo image required.");
      }
      if (!this.cover) {
        this.errors.push("Cover image required.");
      }
      if (!this.description) {
        this.errors.push("Description required.");
      }
      if (!this.address) {
        this.errors.push("Address required.");
      }
      if (this.Type.length == 1) {
        this.errors.push("Type required.");
      }
      e.preventDefault();
    }
  }
};
</script>