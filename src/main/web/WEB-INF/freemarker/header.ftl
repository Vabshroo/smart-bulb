<!-- bootstrap -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="apple-touch-icon" href="http://www.easyicon.net/api/resizeApi.php?id=1121550&size=180">
    <link rel="icon" href="http://www.easyicon.net/api/resizeApi.php?id=1121550&size=32">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${request.getContextPath()}/smart-bulb/statics/css/titatoggle-dist.css">

    <script type="text/javascript">
        function activeNav(id){
            $("#nav").find("ul.nav").find("li").removeClass("active");
            $("#nav").find("ul.nav").find("li:eq(" + id + ")").addClass("active");
        }
    </script>