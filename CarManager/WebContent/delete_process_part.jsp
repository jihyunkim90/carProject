<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
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
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	
	String partCode=request.getParameter("partCode");
	String partName=request.getParameter("partName");
	String model=request.getParameter("model");
	String standard=request.getParameter("standard");
	String unit=request.getParameter("unit");
	String purchase=request.getParameter("purchase");
	String sales=request.getParameter("sales");
	String memo=request.getParameter("memo");
	out.println("11111");
	try{
		String sql="select partCode,partName from parttbl where partCode=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,partCode);
		rs=pstmt.executeQuery();
		if(rs.next()){
			String rPartCode=rs.getString("partCode");
			String rPartName=rs.getString("partName");
			if(partCode.equals(rPartCode) && partName.equals(rPartName)){
				sql="delete from parttbl where partCode=? and partName=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,partCode);
				pstmt.setString(2,partName);
			pstmt.executeUpdate();
			out.println("삭제완료");
			}else{
				out.println("제품명이 맞지 않습니다");
			}
			
		}else{
			out.println("parttbl 에 존재 안함");
	}
			}catch(SQLException e){
				e.printStackTrace();
			
		}
	
	
%>
</body>
</html>