<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>国际 </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../static/css/style.css">
		<!-- CSS here -->



   </head>

   <body>
        <div class="nav-bar">
            <div class="nav navbar-default">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand hidden-xs" href="/webSite"></a>
                        <a class="navbar-brand hidden visible-xs mobile-logo" href="/webSite"></a>
                        <!--<span><label for="menu" class="visible-xs">MENU</label> </span>-->
                    </div>
                    <div class="hidden-xs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/webSite" >首页</a></li>
                            <li><a href="/guoji">国际</a></li>
                            <li><a href="">国内</a></li>
                            <li><a href="">数读</a></li>
                            <li><a href="">社会</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <#if user??>
                            <li><a>你好,${user.username}</a></li>
                            <li><a href="/loginOut">注销</a></li>
                            <!--</#if>-->

                            <#if !user??>
                            <li><a href="/login">登录</a></li>
                            <li><a href="/register">注册</a></li>
                            <!--</#if>-->

                        </ul>
                    </div>
                </div>
            </div>
        </div>



    <main>
   <!-- Whats New Start -->
    <section class="whats-news-area pt-50 pb-20">
        <div class="container">
            <div class="row">
            <div class="col-lg-8">
                <div class="row d-flex justify-content-between">

                    <div class="col-lg-3 col-md-3">
                        <div class="section-tittle mb-30">
                            <h3>新闻</h3>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-9">
                        <div class="properties__button">
                            <!--Nav Button  -->                                            
                            <nav>                                                                     
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Lifestyle</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Travel</a>
                                    <a class="nav-item nav-link" id="nav-last-tab" data-toggle="tab" href="#nav-last" role="tab" aria-controls="nav-contact" aria-selected="false">Fashion</a>
                                    <a class="nav-item nav-link" id="nav-Sports" data-toggle="tab" href="#nav-nav-Sport" role="tab" aria-controls="nav-contact" aria-selected="false">Sports</a>
                                    <a class="nav-item nav-link" id="nav-technology" data-toggle="tab" href="#nav-techno" role="tab" aria-controls="nav-contact" aria-selected="false">Technology</a>
                                </div>
                            </nav>
                            <!--End Nav Button  -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="container containt">
                        <div class="row clearfix">
                            <input type="checkbox" id="menu" class="hidden">
                            <div class="col-sm-2 left-bar hidden-xs">
                                <div class="list-group">
                                    <a class="list-group-item active">综合</a>
                                    <a class="list-group-item">八卦</a>
                                    <a class="list-group-item">体育</a>
                                    <a class="list-group-item">时政</a>
                                    <a class="list-group-item">新闻</a>
                                    <a class="list-group-item">前端</a>
                                    <a class="list-group-item">两性</a>
                                    <a class="list-group-item">大哥</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <!-- Nav Card -->
                        <div class="tab-content" id="nav-tabContent">
                            <!-- card one -->

                            <!-- Card two -->

                            <!-- Card three -->

                            <!-- card fure -->

                            <!-- card Five -->

                            <!-- card Six -->

                    <!-- End Nav Card -->
                    </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Whats New End -->


    <!--Start pagination -->
    <div class="pagination-area pb-45 text-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="single-wrap d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                              <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow roted"></span></a></li>
                                <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                <li class="page-item"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                              <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow right-arrow"></span></a></li>
                            </ul>
                          </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End pagination  -->
    </main>

	<!-- JS here -->
	

    </body>
</html>