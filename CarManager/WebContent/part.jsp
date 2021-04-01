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
<a href="part_select.jsp ">부품정보</a>
<a href="customer_list.jsp">고객정보</a>
 견적관리 정비이력 게시판</b></div>
</nav>
<section> 
<form name="form" action="process_part.jsp" method="post" align="center">
<table border=1 width=1000>

<h1>차량 부품 관리</h1>

<tr>
<td>부품번호</td>
<td><input type="test" name="partCode"></td>
</tr>
<tr>
<td>부품명</td>
<td colspan="3"><input type="test"  name="partName"></td>
</tr>
<tr>
<td >모델명</td>
<td colspan="3"><input type="test"name="model"></td>
</tr>
<tr>
<td>규격</td>
<td colspan="3"><input type="test" name="standard"></td>
</tr>
<tr>
<td>단위</td>
<td colspan="3"><input type="test"  name="unit"></td>
</tr>
<tr>
<td>매입가</td>
<td><input type="test"  name="phrchase"></td>
<td>매출가</td>
<td><input type="test"name="sales"></td>
</tr>
<tr>
<td>메모</td>
<td colspan="3"><input type="testarea" width=90 height=500 name="memo"></td>
</tr>
<tr>
<td colspan="4"><input type="submit" value="부품등록"><input type="reset" value=다시작성></td>
</tr>
</table>

</form>
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

































