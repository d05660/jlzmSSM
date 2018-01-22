<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>后台管理</title>
<%@ include file="common/basejs.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">
    <header class="main-header">
      <!-- Logo -->
      <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>LT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Admin</b>LTE</span>
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
                  <p>Alexander Pierce - Web Developer <small>Member since Nov. 2012</small></p>
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
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="assets/images/user2-160x160.jpg" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>Alexander Pierce</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
          <li class="header">MAIN NAVIGATION</li>
          <li class="active treeview">
            <a href="#"> <i class="fa fa-dashboard"></i>
              <span>Dashboard</span> 
            </a>
          </li>
          <li class="treeview">
            <a href="#"> 
              <i class="fa fa-files-o"></i> 
              <span>Layout Options</span> 
              <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
              <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
              <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
              <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
              <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
            </ul>
          </li>
          <li class="treeview">
            <a href="#"> 
              <i class="fa fa-pie-chart"></i> 
              <span>Charts</span> 
              <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
              <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
              <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
              <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
              <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
            </ul>
          </li>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>Dashboard <small>Control panel</small></h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
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
              <table class="table table-striped table-bordered table-hover nowrap" id="emp-table"
                cellspacing="0" width="100%">
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
                   <th>操作</th>
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
        <b>Version</b> 2.4.0
      </div>
      <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.
      </strong> All rights reserved.
    </footer>
    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
  </div>
  <!-- ./wrapper -->
  <script src="<%=basePath%>assets/vender/jquery/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<%=basePath%>assets/vender/bootstrap/js/bootstrap.min.js"></script>
  <script src="<%=basePath%>assets/vender/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="<%=basePath%>assets/vender/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script src="<%=basePath%>assets/vender/bootbox/bootbox.min.js"></script>
  <script src="https://cdn.bootcss.com/spin.js/2.3.2/spin.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<%=basePath%>assets/vender/AdminLTE/js/AdminLTE.min.js"></script>
  <script src="<%=basePath%>assets/js/default.js"></script>
  <script>
  $(function () {
    //$('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
	</script>
</body>
</html>