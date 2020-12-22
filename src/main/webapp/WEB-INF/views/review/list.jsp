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
</style>
<div id="reviewList">
	<div style="width: 65%; float: left; text-align: justify; padding: 50px 50px 0px 50px;">
		<div>
		<div class="jumbotron p-3 pl-5">
				<h1 class="display-3 info">리뷰 목록</h1>
			</div>
			<div>
				<table class="table table-hover  pl-5 pr-5">
					<thead>
						<tr class="row pl-5 pr-5">
							<th class="col-lg-1 text-center">#</th>
							<th class="col-lg-7 text-center">제목</th>
							<th class="col-lg-1 text-center">별점</th>
							<th class="col-lg-2 text-center">작성자</th>
							<th class="col-lg-1 text-center">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">100</td>
							<td class="col-lg-7 text-center">맛있었어요</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">식충</td>
							<td class="col-lg-1 text-center">2020/11/29</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">99</td>
							<td class="col-lg-7 text-center">별로에요2</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">CJ식품</td>
							<td class="col-lg-1 text-center">2020/11/28</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">98</td>
							<td class="col-lg-7 text-center">별로에요</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">오뚜기맨</td>
							<td class="col-lg-1 text-center">2020/11/27</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">97</td>
							<td class="col-lg-7 text-center">맛있군요</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">옆집사장</td>
							<td class="col-lg-1 text-center">2020/11/26</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">96</td>
							<td class="col-lg-7 text-center">맛있네요</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">손님2</td>
							<td class="col-lg-1 text-center">2020/11/25</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">95</td>
							<td class="col-lg-7 text-center">맛있어요</td>
							<td class="col-lg-1 text-center">★★★★★</td>
							<td class="col-lg-2 text-center">손님</td>
							<td class="col-lg-1 text-center">2020/11/24</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">94</td>
							<td class="col-lg-7 text-center">맛있어</td>
							<td class="col-lg-1 text-center">★★★★☆</td>
							<td class="col-lg-2 text-center">손</td>
							<td class="col-lg-1 text-center">2020/11/23</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">93</td>
							<td class="col-lg-7 text-center">맛있는걸까?</td>
							<td class="col-lg-1 text-center">★★★☆☆</td>
							<td class="col-lg-2 text-center">장금이</td>
							<td class="col-lg-1 text-center">2020/11/22</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">92</td>
							<td class="col-lg-7 text-center">맛있네</td>
							<td class="col-lg-1 text-center">★☆☆☆☆</td>
							<td class="col-lg-2 text-center">거지</td>
							<td class="col-lg-1 text-center">2020/11/21</td>
						</tr>
						<tr class="row pl-5 pr-5">
							<td class="col-lg-1 text-center">91</td>
							<td class="col-lg-7 text-center">맛있나?</td>
							<td class="col-lg-1 text-center">☆☆☆☆☆</td>
							<td class="col-lg-2 text-center">불편러</td>
							<td class="col-lg-1 text-center">2020/11/20</td>
						</tr>

					</tbody>
				</table>
				<!-- paging -->
				<div style="display: flex; justify-content: center;">
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
					<button type="button" class="btn btn-secondary">리뷰 작성</button>
				</div>
					
				<!--  END paging -->
			</div>
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
<!-- END reviewList -->
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
