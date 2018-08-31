<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input id="search_user" type="text" class="form-control" placeholder="Search">
                        </div>
                        <button id="search" type="button" class="btn btn-default">提交</button>
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
                            </ul>
                        </li>
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
                <td>AGE</td>
                <td>ADDRESS</td>
                <td>&nbsp;&nbsp;操作</td>
            </tr>
            </thead>
            <tbody id="user_list">
            </tbody>


        </table>
    </div>
    <div class="row">
        <!--新增用户按钮开始-->
        <div class="col-md-8">
            <button type="button" class="btn btn-info" id="insert_user">
                <span class="glyphicon glyphicon-plus" aria-hidden="true">添加用户</span>
            </button>
        </div>
        <!--新增用户按钮结束-->

        <!-- 新增用户框 开始-->

        <div class="modal fade" tabindex="-1" role="dialog" id="insert_modal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">新增用户</h4>
                    </div>


                    <div class="modal-body">
                        <!-- 新增用户表单开始 -->

                        <form class="form-horizontal" id="form_user_insert">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">姓名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control"
                                           name="username" placeholder="姓名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control"
                                           name="password" placeholder="密码">
                                </div>
                            </div><div class="form-group">
                                <label class="col-sm-2 control-label">年龄</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control"
                                           name="age" placeholder="年龄">
                                </div>
                            </div><div class="form-group">
                                <label class="col-sm-2 control-label">地址</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control"
                                           name="address" placeholder="地址">
                                </div>
                            </div>
                        </form>
                        <!--新增用户表单结束-->

                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭
                        </button>
                        <button type="button" class="btn btn-primary1" id="insert_submit">提交</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- 新增用户框结束 -->

        <!--更改用户框开始-->
        <div class="modal fade" tabindex="-1" role="dialog" id="update_modal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">新增用户</h4>
                    </div>


                    <div class="modal-body">
                        <!-- 更改用户表单开始 -->

                        <form class="form-horizontal" id="form_user_update">
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <input type="hidden" id="ID" class="form-control"
                                           name="id">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">姓名</label>
                                <div class="col-sm-10">
                                    <input type="text" id="username" class="form-control"
                                           name="username" placeholder="姓名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" id="password" class="form-control"
                                           name="password" placeholder="密码">
                                </div>
                            </div><div class="form-group">
                            <label class="col-sm-2 control-label">年龄</label>
                            <div class="col-sm-10">
                                <input type="text" id="age" class="form-control"
                                       name="age" placeholder="年龄">
                            </div>
                        </div><div class="form-group">
                            <label class="col-sm-2 control-label">地址</label>
                            <div class="col-sm-10">
                                <input type="text" id="address" class="form-control"
                                       name="address" placeholder="地址">
                            </div>
                        </div>
                        </form>
                        <!--更改用户表单结束-->

                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭
                        </button>
                        <button type="button" class="btn btn-primary1" id="update_submit">提交</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <!--更改用户框结束-->

        <div class="col-md-4">
            <nav aria-label="Page navigation">
                <!-- 上一页 -->
                <ul class="pagination">
                    <li id="page_nav_pre" class="nav"><a aria-label="Previous"> <span aria-hidden="true">首页</span>
                    </a></li>
                </ul>
                <!-- 上一页结束 -->


                <!-- 中间页 -->
                <ul class="pagination" id="page_nav_info">
                </ul>
                <!-- 中间页结束 -->

                <!-- 下一页 -->
                <ul class="pagination">
                    <li id="page_nav_next" class="page_pre"><a aria-label="Next"> <span aria-hidden="true">尾页</span>
                    </a>
                    </li>
                </ul>
                <!-- 下一页结束 -->
            </nav>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        get_listInfo(1);
        page_pre();
        page_tail();
        //点击搜索按钮调用搜索方法
        $("#search").click(function () {
            search();
        });
    });

    //发送ajax数据方法
    function get_listInfo(currentPage) {
        $.ajax({
            method: "GET",
            url: "getUser",
            data: "currentPage=" + currentPage,
            success: function (data) {
                //当前页成员变量
                pageNum = data.infomap.pageInfo.pageNum;
                pre_page = data.infomap.pageInfo.isFirstPage;
                next_page = data.infomap.pageInfo.isLastPage;
                // 取出用户数据放在tbody里
                show_userinfo(data);
                //取出分页数据放在分页里
                page_nav_info(data);
            },
            dataType: "json"
        });
    }

    //将取出的数据放到数据区
    function show_userinfo(data) {
        $("#user_list").empty();
        //获取tbody标签
        var tbody = $("#user_list");
        $.each(data.infomap.pageInfo.list, function (index, item) {
            //被循环的行
            var user_list_tr = $("<tr></tr>");
            //行中的列
            var userID = $("<td></td>").append(item.id);
            var userUSERNAME = $("<td></td>").append(item.username);
            var userPASSWORD = $("<td></td>").append(item.password);
            var userAddress = $("<td></td>").append(item.address);
            var userAge = $("<td></td>").append(item.age);
            var userbtn_update = $("<button></button>").addClass("btn btn-primary").append("修改").append($("<span></span>").addClass("glyphicon glyphicon-pencil"));
            var userbtn_delete = $("<button></button>").addClass("btn btn-danger").append("删除").append($("<span></span>").addClass("glyphicon glyphicon-trash"));
            //将列加入到行中
            user_list_tr.append(userID);
            user_list_tr.append(userUSERNAME);
            user_list_tr.append(userPASSWORD);
            user_list_tr.append(userAge);
            user_list_tr.append(userAddress);
            user_list_tr.append(userbtn_update);
            user_list_tr.append("&nbsp;");
            user_list_tr.append(userbtn_delete);
            //将行加入到tbody里
            tbody.append(user_list_tr);
        });
    }

    //调到首页方法
    function page_pre() {
        var page_nav_pre = $("#page_nav_pre");
        page_nav_pre.click(function () {
            if(!pre_page){
                get_listInfo(1);
            }
        });
    }
    //调到尾页方法
    function page_tail() {
        var page_nav_next = $("#page_nav_next");
        page_nav_next.click(function () {
            if(!next_page){
                get_listInfo(0x1e27-1);
            }
        });
    }

    //分页后的首页
    // function page_pre_search() {
    //     $('.page_pre').attr('id','page_nav_pre_search');
    //     var page_nav_pre_search = $("#page_nav_pre_search");
    //     page_nav_pre_search.click(function () {
    //         search(1);
    //     });
    // }

    //按名字搜索方法
    function search(currentPage) {
            var search_user = $("#search_user").val();
            $.ajax({
                method : "GET",
                url : "search_user/"+search_user,
                data : {currentPage : currentPage},
                success : function (data) {
                    pre_page = false;
                    next_page = false;
                    show_userinfo(data);
                    page_nav_info_search(data);
                }
            });
    }

    //将取出的分页数据放到分页区
    function page_nav_info(data) {
        //上一页标签
        $("#page_nav_info").empty();//清理掉之前的数据,通过jquery写的需要清理掉
        //循环页码
        $.each(data.infomap.pageInfo.navigatepageNums, function (index, item) {
            var page_nav_li = $("<li></li>").append($("<a>" + item + "</a>"));
            //将创建的标签放到中间的页码标签中
            if (data.infomap.pageInfo.pageNum == item) {
                page_nav_li.addClass("active");
            }
            //点击页码发送AJAX请求
            page_nav_li.click(function () {
                if(data.infomap.pageInfo.pageNum != item){
                    get_listInfo(item);
                }
            });
            $("#page_nav_info").append(page_nav_li);
        })
    }

    //搜索之后的分页
    function page_nav_info_search(data) {
        //上一页标签
        $("#page_nav_info").empty();//清理掉之前的数据,通过jquery写的需要清理掉
        //循环页码
        $.each(data.infomap.pageInfo.navigatepageNums, function (index, item) {
            var page_nav_li = $("<li></li>").append($("<a>" + item + "</a>")).attr('id',page_nav_li);
            //将创建的标签放到中间的页码标签中
            if (data.infomap.pageInfo.pageNum == item) {
                page_nav_li.addClass("active");
            }
            //点击页码发送AJAX请求
            page_nav_li.click(function () {
                if(data.infomap.pageInfo.pageNum != item){
                    search(item);
                }
            });
            $("#page_nav_info").append(page_nav_li);
        })
    }

    //删除按钮的方法
    $(document).on(
        "click",
        ".btn-danger",
        function () {
            var userId = $(this).siblings().first().text();
            var a = confirm("你确定删除名字为"
                + $(this).siblings().next().first().text()
                + "的用户吗？");
            alert(a);
            if (a) {
                $.ajax({
                    method: "DELETE",
                    url: "deleteUser/" + userId,
                    success: function () {
                        get_listInfo(pageNum);
                    }
                });
            }
        });
    //出现模态框
    $("#insert_user").click(function () {
        $("#insert_modal").modal({
            keyboard: false,
            backdrop: "static"
        });
    });

    //提交模态框的信息
    $("#insert_submit").click(function(){
        $.ajax({
            method : "POST",
            url : "insertUser",
            data : $("#form_user_insert").serialize(),
            success : function(){
                $("#insert_modal").modal('hide');
                get_listInfo(0x1e27-1);
            }
        });
    });

    //更改用户信息
    $(document).on("click",".btn-primary",function(){
        var userId = $(this).siblings().first().text();
        $.ajax({
            method : "GET",
            url : "select_updateUser/"+userId,
            success : function(data){
                $("#ID").val(data.id);
                $("#username").val(data.username);
                $("#password").val(data.password);
                $("#age").val(data.age);
                $("#address").val(data.address);
            }
        });
        $("#update_modal").modal({
            keyboard : false,
            backdrop : "static"
        });
        $("#update_submit").click(function(){
            $.ajax({
                method : "PUT",
                url : "updateUser",
                data : $("#form_user_update").serialize(),//表单数据提交不过去，前端问题
                success : function(){
                    $("#update_modal").modal('hide');
                    get_listInfo(pageNum);
                }
            });
        });
    });

</script>

</body>
</html>