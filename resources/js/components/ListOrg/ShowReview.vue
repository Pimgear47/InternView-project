<template>
  <div id="columns-holder">
    <div v-for="Review in Reviews" class="box">{{review.review_id}}</div>
  </div>
</template>

<script>
export default {
  props: ["id"],
  data() {
    return {
      Reviews: [],
      Review: {
        review_id: "",
        org_id: "",
        user_id: "",
        description: ""
      }
    };
  },
  mounted() {
    this.getReviewData();
  },
  methods: {
    getReviewData() {
      axios.get("api/listorgs").then(response => {
        this.Reviews = response.data;
      });
    }
  }
};
</script>