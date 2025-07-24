<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
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

        .findid-container {
            background-color: ghostwhite;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            margin-bottom: 20px;
        }

        form {
            width: 100%;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
        }

        input[type="submit"],
        input[type="button"] {
            padding: 5px 10px;
            background-color: cornflowerblue;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            font-size: 14px;
        }

        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: dodgerblue;
        }
        
        
        .button-container a {
            width: 100%;
        }
    </style>
</head>
<body>
<div align="left">
<div class="findid-container">
    <h2>아이디 찾기</h2>
    
    <form action="find_id_process.jsp" method="post">
        <label for="name">성명 : </label>
        <input type="text" id="name" name="name" placeholder="성명을 입력해주세요." required><br><br>
        <label for="email">이메일 :</label>
        <input type="email" id="email" name="email" placeholder="이메일을 입력해주세요." required><br><br>
        <div class="button-container">
            <input type="submit" value="아이디 찾기">
            <a href="userLoginForm.jsp"><input type="button" value="이전화면"></a>
        </div>
    </form>
</div>
</body>
</html>
