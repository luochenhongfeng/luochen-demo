define(function (require, exports, modules) {
    $(function () {
        $("#addBtn").click(function () {
            window.location.href = basePath + "/initAdd";
        });

        $(".table").on("click", "button[name='editBtn']", function () {
            var id = $(this).attr("id");
            window.location.href = basePath + "/initEdit?testId=" + id;
        });

        $(".table").on("click", "button[name='delBtn']", function () {
            var id = $(this).attr("id");
            $.post(basePath+"/delete",{testId:id},function(result){
                if (result){
                    window.location.reload(true);
                }
            })
        });
    });
});