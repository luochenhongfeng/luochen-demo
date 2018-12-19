<%--
  User: luochen
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="query" tagdir="/WEB-INF/tags/query" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv=X-UA-Compatible content=IE=EmulateIE11>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <meta http-equiv=Content-Type content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
    <meta name="description" content="落尘测试">
    <title>落尘测试</title>
    <link rel="stylesheet" href="${basePath}/css/bootstrap.min.css"/>

    <script src="${basePath}/js/frame/jquery-3.3.1.min.js"></script>
    <script src="${basePath}/js/frame/popper.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/frame/sea.js"></script>
    <script src="${basePath}/js/frame/bootstrap.min.js"></script>
    <script>
        var basePath = "${basePath}";

        seajs.config({
            base: '${basePath}/js/',
            alias: {
                'jquery': 'frame/jquery-3.3.1.min.js'
            },
            charset: 'UTF-8'
        });
    </script>
</head>
<body></body>
</html>