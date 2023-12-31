<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>표현 언어 (EL) - 객체 매개변수 </title>
</head>
<body>
<%--req 영역에 저장--%>
        <%
            request.setAttribute("personObj", new Person("홍길동", 33));
            request.setAttribute("stringObj", "나는 문자열");
            request.setAttribute("integerObj", new Integer(99));
        %>

        <%--포워드 페이지를 활용하여 객체 전달 --%>
        <jsp:forward page="ObjectResult.jsp">
    <jsp:param name="firstNum" value="10"/>
    <jsp:param name="secondNum" value="20"/>
</jsp:forward>
</body>
</html>
