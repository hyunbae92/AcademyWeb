<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String> strList = new ArrayList<>();
strList.add("안녕하세여!");
strList.add("네 ! 안녕하세여! ㅎㅎ");
for(String str : strList) {
	out.println(str+"<br>");
}
%>
</body>
</html>