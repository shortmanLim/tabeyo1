<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<title>TABEYO</title>
<div class="jumbotron pl-5 m-0 p-3">
	<h1 class="display-3 pl-5">사업자 마이페이지</h1>
</div>

<div style="display: flex; padding: 0 30px 0 30px;">
	<button type="button"
		class="btn btn-outline-info btn-lg btn-block p-3 m-3"
		style="font-size: 40px;">회원정보수정</button>
</div>
<div>
	<div class="card border-info  m-5"
		style="display: flex; justify-content: center; margin: 0 30px 0 30px;">
		<div class="card-header display-4 bg-dark text-white">내 점포 예약 목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">#</th>
						<th class="col-md-5 text-center">예약자</th>
						<th class="col-md-2 text-center">인원수</th>
						<th class="col-md-3 text-center">예약일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">0100</td>
						<td class="col-md-5 text-center">못난이</td>
						<td class="col-md-2 text-center">4</td>
						<td class="col-md-3 text-center">2020/12/01 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0099</td>
						<td class="col-md-5 text-center">예쁜이</td>
						<td class="col-md-2 text-center">1</td>
						<td class="col-md-3 text-center">2020/11/30 11:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0098</td>
						<td class="col-md-5 text-center">광년이</td>
						<td class="col-md-2 text-center">2</td>
						<td class="col-md-3 text-center">2020/11/29 12:00</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0097</td>
						<td class="col-md-5 text-center">칠뜨기</td>
						<td class="col-md-2 text-center">1</td>
						<td class="col-md-3 text-center">2020/11/28 13:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0096</td>
						<td class="col-md-5 text-center">땡칠이</td>
						<td class="col-md-2 text-center">2</td>
						<td class="col-md-3 text-center">2020/11/27 11:0 0</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0095</td>
						<td class="col-md-5 text-center">놀부</td>
						<td class="col-md-2 text-center">1</td>
						<td class="col-md-3 text-center">2020/12/01 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0094</td>
						<td class="col-md-5 text-center">흥부</td>
						<td class="col-md-2 text-center">10</td>
						<td class="col-md-3 text-center">2020/11/30 11:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0093</td>
						<td class="col-md-5 text-center">제비</td>
						<td class="col-md-2 text-center">4</td>
						<td class="col-md-3 text-center">2020/11/29 12:00</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0092</td>
						<td class="col-md-5 text-center">박씨</td>
						<td class="col-md-2 text-center">2</td>
						<td class="col-md-3 text-center">2020/11/28 13:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">0091</td>
						<td class="col-md-5 text-center">사람</td>
						<td class="col-md-2 text-center">3</td>
						<td class="col-md-3 text-center">2020/11/27 11:00</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="m-1" style="display: flex;">
	<div class="card-body"
		style="display: flex; justify-content: space-around;">
		<div class="card border-info  m-1" style="min-width: 49%;">
			<div class="card-header display-4 bg-dark text-white">내 예약 현황</div>
			<div class="card-body">
				<table class="table table-hover">
					<thead>
						<tr class="row">
							<th class="col-md-2 text-center">#</th>
							<th class="col-md-4 text-center">상호명</th>
							<th class="col-md-2 text-center">인원수</th>
							<th class="col-md-4 text-center">예약일시</th>
						</tr>
					</thead>
					<tbody>
						<tr class="row">
							<td class="col-md-2 text-center">0100</td>
							<td class="col-md-4 text-center">숙이네 칼국수</td>
							<td class="col-md-2 text-center">2</td>
							<td class="col-md-4 text-center">2020/12/01 15:30</td>
						</tr>
						<tr class="row">
							<td class="col-md-2 text-center">0099</td>
							<td class="col-md-4 text-center">겐조라멘</td>
							<td class="col-md-2 text-center">2</td>
							<td class="col-md-4 text-center">2020/11/30 11:30</td>
						</tr>
						<tr class="row">
							<td class="col-md-2 text-center">0098</td>
							<td class="col-md-4 text-center">구청구내식당</td>
							<td class="col-md-2 text-center">5</td>
							<td class="col-md-4 text-center">2020/11/29 12:00</td>
						</tr>
						<tr class="row">
							<td class="col-md-2 text-center">0097</td>
							<td class="col-md-4 text-center">김가네</td>
							<td class="col-md-2 text-center">1</td>
							<td class="col-md-4 text-center">2020/11/28 13:30</td>
						</tr>
						<tr class="row">
							<td class="col-md-2 text-center">0096</td>
							<td class="col-md-4 text-center">다미</td>
							<td class="col-md-2 text-center">10</td>
							<td class="col-md-4 text-center">2020/11/27 11:00</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="card border-info" style="min-width: 49%;">
			<div class="card-header display-4 bg-dark text-white">내 글 목록</div>
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
	</div>
</div>
<div class="m-1 card-body" style="display:flex; justify-content: space-around;">
		<div class="card border-info" style="min-width: 49%;">
		<div class="card-header display-4 bg-dark text-white">내 리뷰 목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-4 text-center">리뷰제목</th>
						<th class="col-md-4 text-center">상호명</th>
						<th class="col-md-4 text-center">작성일시</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-4 text-center">안철수면구소</td>
						<td class="col-md-4 text-center">2020/11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-4 text-center">안철수면구소</td>
						<td class="col-md-4 text-center">2020/11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-4 text-center">안철수면구소</td>
						<td class="col-md-4 text-center">2020/11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-4 text-center">안철수면구소</td>
						<td class="col-md-4 text-center">2020/11/29 15:30</td>
					</tr>
					<tr class="row">
						<td class="col-md-4 text-center">맛이 존재해요</td>
						<td class="col-md-4 text-center">안철수면구소</td>
						<td class="col-md-4 text-center">2020/11/29 15:30</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card border-info" style="min-width: 49%;">
		<div class="card-header display-4 bg-dark text-white">내 신고 목록</div>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr class="row">
						<th class="col-md-2 text-center">유형</th>
						<th class="col-md-4 text-center">신고대상</th>
						<th class="col-md-4 text-center">신고일시</th>
						<th class="col-md-2 text-center">처리상태</th>
					</tr>
				</thead>
				<tbody>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
						<td class="col-md-2 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
						<td class="col-md-2 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
						<td class="col-md-2 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
						<td class="col-md-2 text-center">처리중</td>
					</tr>
					<tr class="row">
						<td class="col-md-2 text-center">욕설</td>
						<td class="col-md-4 text-center">김수미/댓글</td>
						<td class="col-md-4 text-center">2020/11/25 15:43</td>
						<td class="col-md-2 text-center">처리중</td>
					</tr>
				</tbody>
			</table>
		</div>
</div>
</div>
<style>
.info {
	width: 50%;
	margin: auto;
}

.card {
	font-size: 20px;
}
</style>
<%@ include file="../includes/footer.jsp"%>
