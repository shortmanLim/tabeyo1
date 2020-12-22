<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<style>
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
		<div>
			<div>
				<h1 class="pl-5 pb-2 pr-5">
					맛있었어요 <small style="float: right;">작성일시 : 2020-11-29
						15:31:42</small>
				</h1>

			</div>
			<div>
				<img class="p-4" alt="Bootstrap Image Preview"
					src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> <span
					style="font-size: 40px;" class="pt-5"> 식충<img width="70px"
					src="/resources/img/silver.png" />
					<small style="float:right;"><button type="button" class="btn btn-secondary">리뷰 신고</button></small>
				</span>
			</div>
			<div style="text-align: center;">
				<img alt="Bootstrap Image Preview"
					src="/resources/img/20180526-soupcurry01.jpg" />
				<h2></h2>
				<h2>근데 비싸요</h2>
				<h1>★★★★★</h1>
			</div>
			<div>
				<span class="badge badge-secondary" style="font-size:20px; float: right; border: 1px solid black;">게시글 수정</span>
				<span class="badge badge-secondary" style="font-size:20px; float: right; border: 1px solid black;">리뷰 목록으로</span>	
			</div>
		</div>
		<table class="table table-hover  pl-5 pr-5" style="float: left;">
			<thead>
				<tr class="row pl-5 pr-5">
					<th class="col-lg-1 text-center">#</th>
					<th class="col-lg-2 text-center">작성자</th>
					<th class="col-lg-7 text-center">댓글내용</th>
					<th class="col-lg-2 text-center">날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr class="row pl-5 pr-5">
					<td class="col-lg-1 text-center">1</td>
					<td class="col-lg-2 text-center">돼지</td>
					<td class="col-lg-7 text-center">배가 차요?</td>
					<td class="col-lg-2 text-center">2020/11/29</td>
				</tr>
				<tr class="row pl-5 pr-5">
					<td class="col-lg-1 text-center">2</td>
					<td class="col-lg-2 text-center">거지</td>
					<td class="col-lg-7 text-center">그돈이면 국밥을</td>
					<td class="col-lg-2 text-center">2020/11/29</td>
				</tr>
				<tr class="row pl-5 pr-5">
					<td class="col-lg-1 text-center">3</td>
					<td class="col-lg-2 text-center">염지</td>
					<td class="col-lg-7 text-center">그돈이면 치킨을</td>
					<td class="col-lg-2 text-center">2020/11/29</td>
				</tr>
			</tbody>
		</table>
		<span class="badge badge-secondary" style="font-size:20px; float: right; border: 1px solid black;">댓글작성</span>
		<div style="display: flex; justify-content: center; float: left;">
					<ul class="pagination pagination-lg">
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
						</li>
						<li class="page-item active"><a class="page-link" href="#">1</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a>
						</li>
					</ul>
				</div>
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
<%@ include file="../includes/footer.jsp"%>
