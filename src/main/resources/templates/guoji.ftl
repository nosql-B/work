<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>栓但国际新闻</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../static/css/main.css">
    <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- CSS Stylesheet -->
    <link rel="stylesheet" href="../static/css/style1.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../static/css/a.css" type="text/css" />

    <link rel="stylesheet" href="../static/css/index1.css">
</head>
<body>

<div class="a1">
    <ul>
        <li><a href="/login">登录</a></li>
        <li><a href="/register">注册</a></li>
    </ul>
</div>

<div id="wrap">
    <nav>

        <ul id="content">
            <li><a href="#">首页</a></li>
            <li><a>国内</a></li>
            <li id="active"><a href="#">国际</a></li>
            <li><a href="#">军事</a></li>

        </ul>
        <div id="move"></div>
    </nav>
</div>


<!--<nav class="navbar">-->
    <!--<div class="container navbar-content">-->
        <!--<a href="#">首页</a>-->
        <!--<a href="#">国内</a>-->
        <!--<a href="#">国际</a>-->

    <!--</div>&lt;!&ndash; /.container-fluid &ndash;&gt;-->
<!--</nav>-->

<img src="../static/pic/bg.jpg" class="index-bg">
<div class="container">

    <h4></h4>

    <div class="news-list">
        <div class="news-list-left">
            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-5 18:07:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">阿富汗安全部队在多省采取行动 共打死131名塔利班成员</a></h3>
                    <div class="news-content-des">
                        当地时间2021年8月1日，阿富汗安全部队与塔利班之间的冲突仍在继续。当地时间7月31日，阿富汗国防部发布声明表示，过去24小时，阿安全部队与塔利班在赫拉特、加玆尼等近10个省份发生冲突，共打死131名、打伤62名、逮捕5名塔利班成员，并且销毁了塔利班的大量武器弹药和不同类型的地雷炸弹...
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-5 18:07:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">受德尔塔毒株影响 日本东京连续5天日增确诊超三千例</a></h3>
                    <div class="news-content-des">
                        当地时间2021年8月1日，日本东京，市民佩戴口罩出行。8月1日，东京都政府发布消息称，当地新增新冠确诊病例3058例，连续5天日增确诊超过3000例。东京的新冠疫情正以“前所未有”的速度迅猛蔓延。除此之外，当地的重症患者人数也已增至101人，而这一数据上一次达到三位数还是在2月14日。
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-5 18:07:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">这次，普京拜登关起门谈2小时，火药味有点浓！</a></h3>
                    <div class="news-content-des">
                        近来，美俄两国关系持续走低，尽管6月在外界瞩目下举行了日内瓦峰会，但两人那次面对面的会谈，达成的实际成果有限。

                        而此次“普拜会”中，两位“老对手”都谈了啥？美俄关系还有望跳出肮脏且巨大的“奥吉亚斯的牛圈”吗？
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-5 18:07:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">英国、加拿大不派外交代表出席冬奥会 外交部回应</a></h3>
                    <div class="news-content-des">
                        有记者提问，英国、加拿大都表态，不会派外交代表出席北京冬奥会，中方对此有何回应？另据报道，有20个国家没有签署北京冬奥会奥林匹克休战协议，中方怎样评论前在的多米诺效应？


                    </div>
                </div>
            </div>
        </div>

        <

        <footer class="copyright">

        </footer>
</div>
</div>
</body>
<script src="../static/js/jquery-1.12.3.min.js"></script>


<script>

    var content = document.getElementById('content');
    var lis = content.children;
    var move = document.getElementById('move');
    var active = document.getElementById('active');
    console.log(move);
    //设置滑块初始宽以及水平偏移值
    move.style.width = active.offsetWidth + 'px';
    move.style.left = active.offsetLeft + 'px';
    for(var i = 0; i < lis.length; i++){
        //鼠标移入事件onmouseover
        lis[i].onmouseover = function(){
            move.style.width = this.offsetWidth + 'px';
            move.style.left = this.offsetLeft + 'px';
        }
        //鼠标离开时间onmouseout
        lis[i].onmouseout = function(){
            move.style.width = active.offsetWidth + 'px';
            move.style.left = active.offsetLeft + 'px';
        }
    }

</script>




</html>