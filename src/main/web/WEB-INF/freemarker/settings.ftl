<!DOCTYPE html>
<html>
<head>
    <title>SmartBulb - Test</title>
<#include "header.ftl"/>
    <style type="text/css">
        *{font-family: "微软雅黑","Microsoft YaHei UI",Consolas}
        body{margin: 0;padding: 0}
        .te{margin-top: 65px}
        div.te-group button{width: 100%}
        .text-yellow{color: #F5D76E;}
        .text-info{color: #5bc0de;}
        .text-danger{color: #d9534f;}
        .text-success{color: #5cb85c;}
        .text-warning{color: #f0ad4e;}
        /*i.glyphicon{font-size: 355%}*/
        .input-group{margin-top: 5px}
    </style>
</head>
<body>

<#include "nav.ftl"/>

<div class="container te">
    <div class="alert alert-success" role="alert" id="suc" style="display: none">...</div>
    <div class="alert alert-success" role="alert" id="war" style="display: none">...</div>
    <div class="alert alert-danger" role="alert" id="err" style="display: none">...</div>

    <div class="input-group">
      <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="text text-info"><i class="glyphicon glyphicon-heart"></i></span></button>
      </span>
      <input type="text" class="form-control" placeholder="(]" id="blue">
    </div><!-- /input-group -->

    <div class="input-group">
      <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="text text-warning"><i class="glyphicon glyphicon-heart"></i></span></button>
      </span>
      <input type="text" class="form-control" placeholder="(]" id="orange">
    </div><!-- /input-group -->

    <div class="input-group">
      <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="text text-danger"><i class="glyphicon glyphicon-heart"></i></span></button>
      </span>
      <input type="text" class="form-control" placeholder="(]" id="red">
    </div><!-- /input-group -->

    <div class="input-group">
      <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="text text-yellow"><i class="glyphicon glyphicon-heart"></i></span></button>
      </span>
      <input type="text" class="form-control" placeholder="(]" id="yellow">
    </div><!-- /input-group -->

    <div class="input-group">
      <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="text text-success"><i class="glyphicon glyphicon-heart"></i></span></button>
      </span>
      <input type="text" class="form-control" placeholder="(]" id="green">
    </div><!-- /input-group -->

    <button type="button" class="btn btn-success" style="width: 100%;margin-top: 5px">
        Save
    </button>

</div>

<#include "footer.ftl"/>

<script type="text/javascript">
    $(function(){
        activeNav(2);
        $.ajax({
            url:"/smart-bulb/preference",
            dataType:'json',
            type:'POST',
            success:function(data){
                /*color.blue.sad.range=-999,2
                color.yellow.bad.range=2,4
                color.red.happy.range=6,8
                color.orange.general.range=4,6
                color.green.excited.range=8,999*/
                $("#blue").val(data['color.blue.sad.range']);
                $("#yellow").val(data['color.yellow.bad.range']);
                $("#red").val(data['color.red.happy.range']);
                $("#orange").val(data['color.orange.general.range']);
                $("#green").val(data['color.green.excited.range']);
            },
            error:function(data) {
                $("#err").html("request error!");
                $("#err").show(100);
            }
        });
    });
    function test(){
        $("#suc").hide(100);
        $("#err").hide(100);
        $("#wrn").hide(100);
    }
</script>

</body>

</html>