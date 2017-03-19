<!DOCTYPE html>
<html>
<head>
    <title>SmartBulb - Switch</title>
<#include "header.ftl"/>
    <style type="text/css">
        *{font-family: "微软雅黑","Microsoft YaHei UI",Consolas}
        body{margin: 0;padding: 0}
        .te{margin-top: 65px}
        div.te button{width: 100%}
        .text-yellow{color: #F5D76E;}
        .text-info{color: #5bc0de;}
        .text-danger{color: #d9534f;}
        .text-success{color: #5cb85c;}
        .text-warning{color: #f0ad4e;}
        i.glyphicon{font-size: 290%}
    </style>
</head>
<body>

<#include "nav.ftl"/>

<div class="container te">
    <div class="alert alert-success" role="alert" id="suc" style="display: none">...</div>
    <div class="alert alert-success" role="alert" id="war" style="display: none">...</div>
    <div class="alert alert-danger" role="alert" id="err" style="display: none">...</div>
    <div class="row">
        <div class="col-xs-3">

        </div>
        <div class="col-xs-6">
            <div class="checkbox checkbox-slider--c checkbox-slider-lg checkbox-slider-info">
                <label>
                    <input type="checkbox"><span class="text text-info"><i class="glyphicon glyphicon-heart"></i></span>
                </label>
            </div>
            <div class="checkbox checkbox-slider--c checkbox-slider-lg checkbox-slider-yellow">
                <label>
                    <input type="checkbox"><span class="text text-yellow"><i class="glyphicon glyphicon-heart"></i></span>
                </label>
            </div>
            <div class="checkbox checkbox-slider--c checkbox-slider-lg checkbox-slider-danger">
                <label>
                    <input type="checkbox"><span class="text text-danger"><i class="glyphicon glyphicon-heart"></i></span>
                </label>
            </div>
            <div class="checkbox checkbox-slider--c checkbox-slider-lg checkbox-slider-warning">
                <label>
                    <input type="checkbox"><span class="text text-warning"><i class="glyphicon glyphicon-heart"></i></span>
                </label>
            </div>
            <div class="checkbox checkbox-slider--c checkbox-slider-lg checkbox-slider-success">
                <label>
                    <input type="checkbox"><span class="text text-success"><i class="glyphicon glyphicon-heart"></i></span>
                </label>
            </div>
        </div>
        <div class="col-xs-3">

        </div>

    </div>

</div>

<#include "footer.ftl"/>

<script type="text/javascript">
    $(function(){
        activeNav(3);
    });
    function sw(){
        $("#suc").hide(100);
        $("#err").hide(100);
        $("#wrn").hide(100);
    }
</script>

</body>

</html>