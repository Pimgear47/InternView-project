<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card col-md-11 border-0 shadow">
      <div class="container mt-5 mb-3">
        <h2 class="text-center title">เพิ่มข้อมูล</h2>
        <form action="/listorgs">
          <div class="form-group">
            <label>id:</label>
            <input type="text" class="form-control" v-model="id">
          </div>
          <div class="form-group">
            <label>name_org:</label>
            <input type="text" class="form-control" v-model="name_org">
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
      id: '',
      name_org: ""
    };
  },
  methods: {
    addNewOrg() {
      axios.post("/api/listorgs", {
        id: this.id,
        name_org: this.name_org
      });
    }
  }
};
</script>