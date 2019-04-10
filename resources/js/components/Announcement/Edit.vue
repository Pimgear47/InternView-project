<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="container mt-3">
        <h2 class="text-center title">แก้ไขข้อมูล</h2>
        <form :action="'/listannouncement/'+id">
          <div class="form-group">
            <label>title:</label>
            <input type="text" class="form-control" v-model="title">
          </div>
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
          </div>
          <div class="form-group">
            <label>announcer:</label>
            <input type="text" class="form-control" v-model="announcer">
          </div>
          <div class="form-group">
            <label>detail:</label>
            <textarea
              class="form-control mb-2"
              id="exampleFormControlTextarea1"
              rows="8"
              v-model="detail"
            ></textarea>
          </div>
          <div class="form-group">
            <label>contact_person:</label>
            <input type="text" class="form-control" v-model="contact_person">
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
      title: "",
      name_org: "",
      announcer: "",
      detail: "",
      contact_person: "",
      address: ""
    };
  },
  mounted() {
    axios.get("/api/listannouncement/" + this.id).then(response => {
      var ArrayData = response.data;
      this.title = ArrayData.title;
      this.name_org = ArrayData.name_org;
      this.announcer = ArrayData.announcer;
      this.detail = ArrayData.detail;
      this.contact_person = ArrayData.contact_person;
      this.address = ArrayData.address;
    });
  },
  methods: {
    updateUser() {
      axios.put("/api/listannouncement/" + this.id, {
        title: this.title,
        name_org: this.name_org,
        announcer: this.announcer,
        detail: this.detail,
        contact_person: this.contact_person,
        address: this.address
      });
    }
  }
};
</script>