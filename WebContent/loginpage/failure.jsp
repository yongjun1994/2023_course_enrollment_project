<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: lightsteelblue;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  
  
</style>
</head>
<body>
<script>
	alert("로그인에 실패했습니다. 아이디 또는 비밀번호를 다시 확인해주세요.");
	
	// 로그인 실패 후 다시 로그인 페이지로 이동
	window.location.href = "userLoginForm.jsp"; 
</script>
</body>
</html>
