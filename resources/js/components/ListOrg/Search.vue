<template>
  <div>
    <p class="title">Search :</p>
    <input type="text" class="form-control mb-3" placeholder="Search">
    <div class="form-group">
      <label class="title" for="sel1">สายงานที่สนใจ :</label>
      <select class="form-control" id="sel1">
        <option>Software</option>
        <option>Hardware</option>
        <option>Network</option>
      </select>
    </div>
    <label class="title" for="customRange3">Rating :</label>
    <input type="range" class="custom-range" min="0" max="5" step="0.5" id="customRange3">
    <hr>
    <button class="btn btn-block btn-primary" type="submit">Submit</button>
  </div>
</template>

<script>
export default {
  mounted() {
    this.getOrgData();
  },
  methods: {
    getOrgData() {
      axios.get("api/listorgs").then(response => {
        this.ListOrgs = response.data;
      });
    },
    deleteOrg(id, index) {
      axios.delete("api/listorgs/" + id).then(response => {
        this.ListOrgs.splice(index, 1);
      });
    }
  },
  data() {
    return {
      ListOrgs: [],
      ListOrg: {
        id: 0,
        picture: "",
        name_org: "",
        rating: 0
      }
    };
  }
};
</script>
