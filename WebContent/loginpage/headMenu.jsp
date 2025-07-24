<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header Menu</title>
<link rel = "stylesheet" href = "css/headMenu.css">
</head>
<body>
<div align="center" id="headMenu">
	<input type="button" class="input_b" value="Home" onclick="location.href='Main.jsp'">&nbsp;&nbsp;&nbsp;
	<input type="button" class="input_b" value="공지사항" onclick="location.href='notice.jsp'">&nbsp;&nbsp;&nbsp;
	<input type="button" class="input_b" value="수강" onclick="location.href='sugang_info.jsp'">&nbsp;&nbsp;&nbsp;
	<input type="button" class="input_b" value="수업" onclick="location.href='lessonClass.jsp'">&nbsp;&nbsp;&nbsp;
	<input type="button" class="input_b" value="학점" onclick="location.href='gradeScore.jsp'">&nbsp;&nbsp;&nbsp;
	<input type="button" class="input_b" value="마이페이지" onclick="location.href='#'">
	<br><br><hr>
</div>
</body>
</html>