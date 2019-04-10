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
            <button class="btn btn-primary" v-on:click="updateUser()">Update</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id"],
  data() {
    return {
      name_org: "",
      description: "",
      address: ""
    };
  },
  mounted() {
    axios.get("/api/listannouncement/" + this.id).then(response => {
      var ArrayData = response.data;
      this.orgData = ArrayData.ListOrg;
      this.name_org = this.orgData.name_org;
      this.description = this.orgData.description;
      this.address = this.orgData.address;
    });
  },
  methods: {
    updateUser() {
      axios.put("/api/listannouncement/" + this.id, {
        name_org: this.name_org,
        description: this.description,
        address: this.address
      });
    }
  }
};
</script>