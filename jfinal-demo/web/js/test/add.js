define(function (require, exports, module) {
    $(function(){
        $("#addBtn").click(function(){
            $.post(basePath+"/add",{
                "test.name":$("#name").val(),
                "test.sex":$("input[name='sex']:checked").val(),
                "test.age":$("#age").val()
            },function(result){
                if (result){
                    window.location.href = basePath + "/list";
                }
            },"json");
        });

        $("#cancelBtn").click(function(){
            window.location.href = basePath + "/list";
        });
    });
});