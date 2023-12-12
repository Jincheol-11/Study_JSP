<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL - forEach 1</title>
</head>
<body>
    <h4>일반 for 문 형태의 forEach 태그</h4>
    <c:forEach begin="1" end="3" step="1" var="i">
        <p>반복${ i } 입니다.</p>
    </c:forEach>


</body>
</html>
