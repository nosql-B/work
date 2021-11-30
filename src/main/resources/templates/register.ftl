<!DOCTYPE>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
<body>
	<div class="nav-bar">
		<div class="nav navbar-default">
			<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand hidden-xs" href="/webSite"></a>
				<a class="navbar-brand hidden visible-xs mobile-logo" href="/webSite"></a>
				<span><label for="menu" class="visible-xs">MENU</label> </span>
			</div>
				<div class="hidden-xs">
				<ul class="nav navbar-nav">
				<li class="active"><a href="/webSite" >首页</a></li>
				<li><a href="">国际</a></li>
				<li><a href="">国内</a></li>
				<li><a href="">数读</a></li>
				<li><a href="">社会</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="/login">登录</a></li>
				<li><a href="/register">注册</a></li>
				</ul>
				</div>
		</div>
		</div>
	</div>
	<div class="container container-small">
		<h1>注册</h1>
		<div class="form-group">
		<label>用户名：</label>
		<input type="text" id="username" class="form-control" required>
		</div>
		<div class="form-group">
		<label>密码:</label>
		<div class="form-group">
			<input type="password" class="form-control" id="password" required>
		</div>
		</div>
		<div class="form-group">
		<label>重复密码:</label>
		<input type="password" name="" class="form-control" id="repeat_password" required>
			<label><span id='msg' style="color: #c2173c"></span></label>
		</div>
		<div class="form-group">
			<input type="button" value="登录" class="btn btn-primary btn-block login-btn" onclick="isSame()"/>
		</div>
	</div>
</body>
<script src="../js/jquery-1.12.3.min.js"></script>
<script>

	function login() {//传入表单参数
		var username = $("#username").val();
		var password = $("#password").val();
		$.ajax({
			url : "/Register",
			data : {"username":username,"password":password}, //提交表单数据
			type : "post",
			dataType:"json",
			success : function(json){
				console.log(json);
				if(json.code == 0){ //登录校验成功
					//跳转url
					console.log(json.url);
					window.location.href=json.url;
					return false;
				}else{
					//显示错误信息;
					console.log(json.msg);
					$("#msg").html(json.msg);
				}
			}
		})

	}

	function isSame(){
		var username = $("#username").val();
		var password = $("#password").val();
		var password2 = $("#repeat_password").val();
		console.log(username);
		console.log(password);
		if (password==password2){
			register();
		}else{
			$("#msg").html("密码不一致,请重新输入");
		}
	}

	function register() {//传入表单参数
		var username = $("#username").val();
		var password = $("#password").val();
		var password2 = $("#repeat_password").val();
		$.ajax({
			url : "/Register",
			data : {"username":username,"password":password}, //提交表单数据
			type : "post",
			dataType:"json",
			success : function(json){
				console.log(json);
				if(json.code == 0){ //登录校验成功
					//跳转url
					console.log(json.url);
					window.location.href=json.url;
					return false;
				}else{
					//显示错误信息;
					console.log(json.msg);
					$("#msg").html(json.msg);
				}
			}
		})

	}
</script>
</html>