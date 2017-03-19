<!DOCTYPE html>
<html>
<head>
    <title>SmartBulb - Test</title>
<#include "header.ftl"/>
    <style type="text/css">
        *{font-family: "微软雅黑","Microsoft YaHei UI",Consolas}
        body{margin: 0;padding: 0}
        .te,.alert{margin-top: 55px}
        div.te button{width: 100%}
    </style>
</head>
<body>

<#include "nav.ftl"/>

<div class="container te">
        <div class="alert alert-success" role="alert" id="suc" style="display: none">...</div>
        <div class="alert alert-success" role="alert" id="war" style="display: none">...</div>
        <div class="alert alert-danger" role="alert" id="err" style="display: none">...</div>
        <div class="form-group">
            <label for="text">Text</label>
            <textarea class="form-control" id="text" rows="10"></textarea>
        </div>
        <div>
            <button type="button" onclick="test();" class="btn btn-success">Submit</button>
        </div>

</div>

<#include "footer.ftl"/>

<script type="text/javascript">
    $(function(){
        activeNav(0);
    });
    function test(){
        $("#suc").hide(100);
        $("#err").hide(100);
        $("#wrn").hide(100);
        $.ajax({
            url:'/smart-bulb/probability',
            data:{text:$("#text").val()},
            dataType:'json',
            type:'POST',
            success:function(data){
                if(data.code == '0'){
                    $("#suc").html("positive probability is : " + data.msg);
                    $("#suc").show(100);
                }else{
                    $("#err").html(data.msg);
                    $("#err").show(100);
                }
            },
            error:function(){
                $("#err").html("request fail!");
                $("#err").show(100);
            }
        });
    }
</script>

</body>

</html>