<!DOCTYPE html>
<html>
<head>
    <title>SmartBulb - Training</title>
<#include "header.ftl"/>
    <style type="text/css">
        *{font-family: "微软雅黑","Microsoft YaHei UI",Consolas}
        body{margin: 0;padding: 0}
        .te{margin-top: 55px}
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
        <label for="pos">Positive</label>
        <textarea class="form-control" id="pos" rows="10"></textarea>
    </div>
    <div class="form-group">
        <label for="neg">Negative</label>
        <textarea class="form-control" id="neg" rows="10"></textarea>
    </div>
    <div>
        <button type="button" onclick="training();" class="btn btn-success">Submit</button>
    </div>

</div>

<#include "footer.ftl"/>

<script type="text/javascript">
    $(function(){
        activeNav(1);
    });
    function training(){
        $("#suc").hide(100);
        $("#err").hide(100);
        $("#wrn").hide(100);
    }
</script>

</body>

</html>