<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="DBpart.jsp" %>
<%
  request.setCharacterEncoding("utf-8");

String partCode=request.getParameter("partCode");
String partName=request.getParameter("partName");
String model=request.getParameter("model");
String standard=request.getParameter("standard");
String unit=request.getParameter("unit");
String purchase=request.getParameter("purchase");
String sales=request.getParameter("sales");
String memo=request.getParameter("memo");
out.println("11111.");
ResultSet rs=null;
PreparedStatement pstmt=null;
try{
	String sql="select partCode,partName,model,standard,unit,purchase,sales,memo from parttbl where partcode=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,partCode);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String rPartCode=rs.getString("partCode");
		String rPartName=rs.getString("partName");
		if(partCode.equals(rPartCode)){
			sql="update parttbl set partName=?, model=?, standard=?, unit=?, purchase=?, sales=?, memo=? where partCode=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,partName);
			pstmt.setString(2,model);
			pstmt.setString(3,standard);
			pstmt.setString(4,unit);
			pstmt.setString(5,purchase);
			pstmt.setString(6,sales);
			pstmt.setString(7,memo);
			pstmt.setString(8,partCode);
			pstmt.executeUpdate();
			out.println("수정했습니다.");
		}else{
			out.println("일치하는 제품명이 아닙니다");
		}
		}else{
			out.println("일치하는 제품코드가 아닙니다");
		}
	}	catch(SQLException e){
			e.printStackTrace();
	
	
}

%>
</body>
</html>