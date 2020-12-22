<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	<h3>SampoleDTO : ${sampleDTO }</h3> <!-- 샘플컨트롤러에서 넘겨받을 때, SampleDTO의 머릿글자를 소문자로 자동변환함. 그래서 클래스명은 무조건 대문자로 해야함. -->
	<h3>PAGE : ${page }</h3>
</body>
</html>