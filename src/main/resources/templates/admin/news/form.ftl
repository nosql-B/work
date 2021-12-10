<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 表单验证 jQuery Validation</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="../../assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../../assets/css/animate.css" rel="stylesheet">
    <link href="../../assets/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="../../assets/css/fileinput.min.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="frm" method="post" action="/Upload" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">标题</label>
                                <div class="col-sm-8">
                                    <input id="title" name="title" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">类别</label>
                                <div class="col-sm-8">
                                	<select name="types" class="form-control">
                                		<option>本地</option>
                                		<option>推荐</option>
                                        <option>百家</option>
                                	</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">作者</label>
                                <div class="col-sm-8">
                                    <input id="author" name="author" class="form-control">
                                </div>
                            </div>
                            上传文件
                            <input id="input-b1" name="file" type="file" class="file" data-browse-on-zone-click="true">
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- 全局js -->
    <script src="../../assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="../../assets/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../../assets/js/fileinput.min.js"></script>

    <!-- 自定义js -->
    <script src="../../assets/js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->
    <script src="../../assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="../../assets/js/plugins/validate/messages_zh.min.js"></script>
    <script src="../../assets/js/plugins/layer/layer.min.js"></script>

    <script src="../../assets/js/zh.js"></script>

    <script>
        $(function () {
            initFileInput("input-b1");
        });
        function initFileInput(ctrlName) {
            var control = $('#' + ctrlName);
            control.fileinput({
                language: 'zh', //设置语言
                uploadUrl: "/Upload", //上传的地址
                // allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
                //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
                uploadAsync: true, //默认异步上传
                showUpload: true, //是否显示上传按钮
                showRemove : true, //显示移除按钮
                showPreview : true, //是否显示预览
                showCaption: false,//是否显示标题
                browseClass: "btn btn-primary", //按钮样式
                maxFileCount: 2, //允许同时上传的最大文件个数
                enctype: 'multipart/form-data',
                validateInitialCount:true,
                msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

            }).on('filepreupload', function(event, data, previewId, index) {     //上传中
                console.log('文件正在上传');
            }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
                var form = data.form, files = data.files, extra = data.extra,
                    response = data.response, reader = data.reader;
                console.log(response);//打印出返回的json
                console.log(response.status);//打印出路径
            }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
                console.log('文件上传失败！'+data.status);
            })
        }

    </script>

    <script type="text/javascript">
    $(document).ready(function () {

	    $("#frm").validate({
    	    rules: {
    	    	title: {
    	        required: true,
    	      },
                author:{
    	    	    required:true,
                },
    	    },
    	    messages: {},
    	    // submitHandler:function(form){
    	    // 	$.ajax({
   	    	// 	   type: "POST",
   	    	// 	   dataType: "json",
   	    	// 	   url: "../../admin/user/edit",
   	    	// 	   data: $(form).serialize(),
   	    	// 	   success: function(msg){
	   	    // 			layer.msg(msg.message, {time: 2000},function(){
	   		// 				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
	   		// 				parent.layer.close(index);
	   		// 			});
   	    	// 	   }
   	    	// 	});
            // }
    	});
    });
    </script>

</body>

</html>
