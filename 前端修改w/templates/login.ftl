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
<#--	<div class="nav-bar ">-->
<#--		<div class="nav navbar-default ">-->
<#--			<div class="container ">-->
<#--			<div class="navbar-header">-->
<#--				<a class="navbar-brand hidden-xs" href="/webSite"></a>-->
<#--				<a class="navbar-brand hidden visible-xs mobile-logo" href="/webSite"></a>-->
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
<#--				<li><a href="/login">登录</a></li>-->
<#--				<li><a href="/register">注册</a></li>-->
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



			<li id="active"><a href="#">首页</a></li>
			<li><a href="#">国内</a></li>
			<li><a href="#">国际</a></li>
			<li><a href="#">军事</a></li>

		</ul>
		<div id="move"></div>
	</nav>
</div>









<div class="a1"><h3 id="dateTime"></h3></div>
<#--	<div class="container container-small">-->
<#--		<h1>登录<div class="subheading">没有帐号？<a href="/register">注册</a></div></h1>-->
<#--		<div class="form-group">-->
<#--		<label>用户名：</label>-->
<#--		<input type="text" name="" class="form-control" required id = "username">-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--		<label>密码：</label>-->
<#--		<input type="password" name="" class="form-control" required id = "password">-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--		<input type="button" value="登录" class="btn btn-primary btn-block login-btn" onclick="login()"/>-->
<#--		</div>-->
<#--		<div class="form-group">-->
<#--			<label><a href="#" id=forget>忘记密码？</a></label>-->
<#--			<label><span id='msg' style="color: #c2173c"></span></label>-->
<#--		</div>-->
<#--	</div>-->
<#--	</div>-->



	<div class="container">

		<div class="forms-grid">

			<!-- login -->
			<div class="login">
				<span class="fas fa-sign-in-alt"></span>
				<strong>欢迎!</strong>
				<span>登录你的账户</span>

				<form action="#" method="post" class="login-form">
					<fieldset>
						<div class="form">
							<div class="form-row">
								<span class="fas fa-user"></span>
								<label class="form-label" for="input">账号</label>
								<input type="text" class="form-text" required id = "username">
							</div>
							<div class="form-row">
								<span class="fas fa-eye"></span>
								<label class="form-label" for="input">密码</label>
								<input type="password" class="form-text" required id = "password">
							</div>
							<div class="form-row bottom">
								<div class="form-check">
									<input type="checkbox" id="remenber" name="remenber" value="remenber">
									<label for="remenber"> 记住我?</label>
								</div>
								<a href="#url" class="forgot">忘记密码?</a>
							</div>
							<div class="form-row button-login">
								<input type="button" value="登录" class="btn btn-login" onclick="login()"/>
<#--								<button class="btn btn-login" onclick="login()">登录<span-->
<#--											class="fas fa-arrow-right"></span></button>-->
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			</div>
	</div>


</body>
<script src="../js/jquery-1.12.3.min.js"></script>

<script>

	function login() {//传入表单参数
		var username = $("#username").val();
		var password = $("#password").val();
		$.ajax({
			url : "/Login",
			data : {"username":username,"password":password}, //提交表单数据
			type : "post",
			dataType:"json",
			success : function(json){
				console.log(json);
				if(json.code == 0){ //登录校验成功
					//跳转url
					console.log(json.redirect_url);
					window.location.href=json.redirect_url;
					return false;
				}else{
					//显示错误信息;
					console.log(json.msg);
					$("#msg").html(json.msg);
				}
			}
		})

	}


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