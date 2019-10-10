<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  用户消费记录页
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>账户</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>

</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">个人中心</a>
            <a>
              <cite>账户信息</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
<%--                    <form class="layui-form layui-col-space5">--%>

    账户信息<hr class="layui-bg-blue">
                    <div class="demoTable" align="center">
                        <table width="50%" border="0">
                            <tbody>
                            <tr>
                                <td width="30%">账号类型：</td>
                                <td>个人账号</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>账户余额：</td>
                                <td>${sessionScope.userbacc.usermoney}元</td>
                                <td><button class="layui-btn layui-btn-normal" onclick="Into()">充值</button></td>
                            </tr>
                            <tr>
                                <td>绑定账户：</td>
                                <td>${sessionScope.userbacc.usercard}</td>
                                <td><button class="layui-btn layui-btn-primary">修改</button></td>
                            </tr>
                            </tbody>
                        </table>



                        <%--<div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" type="date" name="cong" id="cong">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" type="date" name="dao" id="dao">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="请输入用户名" autocomplete="off" class="layui-input" name="uname" id="uname">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                        </div>--%>
                    </div>
<%--                    </form>--%>
                </div>
<%--                <s:property value="list"></s:property>--%>

                <%--<div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加管理员','<%=path%>page/Xadmin/member-add.jsp',600,400)"><i class="layui-icon"></i>添加管理员</button>
                </div>--%>

                <%--消费记录--%>
                <%--<div class="layui-card-body" align="center" >
                    <table class="layui-table" lay-filter="test" id="utable" align="center">
                    </table>
                </div>--%>
            </div>
        </div>
    </div>
</div>

</body>

<script id="barDemo" type="text/html">
    <%--<a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>
    <a class="layui-btn layui-btn-primary " lay-event="useDis">禁用</a>
    <a class="layui-btn layui-btn-normal" lay-event="useResetPwd">重置密码</a>--%>

    <%--<c:if test="d.tblCOS.tblCOStype.ctid == 1">
        <a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>
    </c:if>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="useDel">删除</a>--%>

    <%--{{# if (d.tblCOS.tblCOStype.ctid ==4){}}
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="known"><i class="layui-icon">&#x1005;</i>已知</a>
    {{#  } else if(d.tblCOS.tblCOStype.ctid ==2){ }}
    {{#  if(d.tblCOS.tblCOStype.ctid ==0){ }}
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="known"><i class="layui-icon">&#x1005;</i>已知</a>
    {{# }if(d.tblCOS.tblCOStype.ctid ==1) { }}
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="process"><i class="layui-icon">&#xe6b2;</i>处理</a>
    {{#  } }}
    {{#  } }}--%>

<%--{{#  } else if(d.event_level ==2){ }}
    {{#  if(d.event_type_state ==0){ }}

    {{# }if(d.event_type_state ==1) { }}

    {{#  } }}

{{#  } }}--%>
</script>
<script>
    function Into() {
        layer.open({
            type:2,
            title: "用户详情",
            area: ['300px', '260px'],
            content: "<%=path%>page/client/branch/Intomoney.jsp"
            //引用的弹出层的页面层的方式加载修改界面表单
        });
    }

</script>
</html>
