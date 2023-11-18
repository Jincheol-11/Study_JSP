<%@ page import="common.Person" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <title>application 영역</title>
</head>
<body>
    <h2> application 영역의 공유 </h2>
    <% // String 키와 Person 객체의 값으로 구성된 Map
        // 웹 어플리케이션이 종료될 때 까지 변수가 유지된다. (브라우저가 달라도 변수 유지)
        Map<String, Person> maps = new HashMap<>();
        maps.put("actor1", new Person("이수일", 30));
        maps.put("actor2", new Person("심순애", 28));
        application.setAttribute("maps", maps);
    %>
    application 영역에 속성이 저장되었습니다.
</body>
</html>
