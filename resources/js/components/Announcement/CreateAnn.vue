<template>
  <div class="container col-md-10 col-sm-9 col-lg-10 mb-5">
    <div class="card col-md-11 border-0 shadow">
      <div class="container mt-5 mb-3">
        <h2 class="text-center title">ลงประกาศรับสมัครนักศึกษาฝึกงาน</h2>
        <form action="/listannouncement" @submit="checkForm">
          <div v-if="errors.length">
            <b class="text-validate">Please correct the following error(s):</b>
            <ul>
              <li class="text-validate" v-for="error in errors">{{ error }}</li>
            </ul>
          </div>
          <div class="form-group">
            <label>หัวข้อ</label>
            <input
              type="text"
              class="form-control"
              v-model="title"
              placeholder="หัวข้อที่ต้องการประกาศ"
            >
          </div>
          <div class="form-group">
            <label>บริษัท</label>
            <input type="text" class="form-control" v-model="name_org" placeholder="ชื่อบริษัท">
          </div>
          <div class="form-group">
            <label>ผู้ลงประกาศ</label>
            <input
              type="text"
              class="form-control"
              v-model="announcer"
              placeholder="ชื่อผู้ลงประกาศ"
            >
          </div>
          <div class="form-group">
            <label>รายละเอียดจากบริษัท</label>
            <textarea
              class="form-control mb-2"
              id="exampleFormControlTextarea1"
              rows="5"
              v-model="detail"
              placeholder="ใส่รายละเอียดของการรับสมัครที่นี่"
            ></textarea>
          </div>
          <div class="form-group">
            <label>บุคคลสำหรับติดต่อ</label>
            <input
              type="text"
              class="form-control"
              v-model="contact_person"
              placeholder="ชื่อบุคคลสำหรับการติดต่อกลับ"
            >
          </div>
          <div class="form-group">
            <label>เบอร์โทรศัพท์</label>
            <input
              type="text"
              class="form-control"
              v-model="tel_number"
              placeholder="เบอร์โทรศัพท์สำหรับการติดต่อกลับ"
            >
          </div>
          <div class="form-group">
            <label>ที่อยู่</label>
            <input
              type="text"
              class="form-control"
              v-model="address"
              placeholder="ที่อยู่สำหรับการติดต่อกลับ"
            >
          </div>
          <div class="form-group">
            <label>อีเมล์</label>
            <input
              type="email"
              class="form-control"
              v-model="email"
              placeholder="อีเมล์สำหรับการติดต่อกลับ"
            >
          </div>
          <div class="form-group">
            <button class="btn btn-primary" v-on:click="addNewAnn()">Save Here</button>
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
      errors: [],
      title: "",
      name_org: "",
      announcer: "",
      detail: "",
      contact_person: "",
      tel_number: "",
      address: "",
      email: ""
    };
  },
  methods: {
    addNewAnn() {
      axios.post("/api/listannouncement", {
        title: this.title,
        name_org: this.name_org,
        announcer: this.announcer,
        detail: this.detail,
        contact_person: this.contact_person,
        tel_number: this.tel_number,
        address: this.address,
        email: this.email
      });
    },
    addNewPost() {
      axios.post("/api/position", {
        title: this.title,
        name_org: this.name_org,
        announcer: this.announcer,
        detail: this.detail,
        contact_person: this.contact_person,
        tel_number: this.tel_number,
        address: this.address,
        email: this.email
      });
    },
    checkForm: function(e) {
      if (this.title && this.name_org && this.announcer && this.detail && this.contact_person && this.tel_number && this.address) {
        return true;
      }
      this.errors = [];
      if (!this.title) {
        this.errors.push("Title required.");
      }
      if (!this.name_org) {
        this.errors.push("Name required.");
      }
      if (!this.announcer) {
        this.errors.push("Announcer required.");
      }
      if (!this.detail) {
        this.errors.push("Detail required.");
      }
      if (!this.contact_person) {
        this.errors.push("Person for contact required.");
      }
      if (!this.tel_number) {
        this.errors.push("Telephone number required.");
      }
      if (!this.address) {
        this.errors.push("Address required.");
      }
      e.preventDefault();
    }
  }
};
</script>