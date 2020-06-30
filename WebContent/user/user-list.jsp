<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>

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
Connection con = Connector.getConnection();
Statement stmt = con.createStatement();
String sql = "SELECT * FROM user";
ResultSet rs = stmt.executeQuery(sql);
%>
<a href="/web/user/user-insert.jsp"><button>회원정보입력</button></a>
<table border="1">
	<tr>
		<th><font color="red">번호</font></th>
		<th><font color="green">이름</font></th>
		<th><font color="blue">아이디</font></th>
	</tr>
<%
while(rs.next()) {
%>
	<tr>
		<td><%=rs.getInt("num")%></td>
		<td><%=rs.getString("NAME")%></td>
		<td><%=rs.getString("id")%></td>
	</tr>
<%
}
%>
</table>
</body>
</html>