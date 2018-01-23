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
                  <button type="button" class="btn btn-default btn-sm " data-toggle="modal" data-target="#modal-default">
                    <i class="fa fa-trash-o"></i> 新增
                  </button>
                  <button type="button" class="btn btn-default btn-sm btn-delete">
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
                <div class="pull-right">
                  <div class="table_page_length">
                    <label>每页
                      <select id="page" name="page" class="form-control input-sm">
                        <option value="10">10</option>
                        <option value="15">15</option>
                        <option value="30">30</option>
                      </select> 项
                    </label>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
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
      <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
                <!-- form start -->
                <form class="form-horizontal">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox"> Remember me
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
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