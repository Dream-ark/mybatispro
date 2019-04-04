<%--
  Created by IntelliJ IDEA.
  User: Vivian
  Date: 2019/4/4
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>后台用户管理中心</title>
    <link rel="stylesheet" href="lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="lib/2.2.4/jquery-2.2.4.min.js"></script>
    <script src="lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>后台管理系统<small>用户数据管理中心</small></h1>
        </div>
    </div>

    <div class="row">
        <div class="jumbotron">
            <h1>MyBatis基础入门课程</h1>
            <p>通过一个项目来完成基础部分的学习</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">查看更多，请上Oracle</a></p>
        </div>
    </div>
    <c:set var="user" value="${user}"></c:set>
    <div class="row">
        <div class=".col-md-8 .col-md-offset-2">
            <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户账号</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.username}</p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">登录密码</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">*******</p>
                    </div>
                </div>

                <div class="form-group">
                    <label for="nickname" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nickname" value="${user.nickname}" name="nickname" placeholder="请输入昵称">
                    </div>
                </div>

                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="age" name="age" value="${user.age}" placeholder="请输入年龄">
                    </div>
                </div>

                <div class="form-group">
                    <label for="gender" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="gender" name="gender" value="${user.gender}" placeholder="请输入性别">
                    </div>
                </div>

                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone" value="${user.phone}" name="phone" placeholder="请输入联系方式">
                    </div>
                </div>

                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" value="${user.email}" name="email" placeholder="请输入邮箱">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">账号创建时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                           <fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                        </p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">最后修改时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                            <fmt:formatDate value="${user.updateTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                        </p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">最后登录时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                            <fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd"></fmt:formatDate>
                        </p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">用户状态</label>
                    <div class="col-sm-10">
                        <c:if test="${user.userStatus == 0}">
                            <p class="form-control-static">正常</p>
                        </c:if>
                        <c:if test="${user.userStatus == 1}">
                            <p class="form-control-static">锁定</p>
                        </c:if>
                        <c:if test="${user.userStatus == 2}">
                            <p class="form-control-static">删除</p>
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label for="remark" class="col-sm-2 control-label">备注</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="remark" value="${user.remark}" name="remark" placeholder="请输入备注 ">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</head>
<body>

</body>
</html>
