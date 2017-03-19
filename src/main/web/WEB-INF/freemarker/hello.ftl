<!DOCTYPE html>
<html>
<head>
    <title>SmartBulb - Welcome</title>
    <#include "header.ftl"/>
    <style type="text/css">
        *{font-family: "微软雅黑","Microsoft YaHei UI",Consolas}
        body{margin: 0;padding: 0}
        .jumbotron{margin-top: 45px}
    </style>
</head>
<body>

<#include "nav.ftl"/>

<div class="container-fluid">
    <div class="row">
        <div class="jumbotron container">
            <h1>Welcome!</h1>
            <p>This is the Smart-Bulb console,features are bellow.</p>
            <div class="list-group">
                <a href="/smart-bulb/test" class="list-group-item">
                    <h4 class="list-group-item-heading">Test</h4>
                    <p class="list-group-item-text">Enter a paragraph of text, output positive probability which is used to decide the color of the lamp to be lit.</p>
                </a>
                <a href="/smart-bulb/training" class="list-group-item">
                    <h4 class="list-group-item-heading">Training</h4>
                    <p class="list-group-item-text">Enter positive and negative text, improve the system through machine learning.</p>
                </a>
                <a href="/smart-bulb/settings" class="list-group-item">
                    <h4 class="list-group-item-heading">Setting</h4>
                    <p class="list-group-item-text">Set the color preference corresponding to the probability range.</p>
                </a>
                <a href="/smart-bulb/switch" class="list-group-item">
                    <h4 class="list-group-item-heading">Switch</h4>
                    <p class="list-group-item-text">Direct control light switch.</p>
                </a>
                <a href="/smart-bulb/about" class="list-group-item">
                    <h4 class="list-group-item-heading">About</h4>
                    <p class="list-group-item-text">Or readme.</p>
                </a>
            </div>
        </div>
    </div>

</div>

<#include "footer.ftl"/>

<script type="text/javascript">
    $(function(){
        //activeNav(0);
    });
</script>

</body>

</html>