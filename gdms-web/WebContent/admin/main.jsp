<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="http://localhost:7777/gdms-web/" target="right">
<title>后台管理</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/dialog-min.css">
<link href="css/top.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/dialog-min.js"></script>
</head>

	<script type="text/javascript">
		$(document).ready(function() {
			/***左侧菜单控制***/
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
			
			/***顶部菜单控制***/
			$(".hmain").hover(function(){			//选择到所有.hmain类样式元素注册hover事件
				var $ul = $(this).children("ul");	//选择到a的下一个ul元素
				$ul.css({"left":$(this).offset().left,"top":$(this).offset().top + $(this).height()});
				$ul.show(100);						//设置此ul元素切换显示或隐藏
			}, function(){
				var $ul = $(this).children("ul");	//选择到a的下一个ul元素
				$ul.hide(300);						//设置此ul元素切换显示或隐藏
			});
			
			/***子菜单点击时隐藏菜单项***/
			$(".subs a").click(function(){
				$(".hmain ul").hide();
			});
			
		});
		
	</script>
</head>

<body style="background-color: #f2f9fd;">
<!-- 顶部菜单栏 start-->
	<div class="header bg-main" >
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="header">
		  <tr>
		    <td rowspan="3" align="left" valign="top" id="logo"><img src="images/main/logo.jpg" width="74" height="60"></td>
		    <td align="left" valign="bottom">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td align="left" valign="bottom" id="header-name">商品后台管理系统</td>
		        <td align="right" valign="top" id="header-right">
		        	<a href="admin/user/logout.php" target="topFrame" onFocus="this.blur()" class="admin-out">注销</a>
		            <a href="index.html" target="top" onFocus="this.blur()" class="admin-home">管理首页</a>
		        	<a href="index.html" target="_blank" onFocus="this.blur()" class="admin-index">网站首页</a>       	
		            <span>
						<!-- 日历 -->
						<SCRIPT type=text/javascript src="js/clock.js"></SCRIPT>
						<SCRIPT type=text/javascript>showcal();</SCRIPT>
		            </span>
		        </td>
		      </tr>
		    </table></td>
		  </tr>
		  <tr>
		    <td align="left" valign="bottom">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
		      <tr>
		        <td align="left" valign="bottom" id="header-admin">
		        	后台管理系统
		        </td>
		        <td align="left" valign="bottom" id="header-menu">
				    <ul >
				    	<li class="hmain">
				 			<a href="#" >系统管理</a>
				            <ul class="subs">
				                <li><a href="http://www.script-tutorials.com/category/html-css/">会员管理</a></li>
				                <li><a href="http://www.script-tutorials.com/category/jquery/">增加会员</a></li>
				                <li><a href="info.html"  >上传文件</a></li>
				                <li><a href="http://www.script-tutorials.com/category/mysql/">Test</a></li>
				                <li><a href="http://www.script-tutorials.com/category/xslt/">ABCDEF</a></li>
				                <li><a href="http://www.script-tutorials.com/category/ajax/">AAABBB</a></li>
				                <li><a href="http://www.script-tutorials.com/category/html-css/">子菜单二级</a></li>
				            </ul>
				        </li>
				 	</ul>
				 	
				 	<ul >
				    	<li class="hmain">
				 			<a href="#" >用户管理</a>
				            <ul class="subs">
				                <li><a href="http://www.script-tutorials.com/category/html-css/">用户管理</a></li>
				                <li><a href="http://www.script-tutorials.com/category/jquery/">增加用户</a></li>
				                <li><a href="info.html"  >上传文件</a></li>
				                <li><a href="http://www.script-tutorials.com/category/mysql/">JAVA</a></li>
				                <li><a href="http://www.script-tutorials.com/category/xslt/">MySql</a></li>
				                <li><a href="http://www.script-tutorials.com/category/ajax/">HTML</a></li>
				                <li><a href="http://www.script-tutorials.com/category/html-css/">软件工程课程</a></li>
				            </ul>
				        </li>
				 	</ul>
				 	
				 	<ul >
				    	<li class="hmain">
				 			<a href="#" >用户管理</a>
				            <ul class="subs">
				                <li><a href="http://www.script-tutorials.com/category/html-css/">用户管理</a></li>
				                <li><a href="http://www.script-tutorials.com/category/jquery/">增加用户</a></li>
				                <li><a href="info.html"  >上传文件</a></li>
				                <li><a href="http://www.script-tutorials.com/category/mysql/">JAVA</a></li>
				                <li><a href="http://www.script-tutorials.com/category/xslt/">MySql</a></li>
				                <li><a href="http://www.script-tutorials.com/category/ajax/">HTML</a></li>
				                <li><a href="http://www.script-tutorials.com/category/html-css/">软件工程课程</a></li>
				            </ul>
				        </li>
				 	</ul>
				 	
				 	<ul >
				    	<li class="hmain">
				 			<a href="#" >用户管理</a>
				            <ul class="subs">
				                <li><a href="http://www.script-tutorials.com/category/html-css/">用户管理</a></li>
				                <li><a href="http://www.script-tutorials.com/category/jquery/">增加用户</a></li>
				                <li><a href="http://www.script-tutorials.com/category/php/">上传文件用户</a></li>
				                <li><a href="http://www.script-tutorials.com/category/mysql/">JAVA</a></li>
				                <li><a href="http://www.script-tutorials.com/category/xslt/">MySql</a></li>
				                <li><a href="http://www.script-tutorials.com/category/ajax/">HTML</a></li>
				                <li><a href="http://www.script-tutorials.com/category/html-css/">软件工程课程</a></li>
				            </ul>
				        </li>
				 	</ul>
		        </td>
		      </tr>
		    </table></td>
		  </tr>
		</table>
	</div>
	<!-- 顶部菜单栏 end-->
	
	
	
	<!-------------- 左边菜单栏 start-------------->
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>欢迎【${loginUser.realname}】</strong>
		</div>
		
		<h2>
			<span class="icon-user"></span>商品管理
		</h2>
		<ul style="display: block">
			<li><a href="info.html"  ><span class="icon-caret-right"></span>上传图片</a></li>
			<li><a href="pass.html"  ><span class="icon-caret-right"></span>修改密码</a></li>
			<li><a href="page.html"  ><span class="icon-caret-right"></span>单页管理</a></li>
			<li><a href="adv.html"  ><span class="icon-caret-right"></span>首页轮播</a></li>
			<li><a href="book.html"  ><span class="icon-caret-right"></span>留言管理</a></li>
			<li><a href="column.html"  ><span class="icon-caret-right"></span>栏目管理</a></li>
		</ul>
		<h2>
			<span class="icon-pencil-square-o"></span>角色管理
		</h2>
		<ul>
			<li><a href="list.html"  ><span
					class="icon-caret-right"></span>内容管理</a></li>
			<li><a href="add.html"  ><span
					class="icon-caret-right"></span>添加内容</a></li>
			<li><a href="cate.html"  ><span
					class="icon-caret-right"></span>分类管理</a></li>
		</ul>
		
		<h2>
			<span class="icon-pencil-square-o"></span>用户管理
		</h2>
		<ul>
			<li><a href="list.html"  ><span
					class="icon-caret-right"></span>内容管理</a></li>
			<li><a href="add.html"  ><span
					class="icon-caret-right"></span>添加内容</a></li>
			<li><a href="cate.html"  ><span
					class="icon-caret-right"></span>分类管理</a></li>
		</ul>
	</div>
	<!-- ------------左边菜单栏 end---------------->
	
	<!-- ------------右边的上部导肮文字 start---------------->
	<ul class="bread">
		<li><a href="info.html"   class="icon-home">首页</a></li>
		<li><a href="##" id="a_leader_txt">网站信息</a></li>
	</ul>
	<!-- ------------右边的上部导肮文字 end---------------->
	
	<!-- ------------右边内容显示区 start---------------->
	<div class="admin">
		<iframe scrolling="auto" rameborder="0" src="admin/jsp/welcome.jsp" name="right" width="100%" height="99%"></iframe>
	</div>
	<!-- ------------右边内容显示区 end---------------->
	
</body>
</html>

<script type="text/javascript">
	$("#goReg,#goLogin").click(function() { //为注册和登录按钮。注册事件处理
		$("Form:not(:eq(1))").slideToggle();

	})
	
	function check(){        		//检查输入项是否合法，不合法就弹消息提示，并return false
		
		var v=$("#pic").val();
	    if(v.indexOf("\\")!=-1){ 		//查找内容中是否含有路径分隔符，如果有，就提示需要先提交上传
	    	qipao("请先提交上传",$("#pic"));
	  		return false;   	
	    }
		return true;
	}
	
	function initProv(target,pid){
		$.ajax({
			
			url :"admin/area/provlist",				//请求的URL
			data:{"parentid":pid},			//提交的参数数据
			type:"GET",			//请求方式
			async:true,			//异步请求
		   
		    success:function(result){ 			//成功之后做什么
		    	var json=eval(result);
		    	var list=json.data;				//得到对象中的集合
		    	
		    	
		    	target.options.length=0;  //清空当前所有项
		    	for (var i=0;i<list.length;i++){
		    		var o=list[i];
		    		var op=new Option(o.name,o.areaid);
		    		target.options.add(op);  //下拉框增加一个选项
		    	}
		        
		    	
		    						}
		
	  		
	});
	
		}
	onload = function() {
		
		
		initProv(document.getElementById("prov"),0);
		
		
		$("#prov").change(function(){
			//拿到当前选中的省份id，发起新的查询
			var id=$(this).val();
			initProv(document.getElementById("city"),id);
		});
		
		initProv(document.getElementById("city"),1);
		
		
		m=$("#logMsg").val();
		
		if(m!=""){
			qipao(m,$("#code"));
		}
		
		
		var m=$("#errMsg").val();              //得到隐藏域中的内容
        if(m!=""){
        	$("#loginForm").hide();
        	$("#regForm").show();
        	
        	qipao(m,$("#yzm"));                //在验证码框的附近弹出气泡
        }		
		
		$("#pic").click(function() { //触发文件选择按钮的事件
			$("#file").trigger("click");

		});
		
		$("#file").change( function(){
			$("#pic").val($(this).val());
		});
		
		$("#doupload").click(function(){
			//发异步请求，来完成上传
			var formdata=new FormData(form1);
			$.ajax({
				
				url :"admin/user",				//请求的URL
				data:formdata,			//提交的参数数据
				type:"POST",			//请求方式
				async:false,			//同步请求
			    cache:false,			//是否缓存
			    contentType:false,		//是否处理内容类型
			    processData:false,		//是否对数据进行处理
			    success:function(result){ 			//成功之后做什么
			    	var json=eval(result);
			       $("#pic").val(json.entity.message);
			       qipao(json.entity.data);
			        
			    	
			    }
			
				
			});
		});
		
		
	}
</script>
</html>