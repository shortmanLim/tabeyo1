<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!-- body -->
<style>
.menu {
	display: flex;
}
</style>
<!--                    DataTables Advanced Tables -->
<div class="jumbotron p-3">
	<h1 class="display-3" style="margin: auto; width: 50%;">회원가입</h1>
</div>
<!-- /.panel-heading -->
<div class="panel-body">
	<form role="form" method="post"  action="<%=request.getContextPath() %>/user/register" >
	<input type="hidden" name="${_csrf.parameterName }"
                                         value="${_csrf.token }">
		<div class="form-group">
			<label>회원ID</label> 
			<input type="text"name="userId" value="">
		</div>
		<div class="form-group">
			<label>이름</label>
			<input type="text" name="userNm" value="">
		</div>
		<div class="form-group">
			<label>비밀번호</label> 
			<input type="password"name="userPw" value="">
		</div>
		<div class="form-group">
			<label>닉네임</label> 
			<input type="text"name="nick" value="">
		</div>
		<div class="form-group">
			<label>생년월일</label> 
			<input type="number"name="birthDate" value="">
		</div>
		<div class="form-group">
			<label>성별</label> 
			<input type="text"name="sex">
		</div>
		<div class="form-group">
			<label>이메일</label> 
			<input type="email"name="email">
		</div>
		<div class="form-group">
			<label>전화번호</label> 
			<input type="number"name="phoneNo">
		</div>
		<div class="form-group">
			<label>구</label> 
			<input type="text"name="addr2">
		</div>
		<div class="form-group">
			<label>동</label> 
			<input type="text"name="addr3">
		</div>
		<div class="form-group">
			<label>선호음식종목</label> 
			<input type="text"name="fvrFood">
		</div>

		<input type="submit" class="btn btn-default" value="submit Button">
		<button type="reset" class="btn btn-default">Reset Button</button>
	</form>
</div>
<!-- /.panel-body -->
<style>
.info {
	font-size: 20px;
	width: 50%;
	margin: auto;
}
</style>
<%@ include file="../includes/footer.jsp"%>
