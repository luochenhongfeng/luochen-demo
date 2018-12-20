define(function (require, exports, module) {
    $(function(){
        $("#editBtn").click(function(){
            $.post(basePath+"/edit",{
                "testId":$("#testId").val(),
                "name":$("#name").val(),
                "sex":$("input[name='sex']:checked").val(),
                "age":$("#age").val()
            },function(result){
                if (result){
                    window.location.href = basePath + "/list";
                }
            },"json");
        });

        $("#backBtn").click(function(){
           window.location.href = basePath + "/list";
        });
    });
});