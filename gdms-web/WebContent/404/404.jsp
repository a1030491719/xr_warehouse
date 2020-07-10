<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>可做跳转提示或404的蓝天白云主题动画模板</title>
        <link href="css/404/public.css" rel="stylesheet" type="text/css" />
        <link href="css/404/index.css" rel="stylesheet" type="text/css" />
        <link href="css/404/404.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(function() {
                var h = $(window).height();
                $('body').height(h);
                $('.mianBox').height(h);
                centerWindow(".tipInfo");
            });

            //2.将盒子方法放入这个方，方便法统一调用
            function centerWindow(a) {
                center(a);
                //自适应窗口
                $(window).bind('scroll resize',
                        function() {
                            center(a);
                        });
            }

            //1.居中方法，传入需要剧中的标签
            function center(a) {
                var wWidth = $(window).width();
                var wHeight = $(window).height();
                var boxWidth = $(a).width();
                var boxHeight = $(a).height();
                var scrollTop = $(window).scrollTop();
                var scrollLeft = $(window).scrollLeft();
                var top = scrollTop + (wHeight - boxHeight) / 2;
                var left = scrollLeft + (wWidth - boxWidth) / 2;
                $(a).css({
                    "top": top,
                    "left": left
                });
            }
        </script>
    </head>
    <body>
        <div class="mianBox">
            <img src="images/404/yun0.png" alt="" class="yun yun0" />
            <img src="images/404/yun1.png" alt="" class="yun yun1" />
            <img src="images/404/yun2.png" alt="" class="yun yun2" />
            <img src="images/404/bird.png" alt="" class="bird" />
            <img src="images/404/san.png" alt="" class="san" />
            <div class="tipInfo">
                <div class="in">
                    <div class="textThis">
                        <h2>验证码错误</h2>
                        <p><span>页面自动<a id="href" href="http://www.mycodes.net/">跳转</a></span><span>等待<b id="wait">3</b>秒</span></p>
                        <script type="text/javascript">                            (function() {
                                var wait = document.getElementById('wait'), href = document.getElementById('href').href;
                                var interval = setInterval(function() {
                                    var time = --wait.innerHTML;
                                    if (time <= 0) {
                                        location.href = href;
                                        clearInterval(interval);
                                    }
                                    ;
                                }, 1000);
                            })();
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>