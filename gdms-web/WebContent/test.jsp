<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX练习</title>
<script src="js/jquery-3.2.1.min.js"></script>
<style>
* {
	font-size: 30px
}

select {
	width: 150px;
	height: 45px;
}
</style>
</head>
<body>
	<h1>AJAX练习</h1>
	请选择收货地址：
	<select id="prov"></select>
	<select id="city"></select>
	<select id="county"></select>
	<textarea rows="4" cols="30"></textarea>
</body>

<script type="text/javascript">


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
	        $(target).trigger("change");
	   
	    						}
	
	});
	
	
}




onload=function(){
	initProv(document.getElementById("prov"),0);
	$("#prov").change(function(){
		//拿到当前选中的省份id，发起新的查询
		var id=$(this).val();
		initProv(document.getElementById("city"),id);
	});
	
	initProv(document.getElementById("city"),1);
	
	
	
	
	$("#city").change(function(){
		//拿到当前选中的省份id，发起新的查询
		var id=$(this).val();
		initProv(document.getElementById("county"),id);
	});
	
	
}


</script>
</html>

