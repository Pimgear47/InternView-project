<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <img
        :src="'../images/data/List/' + headerpic"
        style="height: 100%; width: 100%; object-fit: contain;"
      >
      <div class="container mt-4 mb-3">
        <h2 class="title">{{name_org}}</h2>
        <h2 class="txt-regular">{{description}}</h2>
        <hr>
        <div id="columns-holder">
          <div v-for="reviewE in orgsData.review" class="box">
            <h3 class="txt-regular p-2">{{reviewE.description}}</h3>
          </div>
        </div>
        <hr>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id"],
  data() {
    return {
      orgsData: [],
      name_org: "",
      picture: "",
      headerpic: "",
      description: "",
    };
  },
  mounted() {
    console.log(this.orgsData.length);
    axios.get("/api/listorgs/" + this.id).then(response => {
      this.orgsData = response.data;
      var listorg = response.data;
      this.name_org = listorg.name_org;
      this.picture = listorg.picture;
      this.description = listorg.description;
      this.headerpic = listorg.headerpic;
    });
  }
};
</script>