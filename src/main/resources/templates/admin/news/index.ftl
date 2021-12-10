<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>用户列表</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="../../assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../../assets/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

    <link href="../../assets/css/animate.css" rel="stylesheet">
    <link href="../../assets/css/style.css?v=4.1.0" rel="stylesheet">


</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>新闻管理</h5>
                    </div>
                    <div class="ibox-content">
                        <p>
                        		<button class="btn btn-success " type="button" onclick="add();"><i class="fa fa-plus"></i>&nbsp;添加</button>
                        </p>
                        <hr>
                        <div class="row row-lg">
		                    <div class="col-sm-12">
		                        <!-- Example Card View -->
		                        <div class="example-wrap">
		                            <div class="example">
		                            	<table id="table_list"></table>
		                            </div>
		                        </div>
		                        <!-- End Example Card View -->
		                    </div>
	                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="../../assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="../../assets/js/bootstrap.min.js?v=3.3.6"></script>
    
	<!-- Bootstrap table -->
    <script src="../../assets/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="../../assets/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="../../assets/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

    <!-- Peity -->
    <script src="../../assets/js/plugins/peity/jquery.peity.min.js"></script>

    <script src="../../assets/js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="../../assets/js/content.js?v=1.0.0"></script>
    <script  src="https://lib.baomitu.com/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function () {
        	//初始化表格,动态从服务器加载数据  
			$("#table_list").bootstrapTable({
                url: "/AllNews",
                striped: true,//设置为 true 会有隔行变色效果
                //showToggle: "true",//是否显示 切换试图（table/card）按钮
                pagination: true,
                sidePagination: "server",
                pageNumber: 1,
                pageSize: 8,
                queryParams: function (params) { //这里的params是table提供的,传到后台
                    return {
                        offset:params.offset,   //跳过多少条数
                        limit:params.limit      //找多少条数据
                    }
                },
                responseHandler: function (result) {
                    return {
                        "total": result.total,   //查询出来的总数
                        "rows": result.data  //数据
                    }
                },
                onClickCell: function(field, value, row, $element) {
                    $element.attr('contenteditable', true);
                    $element.blur(function() {
                        let index = $element.parent().data('index');
                        let tdValue = $element.html();
                        let id = row.id;
                        let title = row.title;
                        let content = row.content;
                        let image = row.image;
                        let type = row.types;
                        let author = row.author;
                        let view_count = row.viewCount;
                        saveData(index, field, tdValue, id,title,content,image,type,author,view_count);
                    });
                },
			    //数据列
			    columns: [{
			        title: "ID",
			        field: "id",
			        sortable: true
			    },{
			        title: "标题",
			        field: "title"
			    },{
			        title: "内容",
			        field: "content",
			    },{
			        title: "类别",
			        field: "types"
			    },{
			        title: "图片",
			        field: "image",
			    },{
			        title: "作者",
			        field: "author",
			    },{
			        title: "阅览量",
			        field: "viewCount",
			    },{
			        title: "创建时间",
			        field: "createdAt",
                    formatter: function (value, row, index) {
                        return changeDateFormat(value)
                    }
			    },
                // {
			    //     title: "是否删除",
			    //     field: "isValid",
			    //     // sortable: true
			    // }
			    ]
			});
        });

        //日期时间戳转datetime
        function changeDateFormat(cellval) {
            var dateVal = cellval + "";
            if (cellval != null) {
                var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

                return date.getFullYear() + "-" + month + "-" + currentDate;
            }
        }

        function saveData(index, field, value,id,title,content,image,type,author,view_count) {
            $("#table_list").bootstrapTable('updateCell', {
                index: index,       //行索引
                field: field,       //列名
                value: value,        //cell值
            })
            console.log(id);
            $.ajax({
                url : "/admin/news/edit",
                data : {"key":field,"value":value,"id":id
                ,"title":title,"content":content,"image":image,"types":type,
                "author":author,"viewCount":view_count,
                }, //提交表单数据
                type : "post",
                dataType:"json",

                success : function(json){
                    if(json.code == 0){ //登录校验成功
                        //成功
                        swal({
                            text: "信息已提交成功！",
                            type: "success",
                            confirmButtonColor: '#4cd964',
                        });
                        //跳转url
                        return false;
                    }else{
                        //成功
                        swal({
                            text: "信息已提交成功！",
                            type: "failed",
                            confirmButtonColor: '#4cd964',
                        });
                        //显示错误信息;
                        console.log(json.msg);
                        console.log(data);
                    }
                }
            })

        }

        function add(){
        	layer.open({
        	      type: 2,
        	      title: '新闻添加',
        	      shadeClose: true,
        	      shade: false,
        	      area: ['893px', '500px'],
        	      content: '/admin/news/add',
        	      end: function(index){
        	    	  $('#table_list').bootstrapTable("refresh");
       	    	  }
        	    });
        }

        function grant(id){
        	layer.open({
        	      type: 2,
        	      title: '关联角色',
        	      shadeClose: true,
        	      shade: false,
        	      area: ['893px', '600px'],
        	      content: '../../admin/user/grant/'  + id,
        	      end: function(index){
        	    	  $('#table_list').bootstrapTable("refresh");
       	    	  }
        	    });
        }
        function del(id){
        	layer.confirm('确定删除吗?', {icon: 3, title:'提示'}, function(index){
        		$.ajax({
    	    		   type: "POST",
    	    		   dataType: "json",
    	    		   url: "../../admin/user/delete/" + id,
    	    		   success: function(msg){
	 	   	    			layer.msg(msg.message, {time: 2000},function(){
	 	   	    				$('#table_list').bootstrapTable("refresh");
	 	   	    				layer.close(index);
	 	   					});
    	    		   }
    	    	});
       		});
        }
        
        function detailFormatter(index, row) {
	        var html = [];
	        html.push('<p><b>描述:</b> ' + row.description + '</p>');
	        return html.join('');
	    }
    </script>


</body>

</html>
