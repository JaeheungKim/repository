<%@ 
    page language="java" 
    contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<title>Rebel9 Admin</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="../css/jquery-jvectormap-1.2.2.css" />
	<link rel="stylesheet" href="../css/AdminLTE.min.css" />
	<link rel="stylesheet" href="../css/_all-skins.min.css" />
	<link rel="stylesheet" href="../css/pace.min.css" />
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- Custom Style -->
    <style rel="stylesheet">
        .radio {
            float: left;
            margin-left: 15px;
        }
        .margin-right {
            margin-right : 10px;
        }
        .margin-zero {
           padding : 0;
           width : 23px;
           height : 23px;
        }
        .table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
            vertical-align : middle;
        }
        select {
            padding : 6px 12px;
        }
        
        /* media query
         * ------------------------------------- */
        @media (max-width : 980px) {
            select {
                margin-top : 12px;
            }
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<!-- Document -->
	<div class="wrapper">
		<header class="main-header">
			<!-- logo -->
			<a href="index.html" class="logo"> <!-- mini logo for sidebar mini 50 x 50 pixels -->
				<span class="logo-mini"><b>R</b>9</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Rebel9</b>&nbsp;Admin</span>
			</a>
			<nav class="navbar navbar-static-top">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li class="header">Menu</li>
					<li class="treeview">
						<a href="#">
	                        <i class="fa fa-files-o"></i>
							<span>Project Configuration</span>
						</a>
						<!-- 2dep menu -->
						<ul class="treeview-menu">
							<li>
								<a href="list.jsp">
									<i class="fa fa-circle-o"></i>
									Project list
								</a>
							</li>
							<li>
								<a href="create.jsp">
									<i class="fa fa-circle-o"></i>
									Project create
								</a>
							</li>
						</ul>
					</li>
					<li class="header">Page</li>
					<li>
						<a href="#">
							<i class="fa fa-circle-o text-yellow"></i>
							<span>Rebel9 HomePage</span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-circle-o text-blue"></i>
							<span>Logout</span>
						</a>
					</li>
				</ul>
			</section>
		</aside>
		<div class="content-wrapper">
			<!-- Content Header (Page-header) -->
			<section class="content-header">
				<h1>
					Project&nbsp;List <small>Configuration</small>
				</h1>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">Search Option</h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool" data-widget="collapse">
									   <i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label>Project Name</label>
											<input type="text" class="form-control" placeholder="Project Name" />
										</div>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-4">
										<label>Project Permission</label>
										<div class="form-group">
											<div class="row">
												<div>
													<div class="radio">
														<label>
                                                            <input name="permission" type="radio" value="ALL" />
                                                            Total
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
                                                            <input name="permission" type="radio" value="Y" />
                                                            Enable Permission
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
                                                            <input name="permission" type="radio" value="N" />
                                                            Disable Permission
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>Deliverables</label>
										<div class="row">
											<div class="form-group">
												<div>
													<div class="radio">
														<label>
                                                            <input type="radio" name="deliverables" value="ALL" />
                                                            All
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
                                                            <input type="radio" name="deliverables" value="ALL" />
                                                            Consulting
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label> 
                                                            <input type="radio" name="deliverables" value="ALL" />
                                                            Archive
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
                                                            <input type="radio" name="deliverables" value="ALL" />
                                                            UI Design
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
                                                            <input type="radio" name="deliverables" value="ALL" />
                                                            Development
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
															<input type="radio" name="deliverables" value="ALL" />
															Identity
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
															<input type="radio" name="deliverables" value="ALL" />
															Digital
														</label>
													</div>
												</div>
												<div>
													<div class="radio">
														<label>
															<input type="radio" name="deliverables" value="ALL" />
															Contents
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
								    <div class="col-md-12">
								        <button type="button" class="btn btn-primary pull-right margin">Search</button>
                                        <button type="button" class="btn btn-primary pull-right margin">Reset</button>
								    </div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
                    <div class="col-md-6">
                        <button type="button" class="btn btn-primary">Project Add</button>
                        <button type="button" class="btn btn-danger">Project Delete</button>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group pull-right">
                            <select class="form-controll">
                                <option>Board_no ASC</option>
                                <option>Board_no DESC</option>
                                <option>Project_name ASC</option>
                                <option>Project_name DESC</option>
                                <option>Finish_date ASC</option>
                                <option>Finish_date DESC</option>
                                <option>Add_date ASC</option>
                                <option>Add_date DESC</option>
                            </select>
                        </div>
                        <div class="form-group pull-right margin-right">
                            <select class="form-controll">
                                <option>By 10</option>
                                <option>By 25</option>
                                <option>By 50</option>
                            </select>
                        </div>
                    </div>
                </div>
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Project List</h3>
							</div>
							<div class="box-body table-responsive no-padding">
							<table class="table table-hover">
								<thead>
									<tr>
									   <th><input type="checkbox" /></th>
									   <th>Board_no</th>
									   <th>Deliverables</th>
									   <th>Thumbnail</th>
									   <th>Project name</th>
									   <th>Finish date</th>
									   <th>Add date</th>
									   <th>Permission</th>
									   <th>Configuration</th>
									</tr>
								</thead>
								<tbody>
								    <c:forEach begin="1" end="10" step="1">
								    <tr>
								        <td><input type="checkbox" /></td>
								        <td>1</td>
								        <td>Media</td>
								        <td><img width="150" height="100" src="http://placehold.it/150x100" alt="..." class=""></td>
								        <td>서울여자대학교 교사 자료관리시스템</td>
								        <td>2015-04-04</td>
								        <td>2015-04-04</td>
								        <td>승인</td>
								        <td>
								            <button type="button" class="btn bg-primary margin-zero">
                                                <i class="fa fa-chevron-up"></i>
                                            </button>
                                            <button type="button" class="btn bg-primary margin-zero">
                                                <i class="fa fa-chevron-down"></i>
                                            </button>
                                            <button type="button" class="btn bg-primary margin-zero">
                                                <i class="fa fa-unlock"></i>
                                            </button>
                                            <button type="button" class="btn bg-primary margin-zero">
                                                <i class="fa fa-remove"></i>
                                            </button>
								        </td>
								    </tr>
								    </c:forEach>
								</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
				    <div class="col-md-6">
                        <button type="button" class="btn btn-primary">Project Add</button>
                        <button type="button" class="btn btn-danger">Project Delete</button>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group pull-right">
						    <select class="form-controll">
						        <option>Board_no ASC</option>
						        <option>Board_no DESC</option>
						        <option>Project_name ASC</option>
						        <option>Project_name DESC</option>
						        <option>Finish_date ASC</option>
						        <option>Finish_date DESC</option>
						        <option>Add_date ASC</option>
						        <option>Add_date DESC</option>
						    </select>
						</div>
						<div class="form-group pull-right margin-right">
						    <select class="form-controll">
						        <option>By 10</option>
						        <option>By 25</option>
						        <option>By 50</option>
						    </select>
						</div>
                    </div>
				</div>
			</section>
		</div>
	</div>
	<!-- end wrapper -->
	<!-- modal -->
	

	<!-- Script -->
	<script src="../js/jQuery-2.2.0.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/fastclick.min.js"></script>
	<script src="../js/app.min.js"></script>
	<script src="../js/jquery.sparkline.min.js"></script>
	<script src="../js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="../js/jquery.slimscroll.min.js"></script>
	<!script src="../js/Chart.min.js"></script>
	<script src="../js/pace.min.js"></script>
	<!script src="../js/dashboard.js">
	</script>
	<!script src="../js/demo.js"></script>
</body>
</html>