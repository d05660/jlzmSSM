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
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <h3>150</h3>
                <p>New Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">
                More info
                <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3>
                  53
                  <sup style="font-size: 20px">%</sup>
                </h3>
                <p>Bounce Rate</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">
                More info
                <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3>44</h3>
                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">
                More info
                <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3>65</h3>
                <p>Unique Visitors</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">
                More info
                <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            <!-- TO DO List -->
            <div class="box box-primary">
              <div class="box-header">
                <i class="ion ion-clipboard"></i>
                <h3 class="box-title">To Do List</h3>
                <div class="box-tools pull-right">
                  <ul class="pagination pagination-sm inline">
                    <li>
                      <a href="#">&laquo;</a>
                    </li>
                    <li>
                      <a href="#">1</a>
                    </li>
                    <li>
                      <a href="#">2</a>
                    </li>
                    <li>
                      <a href="#">3</a>
                    </li>
                    <li>
                      <a href="#">&raquo;</a>
                    </li>
                  </ul>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
                <ul class="todo-list">
                  <li>
                    <!-- drag handle -->
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <!-- checkbox -->
                    <input type="checkbox" value="">
                    <!-- todo text -->
                    <span class="text">Design a nice theme</span>
                    <!-- Emphasis label -->
                    <small class="label label-danger">
                      <i class="fa fa-clock-o"></i>
                      2 mins
                    </small>
                    <!-- General tools such as edit or delete-->
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="">
                    <span class="text">Make the theme responsive</span>
                    <small class="label label-info">
                      <i class="fa fa-clock-o"></i>
                      4 hours
                    </small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-warning">
                      <i class="fa fa-clock-o"></i>
                      1 day
                    </small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-success">
                      <i class="fa fa-clock-o"></i>
                      3 days
                    </small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="">
                    <span class="text">Check your messages and notifications</span>
                    <small class="label label-primary">
                      <i class="fa fa-clock-o"></i>
                      1 week
                    </small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fa fa-ellipsis-v"></i>
                      <i class="fa fa-ellipsis-v"></i>
                    </span>
                    <input type="checkbox" value="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-default">
                      <i class="fa fa-clock-o"></i>
                      1 month
                    </small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                </ul>
              </div>
              <!-- /.box-body -->
              <div class="box-footer clearfix no-border">
                <button type="button" class="btn btn-default pull-right">
                  <i class="fa fa-plus"></i>
                  Add item
                </button>
              </div>
            </div>
            <!-- /.box -->
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">
            <!-- solid sales graph -->
            <div class="box box-solid bg-teal-gradient">
              <div class="box-header">
                <i class="fa fa-th"></i>
                <h3 class="box-title">Sales Graph</h3>
                <div class="box-tools pull-right">
                  <button type="button" class="btn bg-teal btn-sm" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn bg-teal btn-sm" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="box-body border-radius-none">
                <div class="chart" id="line-chart" style="height: 250px;"></div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer no-border">
                <div class="row">
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60" data-fgColor="#39CCCC">

                    <div class="knob-label">Mail-Orders</div>
                  </div>
                  <!-- ./col -->
                  <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                    <input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60" data-fgColor="#39CCCC">

                    <div class="knob-label">Online</div>
                  </div>
                  <!-- ./col -->
                  <div class="col-xs-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60" data-fgColor="#39CCCC">

                    <div class="knob-label">In-Store</div>
                  </div>
                  <!-- ./col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.box-footer -->
            </div>
            <!-- /.box -->
          </section>
          <!-- right col -->
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