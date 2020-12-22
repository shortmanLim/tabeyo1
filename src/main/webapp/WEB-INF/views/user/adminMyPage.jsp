<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<title>TABEYO</title>
<div class="jumbotron pl-5 m-0 p-3">
	<h1 class="display-3 pl-5">마이페이지</h1>
</div>

<div style="display: flex; padding: 0 30px 0 30px;">
	<button type="button"
		class="btn btn-outline-info btn-lg btn-block p-3 m-3"
		style="font-size: 40px;">전체회원관리</button>
</div>
<div>
	<div class="card border-info  m-5"
		style="display: flex; justify-content: center; margin: 0 30px 0 30px;">
		<div class="card-header display-4 bg-dark text-white">점포 신청 목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">#</th>
						<th class="col-md-5 text-center">점포명</th>
						<th class="col-md-2 text-center">회원ID</th>
						<th class="col-md-3 text-center">신청일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">0100</td>
						<td class="col-md-5 text-center">숙이네 칼국수</td>
						<td class="col-md-2 text-center">donald14</td>
						<td class="col-md-3 text-center">12/01 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0099</td>
						<td class="col-md-5 text-center">겐조라멘</td>
						<td class="col-md-2 text-center">hayashi1</td>
						<td class="col-md-3 text-center">11/30 11:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0098</td>
						<td class="col-md-5 text-center">구청구내식당</td>
						<td class="col-md-2 text-center">will smith</td>
						<td class="col-md-3 text-center">11/29 12:00</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0097</td>
						<td class="col-md-5 text-center">김가네</td>
						<td class="col-md-2 text-center">sorkwpdlf1</td>
						<td class="col-md-3 text-center">11/28 13:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0096</td>
						<td class="col-md-5 text-center">다미</td>
						<td class="col-md-2 text-center">wkfskrk2</td>
						<td class="col-md-3 text-center">11/27 11:0 0</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0095</td>
						<td class="col-md-5 text-center">아구찜</td>
						<td class="col-md-2 text-center">eieonf2443</td>
						<td class="col-md-3 text-center">12/01 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0094</td>
						<td class="col-md-5 text-center">종로김밥</td>
						<td class="col-md-2 text-center">akjfaskd3</td>
						<td class="col-md-3 text-center">11/30 11:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0093</td>
						<td class="col-md-5 text-center">피자스쿨</td>
						<td class="col-md-2 text-center">dlfeh1</td>
						<td class="col-md-3 text-center">11/29 12:00</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0092</td>
						<td class="col-md-5 text-center">가마치통닭</td>
						<td class="col-md-2 text-center">dleh2</td>
						<td class="col-md-3 text-center">11/28 13:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0091</td>
						<td class="col-md-5 text-center">파파이스</td>
						<td class="col-md-2 text-center">3tkaeh3</td>
						<td class="col-md-3 text-center">11/27 11:0 0</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="card border-info  m-5" style="display: flex; ">
	<div class="card-header display-4  bg-dark text-white"
	style="display: flex;justify-content: space-around;">신고
	목록</div>
	<div class="card-body" style="display: flex; justify-content: space-around;">
	<div class="card border-info  m-2" style="min-width: 19%;">
		<div class="card-header display-4 bg-dark text-white">점포신고목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">#</th>
						<th class="col-md-5 text-center">상호명</th>
						<th class="col-md-2 text-center">예약인원</th>
						<th class="col-md-3 text-center">예약일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">0100</td>
						<td class="col-md-5 text-center">숙이네 칼국수</td>
						<td class="col-md-2 text-center">2</td>
						<td class="col-md-3 text-center">12/01 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0099</td>
						<td class="col-md-5 text-center">겐조라멘</td>
						<td class="col-md-2 text-center">2</td>
						<td class="col-md-3 text-center">11/30 11:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0098</td>
						<td class="col-md-5 text-center">구청구내식당</td>
						<td class="col-md-2 text-center">5</td>
						<td class="col-md-3 text-center">11/29 12:00</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0097</td>
						<td class="col-md-5 text-center">김가네</td>
						<td class="col-md-2 text-center">1</td>
						<td class="col-md-3 text-center">11/28 13:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0096</td>
						<td class="col-md-5 text-center">다미</td>
						<td class="col-md-2 text-center">10</td>
						<td class="col-md-3 text-center">11/27 11:0 0</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card border-info  m-2" style="min-width: 19%;">
		<div class="card-header display-4 bg-dark text-white">회원신고목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">신고유형</th>
						<th class="col-md-4 text-center">신고대상</th>
						<th class="col-md-3 text-center">신고일시</th>
						<th class="col-md-2 text-center">처리상태</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>
	<div class="card border-info  m-2" style="min-width: 19%;">
		<div class="card-header display-4 bg-dark text-white">리뷰신고목록</div>
		<div class="card-body">

			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">#</th>
						<th class="col-md-6 text-center">제목</th>
						<th class="col-md-4 text-center">작성일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">0876</td>
						<td class="col-md-6 text-center">먼ㅇㄹ멍ㄴ러매ㅑㄴㅇ</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0876</td>
						<td class="col-md-6 text-center">먼ㅇㄹ멍ㄴ러매ㅑㄴㅇ</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0876</td>
						<td class="col-md-6 text-center">먼ㅇㄹ멍ㄴ러매ㅑㄴㅇ</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0876</td>
						<td class="col-md-6 text-center">먼ㅇㄹ멍ㄴ러매ㅑㄴㅇ</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0876</td>
						<td class="col-md-6 text-center">먼ㅇㄹ멍ㄴ러매ㅑㄴㅇ</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card border-info  m-2" style="min-width: 19%;">
		<div class="card-header display-4 bg-dark text-white">게시글신고목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-4 text-center">리뷰제목</th>
						<th class="col-md-5 text-center">상호명</th>
						<th class="col-md-3 text-center">작성일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-5 text-center">안철수면구소</td>
						<td class="col-md-3 text-center">11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-5 text-center">안철수면구소</td>
						<td class="col-md-3 text-center">11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-5 text-center">안철수면구소</td>
						<td class="col-md-3 text-center">11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-5 text-center">안철수면구소</td>
						<td class="col-md-3 text-center">11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-5 text-center">안철수면구소</td>
						<td class="col-md-3 text-center">11/29 15:30</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card border-info  m-2" style="min-width: 19%;">
		<div class="card-header display-4 bg-dark text-white">댓글신고목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">신고유형</th>
						<th class="col-md-4 text-center">신고대상</th>
						<th class="col-md-3 text-center">신고일시</th>
						<th class="col-md-2 text-center">처리상태</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-3 text-center">2020/11/25</td>
						<td class="col-md-3 text-center">처리중</td>
					</tr>
				</tbody>
			</table>
		</div>
</div>
	</div>

</div>
<style>
.info {
	width: 50%;
	margin: auto;
}
</style>
<%@ include file="../includes/footer.jsp"%>
