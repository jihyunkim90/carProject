<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#g{
background-color:lightgray;
}
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
width:95%
height:65%;
float:left;
padding-top:50px;
}
aside{
width:5%
height:65%
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
부품정보 
<a href="customer_list.jsp">고객정보</a>
 견적관리 정비이력 게시판</b></div>
</nav>
<section> 

<table border=1>

<h1>고객 LIST</h1>

<tr>
	<th id="g">고객ID</th>
	<th id="g">고객이름</th>
	<th id="g">자동차번호</th>
	<th id="g">자동차종류</th>
	<th id="g">핸드폰</th>
	<th id="g">전화번호</th>
	<th id="g">주소</th>
</tr>
<tr>
<td>k000000001</td>
<td>홍길동</td>
<td>98나1234</td>
<td>현대 소나타</td>
<td>010-1234-1234</td>
<td>051-123-1234</td>
<td>부산시 부산진구 양덩공 중앙대로 100</td>
</tr>
<tr>
<td>p0001</td>
<td>강감찬</td>
<td>기아 k3</td>
<td>67나1234</td>
<td>010-1234-1234</td>
<td>051-1234-1234</td>
<td>부산시 부산진구 양덩공 중앙대로 101</td>
</tr>
</table>


</section>
<aside>
<div id="e">
<input type="submit" value="고객등록"><br>
<input type="submit" value="정비등록"><br>
<input type="submit" value="부품등록"><br>
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

































