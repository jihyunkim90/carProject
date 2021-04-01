<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script>
function check(){
	if(document.form.id.value==""){
		alert("아이디를 입력하세요");
		document.form.id.focus();
	}
	if(document.form.name.value==""){
		alert("이름을 입력하세요");
		document.form.name.focus();
	}
	if(document.form.passwd.value==""){
		alert("비밀번호를 입력하세요");
		document.form.passwd.focus();
	}
	if(document.form.gender.value==""){
		alert("성별을 입력하세요");
		document.form.gender.focus();
	}
	if(document.form.email.value==""){
		alert("이메일을 입력하세요");
		document.form.email.focus();
	}
	if(document.form.phone.value==""){
		alert("핸드폰을 입력하세요");
		document.form.phone1.focus();
	}
	if(document.form.tel.value==""){
		alert("전화번호를 입력하세요");
		document.form.tel1.focus();
	}
	if(document.form.address.value==""){
		alert("주소를 입력하세요");
		document.form.address.focus();
	}
	if(document.form.carNumber.value==""){
		alert("차량번호를 입력하세요");
		document.form.carNumber.focus();
	}
	if(document.form.carType.value==""){
		alert("챠량종류를 입력하세요");
		document.form.carType.focus();
	}else{
		alert("회원가입 완료");
		document.form.submit();
	}
	
	}
	
function id_chk(){
	 window.open("id_dup.jsp?id=" +document.form.id.value,target="_self");
}
</script>
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
#1{
text-align="center"
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
<div id=b> 회원 ID <input type="text" name="id1" size=10> 비밀번호 <input type="password" name="password" size=10>
<input type="submit" value="로그인"> | <a href="CustmorService.jsp">회원가입</a></div> 
</header>
<nav>
<div id="d"><b>회사소개 부품정보 고객정보 견적관리 정비이력 게시판</b></div>
</nav>
<section> 
<form name="form" method="post" action="process.jsp">
<table border="1" width=1000 height=300>

<tr>
<td align="center">아이디</td>
<td><input type="text" name="id"><input type="button" value="중복체크" onclick="id_chk()"></td>
<tr>
<td  align="center">이름</td>
<td><input type="text" name="name"></td>
</tr>
<td align="center">비밀번호</td>
<td><input type="password" name="passwd"></td>
</tr>
<tr>
<td  align="center">비밀번호 확인</td>
<td><input type="password" name="repasswd"></td>
</tr>
<tr>
<td align="center">성별</td>
<td><input type="radio" name="gender" value="1">남 <input type="radio" name="gender" value="2">여
</td>
</tr>
<tr>
<td align="center">이메일</td>
<td><input type="text" size=20 name="email"> @ 
<select name= email1>
<option>naver.com</option>
<option>daum.net</option>
<option>nate.com</option>
</select>
</td>
</tr>
<tr>
<td align="center">핸드폰</td>
<td>
<select name="phone">
<option>010</option>
<option>011</option>
<option>017</option>
</select> - <input type="number" name=phone1> - <input type="number" name=phone2>
</td>
</tr>
<tr>
<td align="center">전화번호</td>
<td><input type="number" name=tel> - <input type="number" name="tel1"> - <input type="number" name="tel2">
</td>
</tr>
<tr>
<td align="center">주소</td>
<td><input type="text" size=30 name="address"></td>
</tr>
<tr>
<td align="center">차량번호</td>
<td><input type="text" name="carNumber"></td>
</tr>
<tr>
<td align="center">차량종류</td>
<td><input type="text" name="carType"></td>
</tr>
<tr>
<td colspan="2" align="center"> <input type="button" value="회원가입" onclick="javascript:check()">
<input type="reset" value="다시작성">
</td>

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