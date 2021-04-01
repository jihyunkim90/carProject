<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*"%>
<% request. setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	Connection conn =null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	String rst="";
	String msg="";
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url ="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try{
		Class.forName(jdbc_driver);
		
		conn = DriverManager.getConnection(jdbc_url,"root","1234");
		String id =request.getParameter("id");
		sql="select*from car_member where id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			%>
			<Script type="text/javascript">
			alert("중복 아이디 \n 이미 등록된 아이디 입니다.");
			history.back();
			</Script>
		<%
			}else
			{ 
			%>
		<Script type="text/javascript">
		alert("사용가능한 아이디입니다");
		history.back();
		</Script>
		<%
		}
		}catch(SQLException e){
		e.getMessage();
	}
	%>
</body>
</html>