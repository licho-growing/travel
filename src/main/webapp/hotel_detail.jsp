<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css" charset="UTF-8">
    <link rel="stylesheet" href="/static/css/layout.css" charset="UTF-8">
    <script src="/static/layui/layui.js" charset="UTF-8"></script>
</head>
<body>

<!-- 导航栏 -->
<%@ include file="header.jsp"%>


<div class="grid content">
    <div class="grid-cell-full breadcrumb">
        <span class="layui-breadcrumb">
            <a><cite>首页</cite></a>
            <a><cite>酒店详情</cite></a>
        </span>
    </div>
    <div class="grid-cell-full">
        <fieldset class="layui-elem-field">
            <legend>酒店详情</legend>
            <div class="layui-field-box">
                <form class="layui-form layui-form-pane">
                    <input type="hidden" name="id" value="${hotel.id}">
                    <div class="layui-form-item">
                        <label class="layui-form-label">名称</label>
                        <div class="layui-input-block">
                            <input type="text" value="${hotel.name}" class="layui-input" disabled>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">价格</label>
                        <div class="layui-input-block">
                            <input type="text" value="${hotel.price}" class="layui-input" disabled>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">服务</label>
                        <div class="layui-input-block">
                            <input type="text" value="${hotel.service}" class="layui-input" disabled>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">地址</label>
                        <div class="layui-input-block">
                            <input type="text" value="${hotel.address}" class="layui-input" disabled>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">热线电话</label>
                        <div class="layui-input-block">
                            <input type="text" value="${hotel.hotLine}" class="layui-input" disabled>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button id="addCart" class="layui-btn">立即订购</button>
                        </div>
                        <input type="text" value="">
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
</div>
<script>
    layui.use(['form', 'element'], function () {
        var form = layui.form();
        var element = layui.element();
        var $ = layui.jquery;
        var layer = layui.layer;

        $("#addCart").click(function () {
            var idVal = $("input[type='hidden']").val();
            var urlVal = "/cart/addCart.action";
            var dataVal = {"id":idVal, "type":"hotel"};
            $.post(urlVal, dataVal, function (result) {
                layer.alert(result.message);
            });
        });
    });
</script>

</body>
</html>
