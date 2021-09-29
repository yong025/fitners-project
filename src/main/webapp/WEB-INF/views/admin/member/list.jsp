<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<body>

<div class="card-body">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th style="width: 10px">회원 ID</th>
            <th>회원 이름</th>
            <th>회원 EMAIL</th>
            <th>회원 가입일</th>
            <th>회원 수정일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${dtoList}" var="dto">
            <tr>
                <td><a href="javascript:moveRead(${dto.mid})"><c:out value="${dto.mid}"></c:out></a></td> <!-- c:out을 쓰는 이유 보안성 문제 -->
                <!-- a태그 안에서 js를 이용하여 read.jsp로 이동 -->
                <td><c:out value="${dto.mname}"></c:out></td>
                <td><c:out value="${dto.memail}"></c:out></td>
                <td><c:out value="${dto.regDate}"></c:out></td>
                <td><c:out value="${dto.modDate}"></c:out></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script>
    function moveRead(mid) {

        actionForm.setAttribute("action","/admin/member/read") //action에 list였던 것을 read로 이동
        actionForm.innerHTML += `<input type='hidden' name='mid' value='\${mid}'>`
        actionForm.submit(); //innerHTML한 후 submit으로 적용
    }


</script>


</body>
</html>
