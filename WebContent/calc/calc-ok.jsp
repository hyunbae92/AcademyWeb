<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@page import="vo.CalcHis"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
double num1 = Double.parseDouble(request.getParameter("num1"));
String op = request.getParameter("op");
double num2 = Double.parseDouble(request.getParameter("num2"));
double result = 0;
if("+".equals(op)) {
	result = num1 + num2;
}else if("-".equals(op)) {
	result = num1 - num2;
}else if("*".equals(op)) {
	result = num1 * num2;
}else if("/".equals(op)) {
	result = num1 / num2;
}else {
%>
<script>
	location.back();
</script>
<%
}
Connection conn = Connector.getConnection();
String sql = "insert into calc_his(ops,result) ";
sql += "values(?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,num1+op+num2);
ps.setDouble(2,result);
ps.executeUpdate();
%>
<script>
	location.href="/web/calc/calc.jsp"
</script>