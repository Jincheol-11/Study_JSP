<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<% // 웹 브라우저 별로 변수 유지 (다른 브라우저에서는 로그인과 같은 것들이 유지되지 않음)
    ArrayList<String> lists = new ArrayList<>();
    lists.add("리스트");
    lists.add("컬렉션");
    session.setAttribute("lists", lists);
%>
<html>
<head>
    <title>session 영역</title>
</head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</body>
</html>
