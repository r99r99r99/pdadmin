<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html >
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<head>
	<meta charset="utf-8" />
	<title>${system.systemName }</title>
	<meta name="keywords" content="入海污染源" />
	
	<style>
	        
	        .chartsLine {
				width: 100%;
				display:inline;
				float:left; 
			}
			.oneCharts {
				width: 100%;
				height:80%;
				display:inline;
				float:left; 
			}
			.twoCharts {
				width: 50%;
				height:80%;
				display:inline;
				float:left; 
			}
			.threeCharts {
				width: 50%;
				height:80%;
				display:inline;
				float:left; 
			}
	</style>
	
</style>
</head>
<body ng-app="myApp" ng-controller="customersCtrl" >
	<script src="${ctx }/shenhai/resources/common/js/common.js" type="text/javascript"></script>
	<script src="${ctx }/shenhai/resources/My97DatePicker/WdatePicker.js"></script>
		
	<%@ include file="../common/header.jsp" %>
		<script src="${ctx }/shenhai/resources/highcharts-ng/highcharts-ng.js" type="text/javascript"></script>
		<script src="${ctx }/shenhai/resources/highcharts-ng/highstock.src.js"></script>
		<script src="${ctx }/shenhai/resources/highcharts-ng/exporting.js"></script>
		<script src="${ctx }/shenhai/resources/common/js/common.js" type="text/javascript"></script>
	<!-- PAGE -->
	<section id="page">
	<%@ include file="../common/left.jsp" %>
	<div id="main-content">
		<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<!-- STYLER -->
									
									<!-- /STYLER -->
									<!-- BREADCRUMBS -->
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="#">${currMenu.pMenuName }</a>
										</li>
										<li>
											<a href="#">${currMenu.cMenuName }</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<div style="word-wrap:break-word; overflow:hidden;">
					<ul class="seachform">
					<li><label>站点:</label>
					    <div class="vocation">
						    <multi-select-tree data-input-model="u.stationTree" multi-select="true" ng-model="station"  
                                   data-output-model="u.stationids" data-default-label="请选择对比站点."
                                   data-callback="selectOnly1Or2(item, selectedItems)"
                                   
								   data-switch-view-callback="switchViewCallback(scopeObj)"
                                   data-select-only-leafs="true"
                                   data-switch-view="true">
							</multi-select-tree>
					    </div>
				    </li>
				    <li><label>参数:</label>
					    <div class="vocation">
						    <multi-select-tree data-input-model="u.indicatorTree" multi-select="false" ng-model="indicator" 
                                   data-output-model="u.indicatorids" data-default-label="请选择对比参数."
                                   data-callback="selectIndicator(item, selectedItems)"
                                   
                                   data-select-only-leafs="true"
                                   data-switch-view="false">
							</multi-select-tree>
					    </div>
				    </li>
				    <li><label>开始时间:</label>
				    <div class="vocation">
				    	<input name="startDate" ng-model="u.beginDate" id="startDate" placeholder="开始时间"  value="${endDate }" type="text" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="timeput" >
			        </div>
				    </li>
				    <li><label>结束时间:</label>
				    <div class="vocation">
				    	<input name="endDate" ng-model="u.endDate" id="endDate" placeholder="开始时间" value="${endDate }" type="text" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  class="timeput" >
			        </div>
				    </li>
				    <li><label>&nbsp;</label><input name="" type="button" class="btn btn-primary" ng-click="query()" value="查询"/></li>
				    </ul>
				    </div>
					<div class="container-fluid">
						<div id="container"></div>
					</div>
			</div>
	</div>		
	</section>
<script src="${ctx }/shenhai/js/dataquery/comparison_init.js"></script>	
</body>
</html>
	