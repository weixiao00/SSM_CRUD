
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">用户信息管理系统</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">你点我啊 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">你点我啊</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">提交</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">你点我啊</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
		</div>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
					<td>ID</td>
					<td>USERNAME</td>
					<td>PASSWORD</td>
					<td>&nbsp;&nbsp;操作</td>
				    </tr>
				</thead>
				<tbody id="user_list">
				</tbody>
				
				
				
				
<%-- 				<c:forEach items="${pageInfo.list }" var="user"> --%>
<!-- 					<tr> -->
<%-- 						<td>${user.id }</td> --%>
<%-- 						<td>${user.user }</td> --%>
<%-- 						<td>${user.password }</td> --%>
<!-- 						<td><a href="#"><button type="button" -->
<!-- 									class="btn btn-primary"> -->
<!-- 									<span class="glyphicon glyphicon-pencil" aria-hidden="true">修改</span> -->
<!-- 								</button></a></td> -->
<!-- 						<td><a href="#"><button type="button" -->
<!-- 									class="btn btn-danger"> -->
<!-- 									<span class="glyphicon glyphicon-trash" aria-hidden="true">删除</span> -->
<!-- 								</button></a></td> -->
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>






			</table>
		</div>
		<div class="row">
			<div class="col-md-8">
				<a href="insert.jsp"><button type="button" class="btn btn-info">
						<span class="glyphicon glyphicon-plus" aria-hidden="true">添加用户</span>
					</button></a>
			</div>
			<div class="col-md-4">
				<nav aria-label="Page navigation">
						<!-- 上一页 -->
						<ul class="pagination">
<%-- 					<c:if test="${pageInfo.isFirstPage }"> --%>
<!-- 						<li class="disabled"><a href="###" aria-label="Previous"> -->
<!-- 								<span aria-hidden="true">&laquo;</span> -->
<!-- 						</a></li> -->
						
<%-- 					</c:if> --%>
<%-- 					<c:if test="${!pageInfo.isFirstPage }"> --%>
						<li id="page_nav_pre" class="nav"><a aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						</ul>
<%-- 					</c:if> --%>
						<!-- 上一页结束 -->
						
						
						<!-- 中间页 -->
						<ul class="pagination" id="page_nav_info">
<%-- 					<c:forEach items="${pageInfo.navigatepageNums }" --%>
<%-- 						var="navigatepageNums"> --%>
<%-- 						<c:if test="${pageInfo.pageNum == navigatepageNums }"> --%>
<!-- 							<li class="active"><a -->
<%-- 								href="getUser?pageCount=${navigatepageNums }">${navigatepageNums }</a></li> --%>
<%-- 						</c:if> --%>
<%-- 						<c:if test="${pageInfo.pageNum != navigatepageNums }"> --%>
<%-- 							<li><a href="getUser?pageCount=${navigatepageNums }">${navigatepageNums }</a></li> --%>
<%-- 						</c:if> --%>
<%-- 					</c:forEach> --%>
						</ul>
						<!-- 中间页结束 -->
						
						
<%-- 					<c:if test="${pageInfo.isLastPage }"> --%>
<!-- 						<li class="disabled"><a href="###" aria-label="Next">  <span -->
<!-- 								aria-hidden="true">&raquo;</span> -->
<!-- 						</a></li> -->
<%-- 					</c:if> --%>

						<!-- 下一页 -->
						<ul class="pagination">
<%-- 					<c:if test="${!pageInfo.isLastPage }"> --%>
						<li id="page_nav_next"><a  aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a>
						</li>
<%-- 					</c:if> --%>
						<!-- 下一页结束 -->
						</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function(){
			get_listInfo(1);
		});
		
		//发送ajax数据方法
		function get_listInfo(pageCount){
			$.ajax({
				method: "GET",
				url: "list",
				data: "pageCount="+pageCount,
				success: function(data){
					//取出用户数据放在tbody里
					show_userinfo(data);
					//取出分页数据放在分页里
					page_nav_info(data);
				}
			});
		}
		
		//将取出的数据放到数据区
		function show_userinfo(data){
			$("#user_list").empty();
			//获取tbody标签
			var tbody = $("#user_list");
			//each(list,function(index,item))
			$.each(data.infomap.pageinfo.list,function(index,item){
				//被循环的行
				var user_list_tr = $("<tr></tr>");
				//行中的列
				var userID = $("<td></td>").append(item.id);
				var userUSERNAME = $("<td></td>").append(item.user);
				var userPASSWORD = $("<td></td>").append(item.password);
				var userbtn_update = $("<button></button>").addClass("btn btn-primary").append("修改").append($("<span></span>").addClass("glyphicon glyphicon-pencil"));
				var userbtn_delete = $("<button></button>").addClass("btn btn-danger").append("删除").append($("<span></span>").addClass("glyphicon glyphicon-trash"));
				//将列加入到行中
				user_list_tr.append(userID);
				user_list_tr.append(userUSERNAME);
				user_list_tr.append(userPASSWORD);
				user_list_tr.append(userbtn_update);
				user_list_tr.append("&nbsp;");
				user_list_tr.append(userbtn_delete);
				//将行加入到tbody里
				tbody.append(user_list_tr);
			});
		}
		
		//将取出的分页数据放到分页区
		function page_nav_info(data){
			//上一页标签
			$("#page_nav_info").empty();//清理掉之前的数据,通过jquery写的需要清理掉
			var page_nav_pre = $("#page_nav_pre");
			//判断是否是首页
			if(data.infomap.pageinfo.isFirstPage){
				page_nav_pre.addClass("disabled");
			}
			else{//不是第一页可以点击，发送AJAX请求到controller
				page_nav_pre.click(function(){
				$("#page_nav_info").removeClass();
				get_listInfo(data.infomap.pageinfo.pageNum-1);
				});
			}
			//循环页码
			$.each(data.infomap.pageinfo.navigatepageNums,function(index,item){
				var page_nav_li = $("<li></li>").append($("<a>"+item+"</a>"));	
				//将创建的标签放到中间的页码标签中
				if(data.infomap.pageinfo.pageNum == item){
					page_nav_li.addClass("active");
				}
				//点击页码发送AJAX请求
				page_nav_li.click(function(){
					get_listInfo(item);
				});
				$("#page_nav_info").append(page_nav_li);
			})
			
			//下一页标签
			var page_nav_next = $("#page_nav_next");
			if(data.infomap.pageinfo.isLastPage){
				page_nav_next.addClass("disabled");
			}
			else{
				page_nav_next.click(function(){
					get_listInfo(data.infomap.pageinfo.pageNum+1);
				});
			}
		}
	</script>
	
	
	
	
	
	
</body>
</html>