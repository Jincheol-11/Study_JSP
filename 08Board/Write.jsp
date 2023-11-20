<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원제 게시판</title>
    <script type="text/javascript">
        function validateForm(form) { // 폼 내용 검증
            if (form.title.value == "") { // 제목에 아무것도 적혀있지 않다면
                alert("제목을 입력하세요."); // 제목 입력하라는 알림
                form.title.focus(); // 이름 필드에 채우도록 포커스를 줌
                return false; // 반환 중단
            }
            if (form.content.value == "") {
                alert("내용을 입력하세요.");
                form.content.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원제 게시판 - 글쓰기 (Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp"
      onsubmit="return validateForm(this);">
    <table border="1" width="90%">
        <tr>
            <td>제목</td>
            <td>
                <input type = "text" name="title" style="width: 90%;" />
            </td>
        </tr>
        <tr>
            <td>내용</td>
            <td>
                <textarea name="content" style="width: 90%; height: 100px;"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit">작성완료</button>
                <button type="reset">다시 입력</button>
                <button type="button" onclick="location.href='List.jsp';">목록 보기</button>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
