<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="dictGroup" required="true" rtexprvalue="true" %>
<%@ attribute name="value" required="true" rtexprvalue="true" %>

<script>
    var dictItems = {
        sexItems: {
            0: '男',
            1: '女'
        }
    };
    document.write(dictItems["${dictGroup}"]["${value}"]);
</script>