<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>后台管理</title>
<%@ include file="common/basecss.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <%@ include file="common/header.jsp"%>
  <!-- Left side column. contains the logo and sidebar -->
  <%@ include file="common/sidebar.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> Dashboard <small>Control panel</small> </h1>
      <ol class="breadcrumb">
        <li> <a href="#"> <i class="fa fa-dashboard"></i> Home </a> </li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">开发部花名册</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" id="emp-container">
              <div class="mailbox-controls no-padding">
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-trash-o"></i> 新增
                  </button>
                  <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-reply"></i> 刪除
                  </button>
                  <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-share"></i> 修改
                  </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                  <i class="fa fa-refresh"></i> 導入
                </button>
              </div>
              <table class="table table-striped table-bordered table-hover nowrap" id="emp-table">
                <thead>
                  <tr>
                    <th>
                      <input type="checkbox" name="cb-check-all" class="iCheck">
                    </th>
                    <th>编号</th>
                    <th>用户编号</th>
                    <th>用户名</th>
                    <th>部门</th>
                    <th>电话</th>
                    <th>Email</th>
                    <th>標籤</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row (main row) -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="common/footer.jsp"%>
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<%@ include file="common/basejs.jsp"%>
</body>
</html>