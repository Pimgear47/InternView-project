@extends('layouts.app')
@section('content')
<div class="container col-md-10 col-sm-9 col-lg-10">
    <div class="card border-0 shadow">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-6">
                <div class="card-body pt-5 pl-5 pr-5">
                    <h1 class="title">CPE<br>INTERNVIEW</h1>
                    <p class="text title">แหล่งรวบรวมประสบการณ์การฝึกงาน ตามสถานที่หรือองค์กรต่างๆ
                        สำหรับเป็นข้อมูลประกอบการตัดสินใจเลือกสถานที่ฝึกงานแก่นักศึกษาวิศวกรรมคอมพิวเตอร์ชั้นปีที่ 3
                        หรือผู้ที่สนใจ</p>
                    <p class="title">Search :</p>
                    <form>
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
                        <button class="btn btn-block btn-primary" type="submit">Submit</button><br>
                    </form>
                </div>

            </div>
            <div class="col-sm-12 col-md-12 col-lg-6">
                <div class="card-body p-3">
                    <p class="mt-5 p-3" style="text-align:center;"><img src="images/page_welcome/Group 262.png" height="100%" width="100%" >
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection