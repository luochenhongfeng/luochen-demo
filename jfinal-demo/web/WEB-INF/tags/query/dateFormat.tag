<%@ tag import="com.jfinal.kit.StrKit" %>
<%@ tag import="com.luochen.util.DateUtil" %>
<%@ tag import="java.util.Date" %>
<%@tag pageEncoding="UTF-8" %>
<%@ attribute name="value" required="true" rtexprvalue="true" %>
<%@ attribute name="pattern" required="true" rtexprvalue="true" %>

<%
    String date = "1970-01-01";
    if (StrKit.isBlank(pattern)) {
        pattern = "yyyy-MM-dd HH:mm:ss";
    }
    if (StrKit.notBlank(value) && !value.equals("0")) {
        long time = Long.valueOf(value);
        date = DateUtil.format(new Date(time), pattern);
    }
%>
<%=date%>