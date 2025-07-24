<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 로그인</title>
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
  
  .login-container {
    background-color: ghostwhite;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 70vh;
    width: 500px; /* Adjust this width as needed */
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
  }
  
  input[type="text"], input[type="password"] {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  .radio-container {
    display: flex;
    justify-content: center;
    margin-bottom: 10px;
  }
  
  label.radio {
    margin-right: 10px;
  }
  
  button {
    padding: 5px 10px;
    background-color: cornflowerblue;
    color: white;
    border: 1px solid #ccc;
    border-radius: 3px;
    cursor: pointer;
    width: 100%;
  }
  
  .button-container {
    display: flex;
    justify-content: flex-end;
    gap: 10px;
    margin-top: 10px;
    width: 100%;
  }
</style>
</head>
<body>

<div class="login-container">
  <h2>로그인</h2>
  	
  	<form method="post" action="userLoginCheck.jsp">
        <label for="userid">아이디</label>
        <input type="text" id="userid" name="userid">
        
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password">
        
        <div class="radio-container">
          <label class="radio"><input type="radio" name="role" value="student" checked>학생</label><br>
          <label class="radio"><input type="radio" name="role" value="professor">교수</label><br>
          <label class="radio"><input type="radio" name="role" value="staff">교직원</label><br>
        </div>
                
        <button type="submit">로그인</button>
        <div class="button-container">
            <a href="find_id.jsp">아이디 찾기</a>
            <a href="find_pwd.jsp">비밀번호 찾기</a>
        </div>
  	</form>
</div>
</body>
</html>
