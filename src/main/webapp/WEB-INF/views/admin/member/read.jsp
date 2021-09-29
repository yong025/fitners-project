<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yonghwan
  Date: 2021-09-28
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id="form1">
    <div class="card-body">
        <div class="form-group">
            <label for="exampleInputEmail10">회원 ID</label>
            <input type="text" name="mid" class="form-control" id="exampleInputEmail10"
                    value="<c:out value="${memberDTO.mid}"></c:out>" readonly>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">회원 이름</label>
            <input type="text" name="mname" class="form-control" id="exampleInputEmail1"
                   value="<c:out value="${memberDTO.mname}"></c:out>" >
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">회원 email</label>
            <input type="text" name="memail" class="form-control" id="exampleInputEmail2"
                    value="<c:out value="${memberDTO.memail}"></c:out>">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">가입 일자</label>
            <input type="text" name="regDate" class="form-control" id="exampleInputEmail3"
                    value="<c:out value="${memberDTO.regDate}"></c:out>" readonly>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">수정 일자</label>
            <input type="text" name="modDate" class="form-control" id="exampleInputEmail4"
                    value="<c:out value="${memberDTO.modDate}"></c:out>" readonly>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">가입 상태</label>
            <input type="text" name="disabled" class="form-control" id="exampleInputEmail5"
                   value="<c:out value="${memberDTO.disabled}"></c:out>" readonly>
        </div>
    </div>
    <!-- /.card-body -->

    <button id="modifyBtn" type="submit">수정</button>
    <button id="removeBtn" type="submit">삭제</button>
    <button id="listBtn" type="submit">뒤로가기</button>
</form>


<script>

    const form = document.querySelector("#form1")

    document.querySelector("#modifyBtn").addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();

        form.setAttribute("action", "/admin/member/modify")
        form.setAttribute("method", "post")
        form.submit();

    }, false);

    document.querySelector("#removeBtn").addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();

        form.setAttribute("action", "/admin/member/remove")
        form.setAttribute("method", "post")
        form.submit();

    }, false);

    document.querySelector("#listBtn").addEventListener("click", (e) => {
        e.preventDefault();
        e.stopPropagation();

        form.setAttribute("action", "/admin/member/list")
        form.setAttribute("method", "get")
        form.submit();

    }, false);

</script>

</body>
</html>
