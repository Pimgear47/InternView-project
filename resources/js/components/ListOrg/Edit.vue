<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="container mt-3">
        <h2 class="text-center title">แก้ไขข้อมูล</h2>
        <form action="/listorgs">
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
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
      name_org: ""
    };
  },
  mounted() {
    axios.get("/api/listorgs/" + this.id).then(response => {
      var listorg = response.data;
      this.name_org = listorg.name_org;
      console.log(listorg.name_org);
    });
  },
  methods: {
    updateUser() {
      axios.put("/api/listorgs/" + this.id, {
        name_org: this.name_org
      });
    }
  }
};
</script>