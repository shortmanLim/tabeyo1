<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exUpload.jsp</title>
</head>
<body>
	<h3>FILE UPLOAD with SPRING</h3>
	<form action="/sample/exUploadPost"	method="post" enctype="multipart/form-data">
		<div><input type="file" name="files"></div>
		<div><input type="file" name="files"></div>
		<div><input type="file" name="files"></div>
		<div><input type="file" name="files"></div>
		<div><input type="file" name="files"></div>
		<div><input type="submit"></div>
	</form>

</body>
</html>