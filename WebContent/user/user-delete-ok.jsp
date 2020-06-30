<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String[] nums = request.getParameterValues("ch");

Connection conn = Connector.getConnection();
String sql = "delete from user where num=?";
PreparedStatement ps = conn.prepareStatement(sql);
for(String num:nums) {
	ps.setInt(1,Integer.parseInt(num));
	ps.executeUpdate();
}

%>
<script>
	location.href="/web/user/user-list.jsp"
</script>