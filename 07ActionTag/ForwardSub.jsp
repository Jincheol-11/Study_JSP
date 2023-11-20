<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>액션 태그 - sub</title>
</head>
<body>
<h2> 포워드 결과 </h2>
<ul>
<%--    해당 영역의 속성을 받아옴--%>
    <li>page 영역 속성 : <%= pageContext.getAttribute("pAttr")%></li>
    <li>request 영역 속성 : <%= request.getAttribute("rAttr")%></li>
</ul>
</body>
</html>
