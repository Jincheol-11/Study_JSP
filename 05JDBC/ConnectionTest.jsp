<%@ page import="common.JDBConnect"%>
<%@ page import="common.DBConnPool" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
<h2>JDBC 테스트 1</h2>
<%
    JDBConnect jdbc1 = new JDBConnect();
    jdbc1.close();
%>

<h2>JDBC 테스트 2</h2>
<% // web.xml 에서의 이름과 같아야 실행
    String driver = application.getInitParameter("Mariadb_Driver");
    String url = application.getInitParameter("Mariadb_URL");
    String id = application.getInitParameter("Mariadb_Id");
    String pwd = application.getInitParameter("Mariadb_Pwd");

    JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
    jdbc2.close();
%>

<h2>JDBC 테스트 3</h2>
<%
    JDBConnect jdbc3 = new JDBConnect(application);
    jdbc3.close();
%>

<h2>컨넥션 풀 테스트</h2>
<%
    DBConnPool pool = new DBConnPool();
    pool.close();
%>
</body>
</html>