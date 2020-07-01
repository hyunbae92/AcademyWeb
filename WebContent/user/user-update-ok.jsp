<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
String name = request.getParameter("name");
String id = request.getParameter("id");
String sql = "update user ";
sql += " set name=?, id=? where num=?";
Connection conn = Connector.getConnection();
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,id);
ps.setInt(3,Integer.parseInt(num));
ps.executeUpdate();
%>
<script>
	location.href="/web/user/user-list.jsp";
</script>