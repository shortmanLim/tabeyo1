<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<style>
.menu {
	display: flex;
}
</style>
<title>TABEYO</title>
<div class="jumbotron p-3">
	<h1 class="display-3 info">회원정보수정</h1>
</div>
<div class="info mb-5">
	<div class="form-group">
		<label class="col-form-label" for="inputDefault">닉네임</label> <input
			type="text" class="form-control" placeholder="10자리" id="inputDefault">
	</div>
	<div class="form-group">
		<label class="col-form-label" for="inputDefault">주소1</label> <input
			type="text" class="form-control" placeholder="10자리" id="inputDefault">
	</div>
	<div class="form-group">
		<label class="col-form-label" for="inputDefault">주소2</label> <input
			type="text" class="form-control" placeholder="10자리" id="inputDefault">
	</div>
	<div class="form-group">
		<label class="col-form-label" for="inputDefault">주소3</label> <input
			type="text" class="form-control" placeholder="10자리" id="inputDefault">
	</div>
	<label class="col-form-label" for="inputDefault">선호 요리 종목</label>
	<div class="form-group">
		<select class="custom-select">
			<option selected="">요리종목</option>
			<option value="1">한식</option>
			<option value="2">중식</option>
			<option value="3">일식</option>
			<option value="4">양식</option>
			<option value="5">기타 및 디저트</option>
		</select>
	</div>
	<div class="form-group">
		<div class="input-group mb-3">
			<div class="custom-file">
				<input type="file" class="custom-file-input" id="inputGroupFile02">
				<label class="custom-file-label" for="inputGroupFile02">프로필
					사진</label>
			</div>
			<div class="input-group-append">
				<span class="input-group-text">사진올리기</span>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="exampleTextarea">자기소개</label>
		<textarea class="form-control" id="exampleTextarea" rows="3"
			placeholder="기타사항"></textarea>
	</div>


	<button type="button" class="btn btn-secondary">수정하기</button>
	<button type="button" class="btn btn-secondary">탈퇴하기</button>
	<button type="button" class="btn btn-secondary">취소</button>
</div>

<style>
.info {
	width: 50%;
	margin: auto;
}
</style>
<%@ include file="../includes/footer.jsp"%>
