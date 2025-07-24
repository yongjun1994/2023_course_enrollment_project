<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="userLoginForm.jsp" %>
    <%
        request.setCharacterEncoding("UTF-8");

        String userId = request.getParameter("userid");
        String userPwd = request.getParameter("password");
        String role = request.getParameter("role");

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        try {
            // JDBC 연결 정보 설정
            String jdbcUrl = "jdbc:mysql://localhost:3306/sugang_db"; 
            String dbUser = "root"; 
            String dbPassword = "1234"; 

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            String sql = "SELECT id, password FROM user_tb WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, userPwd);
            
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // 로그인 성공
                // 여기에 세션 등의 로그인 처리를 추가할 수 있음
                // 성공 시 로그인 정보를 세션에 저장하는 코드 등을 추가
                String rId = rs.getString("id");
                String rPwd = rs.getString("password");
                
                if(userId.equals(rId) && userPwd.equals(rPwd)) {
                	response.sendRedirect("success.jsp"); // 성공 페이지로 리다이렉트
                } else {
                	response.sendRedirect("failure.jsp");
                }
                
            } else {
                // 로그인 실패
                // 실패 시 에러 메시지를 표시하거나 다시 로그인 페이지로 이동할 수 있음
                response.sendRedirect("failure.jsp"); // 실패 페이지로 리다이렉트
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
