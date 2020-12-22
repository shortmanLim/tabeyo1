<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<style>
.star {
	display: inline-block;
	width: 30px;
	height: 60px;
	cursor: pointer;
}

.star_left {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
		no-repeat 0 0;
	background-size: 60px;
	margin-right: -3px;
}

.star_right {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
		no-repeat -30px 0;
	background-size: 60px;
	margin-left: -3px;
}

.star.on {
	background-image:
		url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
}

#sub {
	float: right;
}

table {
	font-size: 20px;
}

#reviewList {
	margin: 1rem;
}

.fa-circle {
	color: blue;
	font-size: 2rem;
}

.clearfix::after, .calendar ol::after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

/* ================
Calendar Styling */
.calendar {
	border-radius: 10px;
}

.month {
	font-size: 2rem;
}

@media ( min-width : 992px) {
	.month {
		font-size: 2rem;
	}
}

.calendar ol li {
	float: left;
	width: 14.28571%;
}

.calendar .day-names {
	border-bottom: 1px solid #eee;
	text-align: center;
	margin-bottom: 0px;
}

.calendar .day-names li {
	text-transform: uppercase;
	margin-bottom: 1rem;
}

.calendar .days li {
	border-bottom: 1px solid #eee;
	padding-left: 1rem;
	min-height: 5rem;
}

.calendar .days li .date {
	margin: 0.5rem 0;
}

.calendar .days li .event {
	font-size: 0.75rem;
	padding: 0.4rem;
	color: white;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	border-radius: 3rem;
	margin-bottom: 1px;
}

.calendar .days li .event.span-2 {
	width: 200%;
}

.calendar .days li .event.begin {
	border-radius: 1rem 0 0 1rem;
}

.calendar .days li .event.end {
	border-radius: 0 1rem 1rem 0;
}

.calendar .days li .event.clear {
	background: none;
}

.calendar .days li:nth-child(n+29) {
	border-bottom: none;
}

.calendar .days li.outside .date {
	color: #ddd;
}

.outside i {
	color: #C1F3FF;
}

#calendar {
	background-color: #3ca55c;
	background-image: linear-gradient(147deg, #3ca55c 0%, #b5ac49 100%);
	background-color: #3ca55c;
}
</style>
<div class="container-fluid">
	<div style="width: 65%; float: left; text-align: justify; padding: 50px 50px 0px 50px;">
		<h1 class="text-center display-4">리뷰 수정 페이지</h1>

		<form action="" method="get">
			<!-- 일단 임의로 get -->

			<div class="form-group display-4">
				<label class="col-form-label" for="inputDefault">리뷰제목</label> <input
					type="text" style="font-size: 30px;" class="form-control"
					placeholder="제목" id="inputDefault">
			</div>
			<!-- Stars  -->
			<div class="star-box">
				<span class="star star_left"></span> <span class="star star_right"></span>

				<span class="star star_left"></span> <span class="star star_right"></span>

				<span class="star star_left"></span> <span class="star star_right"></span>

				<span class="star star_left"></span> <span class="star star_right"></span>

				<span class="star star_left"></span> <span class="star star_right"></span>
			</div>
			<!-- END Stars -->

			<div class="form-group ">
				<label class="display-4" for="exampleTextarea">리뷰 내용</label>
				<textarea style="font-size: 30px;" class="form-control"
					id="exampleTextarea" rows="10" placeholder="내용을 작성해주세요."></textarea>
			</div>
			<div class="form-group">
				<label class="display-4" for="exampleInputFile">첨부파일</label> <input type="file"
					class="form-control-file" id="exampleInputFile"
					aria-describedby="fileHelp">
			</div>
			<div id=sub>
				<input type="submit" value="수정" class="btn btn-primary"> <a
					href="" class="btn btn-primary">이전화면</a>
				<button type="button" class="btn btn-warning">삭제</button>
			</div>
		</form>


	</div>
	<nav style="width: 35%; float: right;" id="bootcal">
		<div class="container pb-4" id="calendar">
			<div class="calendar shadow bg-white">
				<img src="https://miro.medium.com/max/750/1*E2DUofMeDF2xmbfSb_pzkA.gif" >
			</div>
			<div class="map p-5"> 
				  <img src="https://th.bing.com/th/id/OIP.3_BOfw1mnhkdxrnbMzs1NwHaGA?w=251&h=204&c=7&o=5&dpr=1.25&pid=1.7">
			</div>
		</div>
	</nav>
</div>


<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level : 3
	//지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
	staticMapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 이미지 지도의 중심좌표
		level : 3
	// 이미지 지도의 확대 레벨
	};

	// 이미지 지도를 표시할 div와 옵션으로 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer,
			staticMapOption);
</script>
<script>
	$(".star").on('click', function() {
		var idx = $(this).index();
		$(".star").removeClass("on");
		for (var i = 0; i <= idx; i++) {
			$(".star").eq(i).addClass("on");
		}
	});
</script>
<%@ include file="../includes/footer.jsp"%>
