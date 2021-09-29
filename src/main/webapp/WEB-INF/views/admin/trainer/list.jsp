<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<body>

<div class="card-body">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th style="width: 10px">트레이너 ID</th>
            <th>트레이너 PASSWORD</th>
            <th>트레이너 이름</th>
            <th>트레이너 EMAIL</th>
            <th>트레이너 인증여부</th>
            <th>회원 가입일</th>
            <th>회원 수정일</th>
            <th>경매 참여 횟수</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${dtoList}" var="dto">
            <tr>
                <td><a href="javascript:moveRead(${dto.tid})"><c:out value="${dto.tid}"></c:out></a></td> <!-- c:out을 쓰는 이유 보안성 문제 -->
                <!-- a태그 안에서 js를 이용하여 read.jsp로 이동 -->
                <td><c:out value="${dto.tpw}"></c:out></td>
                <td><c:out value="${dto.tname}"></c:out></td>
                <td><c:out value="${dto.temail}"></c:out></td>
                <td><c:out value="${dto.auth}"></c:out></td>
                <td><c:out value="${dto.regDate}"></c:out></td>
                <td><c:out value="${dto.modDate}"></c:out></td>
                <td><c:out value="${dto.bidhistory}"></c:out></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>



</body>
</html>
