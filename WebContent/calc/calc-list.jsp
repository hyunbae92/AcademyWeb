<%@page import="vo.CalcHis"%>
<%@page import="java.util.List"%>
<%@page import="service.CalcService"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="2">
	<tr>
		<th align="center"><font color="red">번호</font></th>
		<th align="center"><font color="green">연산식</font></th>
		<th align="center"><font color="darkpink">결과값</font></th>
	</tr>

<%
CalcService cs = new CalcService();
List<CalcHis> chList = cs.getCalcList();
for(CalcHis ch :chList) {
%>
	<tr>
		<td align="center"><%=ch.getNum()%></td>
		<td align="center"><%=ch.getOps()%></td>
		<td align="center"><%=ch.getResult()%></td>
	</tr>
<%
}
%>
</table>
</body>
</html>