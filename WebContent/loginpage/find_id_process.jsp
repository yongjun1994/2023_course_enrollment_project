<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기 결과</title>
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

        .result-container {
            background-color: ghostwhite;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }
        
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
<div class="result-container">
    <h2>아이디 찾기 결과</h2>
    
    <%
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/sugang_db"; 
        String dbUser = "root"; 
        String dbPassword = "1234"; 

     	// 데이터베이스 연결
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
        	
            String sql = "SELECT id, name, email FROM student_tb WHERE name = ? AND email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	
            	String rName = rs.getString("name");
                String rEmail = rs.getString("email");
                
                if(name.equals(rName) && email.equals(rEmail)) {
                String foundId = rs.getString("id");
    %>
                <p>찾은 아이디: <%= foundId %></p>
     <%            	
                } else {
                	%>
                <p class="error-message">없는 회원정보입니다. 아이디와 비밀번호를 다시 확인해주세요.</p>
    <%
                	
                }
            	
            } else {
    %>
                <p class="error-message">없는 회원정보입니다. 아이디와 비밀번호를 다시 확인해주세요.</p>
    <%
            }
        } catch (SQLException e) {
            out.println("SQLException: " + e.getMessage());
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                out.println("SQLException while closing resources: " + e.getMessage());
            }
        }
    %>
    <a href="find_id.jsp">아이디 찾기 화면으로 돌아가기</a>
</div>
</body>
</html>
