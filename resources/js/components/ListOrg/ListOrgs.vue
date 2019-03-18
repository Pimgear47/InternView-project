<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="row p-5">
        <h2>รายชื่อบริษัทและองค์กร</h2>
        <table class="table table-bodered mt-3">
          <tr class="title">
            <th>รหัส</th>
            <th>ชื่อ</th>
            <th>Rating</th>
            <th>แก้ไข</th>
            <th>ลบ</th>
          </tr>
          <tr v-for="(ListOrg,index) in ListOrgs" :key="ListOrg.id">
            <td>{{ListOrg.id}}</td>
            <td class="title">{{ListOrg.name_org}}</td>
            <td>{{ListOrg.rating}}</td>
            <td>
              <a :href="'/listorgs/'+ ListOrg.id +'/edit'" class="btn btn-warning" role="button">Edit</a>
            </td>
            <td>
              <a
                href="javascript:;"
                class="btn btn-danger"
                role="button"
                v-on:click="deleteOrg(ListOrg.id,index)"
              >Delete</a>
            </td>
          </tr>
        </table>
        <a href="/listorgs/create" class="btn btn-primary mb-1" role="button">Add Data</a>
      </div>
    </div>
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
    deleteOrg(id,index) {
      axios.delete("api/listorgs/"+id).then(response => {
        this.ListOrgs.splice(index,1);
      });
    }
  },
  data() {
    return {
      ListOrgs: [],
      ListOrg: {
        id: 0,
        name_org: "",
        rating: 0
      }
    };
  }
};
</script>
