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
#logo{
color:blue;
float:left;
font-size:90px;
text-style:none;
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
<% String checkName = "";
	checkName = (String)session.getAttribute("s_Name");
	if(checkName==null){
%>
<div id=a>카센터(붕붕이 나라)</div>
<div id=b>
<form name="a" method="post" action="login.jsp">
 회원 ID <input type="text" name="id" size=10> 비밀번호 <input type="password" name="password" size=10>
<input type="submit" value="로그인"> | <a href="CustmorService.jsp">회원가입</a></form>
<%}else{session.setMaxInactiveInterval(500); %></div>
<a id="logo" href="index.jsp">카센터(붕붕이나라)</a>
<div id=b>
<span class="right" style="padding:30px 10px;">
<%=checkName%> 님 환영합니다.
	<a href="logout.jsp">logout</a>
	<a href="car_member_form.jsp">회원가입</a>
</span> 

<%} %>
</div>
</header>
<nav>
<div id="d"><b>
<a href="intro.html">회사소개</a>
<a href="part_select.jsp ">부품정보</a>
<a href="customer_list.jsp">고객정보</a>
 견적관리 정비이력 
 <a href="board.jsp">게시판</b></a></div>
</nav>
<section> 
<img src="images/logo.jpg" width="1000" height="800">
</section>
<aside>
<div id="e">
<input type="submit" value="고객등록"><br>
<input type="submit" value="정비등록"><br>
<input type="submit" value="부품등록" action="part.jsp"><br>
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