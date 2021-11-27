<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>栓但头条</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<link href="https://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../css/zyd.comment.css" rel="stylesheet" type="text/css">
	<link href="../css/wangEditor-fullscreen-plugin.css" rel="stylesheet" type="text/css">

</head>
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
	<div class="container containt">
		<div class="row clearfix">
		<input type="checkbox" id="menu" class="hidden">
		<div class="col-sm-2 left-bar hidden">
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


	<div class="news">
		<div class="container clearfix">
		<div class="col-md-8">
			<h1 class="news-title">十年前，他为了教育事业与高圆圆分手，而今，高圆圆说，我有一句mmp如鲠在喉。</h1>
			<div class="news-status">15k阅读-15分钟前发布 <div class="label label-default">两性</div>
			<div class="label label-default">情感</div></div>
			<div class="news-body">
				<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, consequatur tempore facere atque molestias possimus alias quos recusandae hic odio, harum quae amet maiores itaque officiis, qui iste? Eligendi, aliquam.</div>
				<div>Delectus voluptas atque quisquam optio saepe amet, rem facere sunt, veniam ex possimus pariatur ullam dolor. Quaerat delectus facilis accusamus! Facere praesentium, consequatur sapiente. Excepturi mollitia tenetur aliquam, velit asperiores.</div>
				<img src="../pic/2-2.jpg" alt="图片加载失败！">
				<div>Eveniet delectus accusamus soluta quam laudantium rem ab aperiam, asperiores exercitationem minus, architecto possimus praesentium optio consequuntur in qui! Maiores qui et aperiam itaque ratione? Doloremque saepe magni, accusantium blanditiis!</div>
				<div>Laudantium doloribus, commodi atque repellendus eaque. Magni provident, repellendus dicta rerum officia autem quia id qui quidem obcaecati, iste eveniet unde accusamus tenetur possimus, esse ipsa nihil quae ex sint?</div>
				<div>Saepe, expedita, dolores. Atque mollitia et sit minima, architecto consequatur dolor earum accusantium reiciendis officia quia, quam fuga maiores excepturi recusandae voluptate, delectus facilis, odio eius. Quam veniam, sint id!</div>
				<div>Aut eveniet nobis itaque vitae quae cumque. Sed quaerat aperiam incidunt, eligendi quidem placeat a fuga cum quos fugiat obcaecati ex dignissimos provident, eaque ducimus repudiandae, laborum necessitatibus mollitia omnis.</div>
				<div>Obcaecati quod ut ex nihil veniam consectetur voluptatum quo, dolore ratione rem laborum qui consequuntur. Quod illum officiis qui deleniti autem? Ea vitae beatae quod! Amet debitis eligendi, quam iusto.</div>
				<div>Eveniet ad eligendi fuga, accusantium dolores aut dolorem corporis velit alias dolorum voluptatibus debitis a aperiam enim impedit recusandae unde sequi blanditiis dicta et natus, mollitia, nulla repellat! Amet, corrupti.</div>
				<div>Debitis delectus non autem, natus dolores. Facere provident pariatur illo sunt inventore, aspernatur delectus. Saepe ad mollitia quibusdam repellendus, delectus praesentium suscipit dolorum architecto eveniet. Culpa, error, cupiditate. Hic, minima.</div>
				<div>Doloribus, assumenda animi ad labore minus officiis velit molestiae dolor quibusdam distinctio libero tenetur explicabo tempora possimus recusandae consectetur a commodi, consequatur odit! Veniam provident, debitis, nihil eligendi cum harum.</div>

<#--				评论功能-->
				<!--弹框-->
				<div class="modal fade bs-example-modal-sm" id="detail-modal" tabindex="-1" role="dialog" aria-labelledby="detail-modal-label">
					<div class="modal-dialog modal-sm" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="detail-modal-label">评论信息框</h4>
							</div>
							<div class="modal-body">
								<form id="detail-form">
									<div class="form-group input-logo">
										<input type="text" class="form-control" placeholder="必填" value="匿名">
										<span class="fa fa-user pull-left" aria-hidden="true">昵称</span>
									</div>
									<div class="form-group input-logo">
										<input type="text" class="form-control" placeholder="选填">
										<span class="fa fa-envelope pull-left" aria-hidden="true">邮箱</span>
									</div>
									<div class="form-group input-logo">
										<input type="text" class="form-control" placeholder="选填">
										<span class="fa fa-globe pull-left" aria-hidden="true">网址</span>
									</div>
									<div class="form-group">
										<button type="button" class="btn btn-default btn-sm" id="detail-form-btn">提交评论</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
<#--			评论-->
				<div>
					<div id="comment-place">
						<div class="comment-post" id="comment-post">
							<h3><i class="fa fa-commenting-o fa-fw"></i>评论</h3>
							<div class="cancel-reply" id="cancel-reply" style="display: none;">
								<a href="javascript:void(0);" onclick="$.comment.cancelReply(this)"><i class="fa fa-share"></i>取消回复</a>
							</div>
							<form class="form-horizontal" role="form" id="comment-form">
								<input type="hidden" name="pid" id="comment-pid" value="0" size="22" tabindex="1">
								<div id="editor" style="width: 100%;height: 150px;">
									<p>我十分怀疑你脖子上顶的东西是否有其存在的积极意义！</p>
								</div>
								<a id="comment-form-btn" type="button" data-loading-text="正在提交评论..." class="btn btn-info btn-block">提交评论</a>
							</form>
						</div>
					</div>

					<div class="commentList">
						<h3><i class="fa fa-comments-o fa-fw"></i><em>20</em>条评论~~~</h3>
						<ul class="comment">
							<li>
								<div class="comment-body" id="comment-1">
									<div class="cheader">
										<a target="_blank" href="https://github.com/zhangyd-c">
											<strong>张三</strong>
										</a>
										<div class="timer">
											<i class="fa fa-clock-o fa-fw"></i>2018-01-01 14:14:14
											<i class="fa fa-map-marker fa-fw"></i>北京市朝阳区
										</div>
									</div>
									<div class="content">
										<a href="#comment-5" class="comment-quote">@钱五</a>
										有人在车上分娩，有人在地铁怀孕，北京真是个充满生机的城市…
									</div>
									<div class="sign">
										<i class="icons os-win2"></i>win8 <i class="sepa"></i>
										<i class="icons browser-chrome"></i>chrome 15.0.0.12 <i class="sepa"></i>
										<a href="#comment-1" class="comment-reply" onclick="$.comment.reply(1, this)"><i class="fa fa-reply fa-fw"></i>回复</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>


		</div>
		</div>
		<div class="col-md-4">
		<div class="side-bar">
			<div class="side-bar-title side-bar-title-news">相关推荐</div>	
			<div class="side-bar-body">
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
				<div class="side-bar-item clearfix side-bar-item-news">
					<div class="col-xs-5"><img src="../pic/2-1.jpg" alt=""></div>
					<div class="col-xs-7"><a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div></div>
				</div>
			</div>
			</div>

			<div class="side-bar">
				<div class="side-bar-title">24小时热闻</div>
				<div class="side-bar-body">
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
					<div class="side-bar-item">
					<a class="article-title" href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a>
					<div class="info">15k阅读-1k评论</div>
					</div>
				</div>
			</div>
		</div>
		
		</div>
	</div>
	</div>
</body>

<script src="../js/wangEditor.min.js" type="text/javascript"></script>
<script src="../js/jquery-1.12.3.min.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/xss.js" type="text/javascript"></script>
<script src="../js/wangEditor-fullscreen-plugin.js" type="text/javascript"></script>
<script src="../js/zyd.comment.js" type="text/javascript"></script>
<script type="text/javascript">
	var E = window.wangEditor
	var editor = new E('#editor')
	// 自定义菜单配置
	editor.customConfig.menus = [
		'code', // 插入代码
		//			'head', // 标题
		'bold', // 粗体
		'italic', // 斜体
		'underline', // 下划线
		//			'strikeThrough', // 删除线
		//			'foreColor', // 文字颜色
		//			'backColor', // 背景颜色
		'image', // 插入图片
		'link', // 插入链接
		'list', // 列表
		//			'justify', // 对齐方式
		'quote', // 引用
		'emoticon', // 表情
		//			'table', // 表格
		//			'video', // 插入视频
		//			'undo', // 撤销
		//			'redo' // 重复
	];
	// debug模式下，有 JS 错误会以throw Error方式提示出来
	editor.customConfig.debug = true;

	// 关闭粘贴样式的过滤
	editor.customConfig.pasteFilterStyle = false;
	// 自定义处理粘贴的文本内容
	editor.customConfig.pasteTextHandle = function(content) {
		// content 即粘贴过来的内容（html 或 纯文本），可进行自定义处理然后返回
		return content + '<p>在粘贴内容后面追加一行</p>'
	};
	// 插入网络图片的回调
	editor.customConfig.linkImgCallback = function(url) {
		console.log(url) // url 即插入图片的地址
	};
	editor.customConfig.zIndex = 100;
	editor.create();
	E.fullscreen.init('#editor');
	//		editor.txt.clear(); //清空编辑器内容
	//		editor.txt.html('<p>用 JS 设置的内容</p><strong>hello</strong><script>alert(/xss/);<\/script>');
	//		editor.txt.append('<p>追加的内容</p>');
	// 读取 html
	console.log(editor.txt.html());
	// 读取 进行 xss 攻击过滤后的html
	console.log(filterXSS(editor.txt.html()));
	// 读取 text
	console.log(editor.txt.text());
	// 获取 JSON 格式的内容
	console.log(editor.txt.getJSON());
</script>
</html>