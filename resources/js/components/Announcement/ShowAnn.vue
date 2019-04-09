<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card border-0 shadow">
      <div class="container mt-5 mb-3">
        <h3>{{this.title}}</h3>
        <div class="row pl-4 pt-2 pb-2">
          <span class="text txt-regular">
            ลงประกาศเมื่อ
            <b>{{created_at}}</b>
          </span>
        </div>
        <div class="row pl-4 pb-2 pr-4">
          <div class="like-icon">&#9873;</div>
          <span class="text txt-regular">&nbsp;{{name_org}}</span>
        </div>
        <div class="row pl-4 pb-2 pr-4">
          <div class="like-icon">&#9660;</div>
          <span class="text txt-regular">&nbsp;{{address}}</span>
        </div>
        <div class="row pl-4 pb-2 pr-4">
          <pre class="text txt-regular"><b>รายละเอียด</b> : {{detail}}</pre>
        </div>
        <div class="row pl-4 pb-2 pr-4">
          <span class="text txt-regular">
            <b>สนใจติดต่อ</b>
            : {{contact_person}}
          </span>
        </div>
        <div class="row pl-4 pb-2 pr-4">
          <span class="text txt-regular">โทร {{tel_number}} ที่อยู่ {{address}} อีเมล์ {{email}}</span>
        </div>
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
      tel_number: "",
      address: "",
      email: "",
      created_at: ""
    };
  },
  mounted() {
    axios.get("/api/listannouncement/" + this.id).then(response => {
      var ArrayData = response.data;
      this.title = ArrayData.title;
      this.name_org = ArrayData.name_org;
      this.address = ArrayData.address;
      this.detail = ArrayData.detail;
      this.contact_person = ArrayData.contact_person;
      this.tel_number = ArrayData.tel_number;
      this.address = ArrayData.address;
      this.email = ArrayData.email;
      this.created_at = ArrayData.created_at;
    });
  }
};
</script>