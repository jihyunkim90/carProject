<%@ page import ="java.sql.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DB.jsp" %>
<%
 request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String name=request.getParameter("name");
String passwd=request.getParameter("passwd");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String tel=request.getParameter("tel");
String address=request.getParameter("address");
String carNumber=request.getParameter("carNumber");
String carType=request.getParameter("carType");

System.out.println("id : "+id);
System.out.println("name : "+name);
System.out.println("passwd : "+passwd);
System.out.println("gender : "+gender);
System.out.println("email : "+email);
System.out.println("phone : "+phone);
System.out.println("tel : " +tel);
System.out.println("address : "+address);
System.out.println("carNumber : "+carNumber);
System.out.println("carType : "+carType);

PreparedStatement pstmt=null;
try{
	String sql="insert into car_member(id,name,passwd,gender,email,phone,tel,address,carNumber,carType) values(?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, passwd);
	pstmt.setString(4, gender);
	pstmt.setString(5, email);
	pstmt.setString(6, phone);
	pstmt.setString(7, tel);
	pstmt.setString(8, address);
	pstmt.setString(9, carNumber);
	pstmt.setString(10, carType);
	pstmt.executeUpdate();
	System.out.println("저장완료");
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("저장실패");
}
	
%>
</body>
</html>