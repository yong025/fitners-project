<%--
  Created by IntelliJ IDEA.
  User: yonghwan
  Date: 2021-10-05
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="test_page">
    <style>
        #test_page p {
            width: 900px;
        }
    </style>

    <p>
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint nisi voluptatem iusto beatae sequi ex quam
        tempora laboriosam facere, facilis nulla nostrum impedit ducimus, porro quasi quos, itaque optio corporis.
    </p>

    <div class="text-center">
        <button id="close_btn" type="button" class="btn btn-danger btn-lg">닫기</button>
    </div>

</div>

<script>
    var base = $('#test_page').parents('.modal_popup');

    $('#close_btn', base).on('click', function() {
        // 창 닫을때 부모창으로 값 넘기기
        $.modal.getCurrent().close({ x: '333333' });
    });
</script>
</body>
</html>
