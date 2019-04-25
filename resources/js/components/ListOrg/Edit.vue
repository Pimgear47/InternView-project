<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="container mt-3">
        <h2 class="text-center title">แก้ไขข้อมูล</h2>
        <form :action="'/listorgs/'+id">
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
          </div>
          <div class="form-group">
            <label>logo image:</label>
            <input type="file" @change="onImageChange" name="image" class="form-control">
            <br>
            <img :src="this.image" class="img-responsive" height="100">
          </div>
          <div class="form-group">
            <label>cover image:</label>
            <input type="file" @change="onCoverChange" name="cover" class="form-control">
            <br>
            <img :src="this.cover" class="img-responsive" height="100">
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
            <label>type: {{this.typeUpdate}}</label>
            <multiselect v-model="Type" :options="options" :taggable="true" :multiple="true"></multiselect>
          </div>
          <div class="form-group">
            <button class="btn btn-primary" v-on:click="updateUser()" data-micron="blink">Update</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import Multiselect from 'vue-multiselect'
Vue.component('multiselect', Multiselect)
export default {
  props: ["id"],
  components: { Multiselect },
  data() {
    return {
      Type: [],
      typetext: "",
      name_org: "",
      image: "",
      cover: "",
      description: "",
      address: "",
      options: ['software', 'hardware', 'network'],
    };
  },
  mounted() {
    axios.get("/api/listorgs/" + this.id).then(response => {
      var ArrayData = response.data;
      this.orgData = ArrayData.ListOrg;
      this.name_org = this.orgData.name_org;
      this.description = this.orgData.description;
      this.address = this.orgData.address;
      this.image = this.orgData.image;
      this.cover = this.orgData.cover;
      this.Type = this.orgData.type.split(",").splice(1);
    });
  },
  methods: {
    updateUser() {
      axios.put("/api/listorgs/" + this.id, {
        name_org: this.name_org,
        description: this.description,
        address: this.address,
        image: this.image,
        cover: this.cover,
        type: 'All,'+this.Type.join()
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
    ArrTag(typetext) {
      var tagType = [];
      tagType = typetext.split(",");
      return tagType.splice(1);
    }
  }
};
</script>

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>