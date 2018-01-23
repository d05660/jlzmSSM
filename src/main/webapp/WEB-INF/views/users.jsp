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
    <header class="main-header">
      <!-- Logo -->
      <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">
          <b>A</b>
          LT
        </span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">
          <b>Admin</b>
          LTE
        </span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="assets/images/user2-160x160.jpg" class="user-image" alt="User Image">
                <span class="hidden-xs">Alexander Pierce</span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <img src="assets/images/user2-160x160.jpg" class="img-circle" alt="User Image">
                  <p>
                    Alexander Pierce - Web Developer
                    <small>Member since Nov. 2012</small>
                  </p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                  </div>
                  <div class="pull-right">
                    <a href="javascript:void(0)" class="btn btn-default btn-flat" onclick="logout()">Sign out</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="common/sidebar.jsp"%>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Dashboard
          <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#">
              <i class="fa fa-dashboard"></i>
              Home
            </a>
          </li>
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
                <table class="table table-striped table-bordered table-hover nowrap" id="emp-table" cellspacing="0" width="100%">
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
          <!-- /.row (main row) -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Version</b>
        2.4.0
      </div>
      <strong>
        Copyright &copy; 2014-2016
        <a href="https://adminlte.io">Almsaeed Studio</a>
        .
      </strong>
      All rights reserved.
    </footer>
    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
  </div>
  <!-- ./wrapper -->
  <%@ include file="common/basejs.jsp"%>
</body>
</html>