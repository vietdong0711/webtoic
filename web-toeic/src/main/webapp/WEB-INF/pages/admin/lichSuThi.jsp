<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Lịch sử thi</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="template/header.jsp"></jsp:include>
<jsp:include page="template/sidebar.jsp"></jsp:include>

<div class="container">
    <h3 class="page-header">Lịch sử thi</h3>

    <table class="table table-hover ketquaTable"
           style="text-align: center;">
        <thead>
        <tr>
            <th>Bài thi thử số</th>
            <th>Điểm phần nghe</th>
            <th>Điểm đọc</th>
            <th>Số câu đúng</th>
            <th>Số câu sai</th>
            <th>Thời gian</th>
            <th>Người thi</th>
        </tr>
        </thead>
        <tbody>
        </tbody>

    </table>
</div>


<jsp:include page="template/footer.jsp"></jsp:include>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery.serializeJSON/2.9.0/jquery.serializejson.js"></script>
<script src="<c:url value='/js/admin/lichSuThiAjax.js'/>"></script>
</body>
</html>