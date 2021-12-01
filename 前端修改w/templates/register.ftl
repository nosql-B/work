<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">


	<link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
	<!-- CSS Stylesheet -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/a.css" type="text/css" />
</head>
<body>
<#--	<div class="nav-bar">-->
<#--		<div class="nav navbar-default">-->
<#--			<div class="container">-->
<#--			<div class="navbar-header">-->
<#--				<a class="navbar-brand hidden-xs" href="toutiao_website.ftl"></a>-->
<#--				<a class="navbar-brand hidden visible-xs mobile-logo" href="toutiao_website.ftl"></a>-->
<#--				<span><label for="menu" class="visible-xs">MENU</label> </span>-->
<#--			</div>-->
<#--				<div class="hidden-xs">-->
<#--				<ul class="nav navbar-nav">-->
<#--				<li class="active"><a href="toutiao_website.ftl" >首页</a></li>-->
<#--				<li><a href="">国际</a></li>-->
<#--				<li><a href="">国内</a></li>-->
<#--				<li><a href="">数读</a></li>-->
<#--				<li><a href="">社会</a></li>-->
<#--				</ul>-->
<#--				<ul class="nav navbar-nav navbar-right">-->
<#--				<li><a href="login.ftl">登录</a></li>-->
<#--				<li><a href="register.ftl">注册</a></li>-->
<#--				</ul>-->
<#--				</div>-->
<#--		</div>-->
<#--		</div>-->
<#--	</div>-->

<div class="a1"><ul><li><a href="/login">登录</a></li><li><a href="/register">注册</a></li></ul></div>

<div id="wrap">
	<nav>



		<ul id="content">
			<#--			<li><a class="navbar-brand hidden-xs" href="/webSite"></a></li>-->



			<li id="active"><a href="toutiao_website.ftl">首页</a></li>
			<li><a href="#">国内</a></li>
			<li><a href="#">国际</a></li>
			<li><a href="#">军事</a></li>

		</ul>
		<div id="move"></div>
	</nav>
</div>



<#--	<div class="container container-small">-->
<#--		<h1>注册</h1>-->
<#--		<div class="form-group">-->
<#--		<label>手机号：</label>-->
<#--		<input type="text" name="" class="form-control">-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--		<label>验证码：</label>-->
<#--		<div class="input-group">-->
<#--			<input type="text" class="form-control">-->
<#--			<div class="input-group-btn">-->
<#--				<div class="btn btn-default">获取验证码</div>-->
<#--			</div>-->
<#--		</div>-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--		<label>密码：</label>-->
<#--		<input type="password" name="" class="form-control">-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--		<input type="submit" value="注册" class="btn btn-primary btn-block login-btn">-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--			<label>注册栓蛋头条代表您已经阅读并同意：<a href="#" id=forget>栓蛋条款</a></label>-->
<#--		</div>-->
<#--	</div>-->


	<div class="a1"><h3 id="dateTime"></h3></div>

	<div class="container">

		<div class="forms-grid">
	<div class="register">
		<span class="fas fa-user-circle"></span>
		<strong>创建账户!</strong>
		<formaction="#" method="post" class="register-form">
		<fieldset>
			<div class="form">
				<div class="form-row">
					<span class="fas fa-user"></span>
					<label class="form-label" for="input" id="username">账号</label>
					<input type="text" class="form-text">
				</div>
				<div class="form-row">
					<span class="fas fa-envelope"></span>
					<label class="form-label" for="input" id="email">邮箱</label>
					<input type="email" class="form-text">
				</div>
				<div class="form-row">
					<span class="fas fa-lock"></span>
					<label class="form-label" for="input" id="password">密码</label>
					<input type="password" class="form-text">
				</div>
				<div class="form-row button-login">
					<button class="btn btn-login">创建<span
								class="fas fa-arrow-right"></span></button>
				</div>
			</div>
		</fieldset>
		</form>

		<span class="create-account">或者使用社交媒体创建帐户!!</span>

		<div class="social-media">
			<a href="#facebook" class="fb"><span class="fab fa-facebook"></span></a>
			<a href="#twitter" class="tw"><span class="fab fa-twitter"></span></a>
			<a href="#pinterest" class="pi"><span class="fab fa-pinterest"></span></a>
		</div>
	</div>

		</div>
	</div>



	<div class="footer">广播电视节目制作经营许可证：（沪）字第1248号 | 网络文化经营许可证：沪网文[2013]0480-056号 | 信息网络传播视听节目许可证：0910417 | 互联网ICP备案：沪ICP备13002172</div>
	</div>
</body>



<script>

	Date.prototype.format = function (fmt) {
		var o = {
			"y+": this.getFullYear, //年
			"M+": this.getMonth() + 1, //月份
			"d+": this.getDate(), //日
			"h+": this.getHours(), //小时
			"m+": this.getMinutes(), //分
			"s+": this.getSeconds() //秒
		};
		if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		for (var k in o)
			if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		return fmt;
	}
	setInterval("document.getElementById('dateTime').innerHTML = (new Date()).format('yyyy-MM-dd hh:mm:ss');", 1000);







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