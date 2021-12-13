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



<div id="wrap">
    <nav>

        <ul id="content">
            <div class="a1">
                <ul>
                    <li><a href="/login">登录</a></li>
                    <li><a href="/register">注册</a></li>
                </ul>
            </div>
            <li><a href="#">首页</a></li>
            <li><a>国内</a></li>
            <li><a href="#">国际</a></li>
            <li id="active"><a href="#">军事</a></li>

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

<img src="../static/pic/33.jpg" class="index-bg">
<div class="container">

    <h4></h4>

    <div class="news-list">
        <div class="news-list-left">
            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-13 18:57:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">台军脑补大陆三步骤"攻台" 分析：自行制造"战争"</a></h3>
                    <div class="news-content-des">
                        据台湾联合新闻网12日报道，该报告称解放军“武力犯台”将在“损小、效高、快打、速决”的用兵理念下，以求在最短时间、以最小代价夺取台湾。攻击可分三阶段：首先是“联合军事威慑”。报告称，解放军在“攻台”战役初期会借演习名义实施三军兵力集结
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-13 11:31:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">美军最先进战舰锈迹斑斑 美海军解释：水面腐蚀闹的</a></h3>
                    <div class="news-content-des">
                        美国海军的最先进战舰近日又曝出负面新闻，刚服役5年的“朱姆沃尔特”号隐形驱逐舰近日被拍到已经锈迹斑斑。对于这番尴尬的画面，美国海军的回应是，这是因为“恶劣环境降低了舰船的性能”，舰员们已在努力应对这一问题。
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-5 12:18:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">日本第4艘隐身护卫舰下水 预留16单元垂发比肩054A</a></h3>
                    <div class="news-content-des">
                        把“周边有事”作为扩军的借口，日本人变本加厉。比起以前按部就班的造舰节奏，日本新一代的“最上”级多用途隐形护卫舰（FFM）建造速度倒是很快，12月10日，其4号舰“三隈”号下水了。

                        　　日本海上自卫队本日披露，在长崎县的三菱重工造船厂，“最上”级FFM的4号舰“三隈”号出坞下水。
                    </div>
                </div>
            </div>

            <div class="news-list-item">
                <div class="author-time">
                    <span>栓但新闻</span> 发表于 <span>2021-12-13 12:04:10</span>
                </div>
                <div class="news-des">
                    <h3 class="news-title"><i></i><a href="#">斩头海盗旗拆毁洲际核导弹 乌克兰真是自废武功吗？</a></h3>
                    <div class="news-content-des">
                        拥有核武器是成为世界强国或者地区强国的重要标志。以色列、印度、巴基斯坦等国顶着全世界的压力研制核武器，伊拉克、叙利亚等国为了核武器还付出了血的代价。

                        　　然而有一个国家，拥有世界前三数量的核弹头，以及独一无二的核导弹列车，战略轰炸机中的翘楚图-160‘海盗旗’，但这个国家却要把核武器全部毁掉。


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