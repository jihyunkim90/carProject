<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
padding:0;
margin:0;
}
body,html{
height:100%;
width:100%;
}
header{
width:100%;
height:15%;
padding-top:10px;both:clear;
}
#a{
color:blue;
float:left;
font-size:90px;
}
#b{
float:right;
padding-top:10px;both:clear;
}
#c{
float:right;}
#d{
text-align:left;
}
#e{
float:right;
}
nav{
width:100%;
height:5%;
background-color:lightblue;
padding-top:10px;
both:clear;
}

section{
width:95%;
height:65%;
float:left;
padding-top:50px;
}
aside{
width:5%;
height:65%;
float:right;
padding-top:50px;
}
footer{
width:100%;
height:5%;
background-color:lightgray;
clear:both;
}
</style>
</head>
<body>
<header>
<div id=a>카센터(붕붕이 나라)</div>
<div id=b> 회원 ID <input type="text" name="id" size=10> 비밀번호 <input type="password" name="password" size=10>
<input type="submit" value="로그인"> | <a href="CustmorService.jsp">회원가입</a></div> 
</header>
<nav>
<div id="d"><b>
<a href="intro.html">회사소개</a>
<a href="part_select.jsp ">부품정보</a>
<a href="customer_list.jsp">고객정보</a>
 견적관리 정비이력 게시판</b></div>
</nav>
<section> 

<h1>부품정보 LIST</h1>
<form name=form1 method=post action="process_part.jsp" width>
<table border=1 text-align="center">
<tr>
<th>부품코드</th>
<th>부품명</th>
<th >모델명</th>
<th >규격</th>
<th >단위</th>
<th >매입단가</th>
<th>매출단가</th>
<th>메모</th>
</tr>
<%@ include file="DBpart.jsp" %>
<% PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql ="select * from parttbl";
	pstmt=conn.prepareStatement(sql);
	
	rs=pstmt.executeQuery();
	while(rs.next()){
		String partCode=rs.getString("partCode");
		String partName=rs.getString("partName");
		String model=rs.getString("model");
		String standard=rs.getString("standard");
		String unit=rs.getString("unit");
		String purchase=rs.getString("purchase");
		String sales=rs.getString("sales");
		String memo=rs.getString("memo");
		%>
		<tr>
		<td><%=partCode %></td>
		<td><%=partName %></td>
		<td><%=model %></td>
		<td><%=standard %></td>
		<td><%=unit %></td>
		<td><%=purchase %></td>
		<td><%=sales %></td>
		<td><%=memo %></td>
				</tr>
		<%}
	%>
</table>
</form>
</section>
<aside>
<div id="e">
<input type="submit" value="고객등록"><br>
<input type="submit" value="정비등록"><br>
<a href="part.jsp"><input type="button" value="부품등록"></a><br>
<input type="submit" value="현재위치"><br>
</div>
</aside>
<footer>
copyright (c) 2018 yangjung All rights reserved

<div id="c">
<a href="http://facebook.com/"><img src="images/facebook.gif"></a>
<a href="http://twitter.com/"><img src="images/twitter.gif"></a>
<a href="http://google.com/"><img src="images/googleplus-icon.png" width="30" height="30"></a>
</div>

</footer>

</body>
</html>


