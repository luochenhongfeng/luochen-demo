<%--
  User: luochen
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common.jsp" %>
<html>
<head>
    <title>修改</title>
    <script>
        seajs.use("test/edit");
    </script>
</head>
<body>
<div class="container">
    <form style="margin-top: 50px;">
        <input type="hidden" id="testId" value="${test.testId}">
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">姓名</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="name" value="${test.name}">
            </div>
        </div>

        <div class="form-group row">
            <legend class="col-form-label col-sm-2 pt-0">性别</legend>
            <div class="form-check form-check-inline" style="padding-left: 15px;">
                <input class="form-check-input" type="radio" name="sex" id="sexM" value="0" <c:if test="${test.sex == 0}">checked</c:if>>
                <label class="form-check-label" for="sexM">男</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sex" id="sexF" value="1" <c:if test="${test.sex == 1}">checked</c:if>>
                <label class="form-check-label" for="sexF">女</label>
            </div>
        </div>

        <div class="form-group row">
            <label for="age" class="col-sm-2 col-form-label">年龄</label>
            <div class="col-sm-8">
                <input type="number" class="form-control" id="age" value="${test.age}">
            </div>
        </div>

        <div class="text-center col-md-10">
            <button class="btn btn-primary" id="editBtn" type="button">保存</button>
            <button class="btn btn-secondary" id="backBtn" type="button">取消</button>
        </div>

    </form>
</div>
</body>
</html>
