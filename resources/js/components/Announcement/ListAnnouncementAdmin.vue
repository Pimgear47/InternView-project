<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow pt-5 pl-5 pr-5 pb-3">
      <div class="row mb-3">
        <div class="col-md-10">
          <h2>ประกาศรับนักศึกษาฝึกงาน</h2>
        </div>
        <div class="col-md-2">
          <h2>
            <a
              href="/listannouncement/create"
              class="btn btn-primary float-right"
              role="button"
            >ประกาศรับสมัคร</a>
          </h2>
        </div>
        <div class="col-md-12 mt-3">
          <div class="row">
            <div class="col-md-8 col-lg-9">
              <div
                class="card-wo-r shadow col-lg-12 p-2 mb-2"
                v-for="(ListAnn , index) in filteredAnns"
                :key="ListAnn.id"
              >
                <div class="row pl-4 pr-4">
                  <a
                    :href="'/listannouncement/'+ListAnn.id"
                    class="txt-bold text-link"
                  >{{ListAnn.title}}</a>
                </div>
                <div class="row pl-4 pt-2 pb-2">
                  <span>
                    ลงประกาศเมื่อ
                    <b>{{ListAnn.created_at}}</b>
                    โดย <d>{{ListAnn.announcer}}</d>
                  </span>
                </div>
                <div class="row pl-4 pb-2 pr-4">
                  <div class="like-icon">&#9873;</div>
                  <span>&nbsp;{{ListAnn.name_org}}</span>
                </div>
                <div class="row pl-4 pb-2 pr-4">
                  <div class="like-icon">&#9660;</div>
                  <span>&nbsp;{{ListAnn.address}}</span>
                </div>
                <a
                    href="javascript:;"
                    class="btn btn-sm btn-danger float-right Del"
                    role="button"
                    v-on:click="deleteAnn(ListAnn.id,index)"
                  >Delete</a>
              </div>
            </div>
            <div class="col-md-4 col-lg-3 float-right mb-2">
              <div class="card-wo-r shadow p-3">
                <p class="title">Search :</p>
                <input v-model="search" type="text" class="form-control mb-3" placeholder="Search">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    this.getAnnData();
  },
  methods: {
    getAnnData() {
      axios.get("api/listannouncement").then(response => {
        this.ListAnns = response.data;
      });
    },
    deleteAnn(id, index) {
      if (confirm("Do you really want to delete?")) {
        axios
          .delete("api/listannouncement/" + id)
          .then(response => {
            this.ListAnn.splice(index, 1);
          })
          .catch(error => {
            console.log(error);
          });
      }
    }
  },
  data() {
    return {
      ListAnns: [],
      ListAnn: {
        id: 0,
        title: "",
        name_org: "",
        address: "",
        create_at: ""
      },
      search: ""
    };
  },
  computed: {
    filteredAnns: function() {
      return this.ListAnns.filter(ListAnn => {
        return ListAnn.title.toLowerCase().match(this.search.toLowerCase());
      });
    }
  }
};
</script>
