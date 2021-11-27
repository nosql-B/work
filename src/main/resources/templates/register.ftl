<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
	<div class="nav-bar">
		<div class="nav navbar-default">
			<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand hidden-xs" href="toutiao_website.ftl"></a>
				<a class="navbar-brand hidden visible-xs mobile-logo" href="toutiao_website.ftl"></a>
				<span><label for="menu" class="visible-xs">MENU</label> </span>
			</div>
				<div class="hidden-xs">
				<ul class="nav navbar-nav">
				<li class="active"><a href="toutiao_website.ftl" >首页</a></li>
				<li><a href="">国际</a></li>
				<li><a href="">国内</a></li>
				<li><a href="">数读</a></li>
				<li><a href="">社会</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="login.ftl">登录</a></li>
				<li><a href="register.ftl">注册</a></li>
				</ul>
				</div>
		</div>
		</div>
	</div>
	<div class="container container-small">
		<h1>注册</h1>
		<div class="form-group">
		<label>手机号：</label>
		<input type="text" name="" class="form-control">
		</div>
		<div class="form-group">
		<label>验证码：</label>
		<div class="input-group">
			<input type="text" class="form-control">
			<div class="input-group-btn">
				<div class="btn btn-default">获取验证码</div>
			</div>
		</div>
		</div>
		<div class="form-group">
		<label>密码：</label>
		<input type="password" name="" class="form-control">
		</div>
		<div class="form-group">
		<input type="submit" value="注册" class="btn btn-primary btn-block login-btn">
		</div>
		<div class="form-group">
			<label>注册栓蛋头条代表您已经阅读并同意：<a href="#" id=forget>栓蛋条款</a></label>
		</div>
	</div>
	<div class="footer">广播电视节目制作经营许可证：（沪）字第1248号 | 网络文化经营许可证：沪网文[2013]0480-056号 | 信息网络传播视听节目许可证：0910417 | 互联网ICP备案：沪ICP备13002172</div>
	</div>
</body>
</html>