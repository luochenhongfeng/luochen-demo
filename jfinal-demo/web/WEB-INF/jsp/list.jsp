<%--
  User: luochen
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common.jsp" %>
<html>
<head>
    <title>列表</title>
    <script>
        seajs.use("test/list");
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <button type="button" class="btn btn-primary" style="margin-left: auto;margin-top: 20px;margin-right: 20px;"
                id="addBtn">新增
        </button>
    </div>
    <br/>
    <table class="table text-center">
        <thead>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>添加时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="test" items="${list}">
            <tr>
                <td>${test.name}</td>
                <td>
                    <query:dict dictGroup="sexItems" value="${test.sex}"/>
                </td>
                <td>${test.age}</td>
                <td>
                    <query:dateFormat value="${test.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </td>
                <td>
                    <button type="button" class="btn btn-link" id="${test.testId}" name="editBtn">编辑</button>
                    <button type="button" class="btn btn-link " id="${test.testId}" name="delBtn">删除</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
