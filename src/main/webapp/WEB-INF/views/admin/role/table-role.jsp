<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>Get Ins Vietnam</title>
    <link href="${pageContext.request.contextPath}/css/themes/fixed-menu/materialize.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/themes/fixed-menu/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/data-tables/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<c:import url="../../../common/pre-loading.jsp"/>
<c:import url="../../../common/header.jsp"/>
<!-- START MAIN -->
<div id="main">
    <div class="wrapper">
        <c:import url="../../../common/left-sidebar.jsp"/>
        <security:authentication var="functionList"
                                 property="principal.functionDTOList"/>
        <section id="content">
            <div id="breadcrumbs-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col s10 m6 l6">
                            <c:set var="url"
                                   value="${requestScope['javax.servlet.forward.request_uri']}"/>
                            <c:forEach var="function" items="${functionList}">
                                <c:if test="${'/givn'.concat(function.url) == url || function.url == url}">
                                    <c:set var="currentFunction" value="${function}"/>
                                </c:if>
                            </c:forEach>
                            <h5 class="breadcrumbs-title">
                                Trang quản lý
                            </h5>
                            <ol class="breadcrumbs">
                                <c:forEach var="parentFunction" items="${functionList}">
                                    <c:if test="${parentFunction.id == currentFunction.parentId}">
                                        <li>${parentFunction.name}</li>
                                        <li><a href="${pageContext.request.contextPath}${currentFunction.url}">${currentFunction.name}</a></li>
                                    </c:if>
                                </c:forEach>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <%----------------------------%>
            <div class="container">
                <div class="section">
                    <p style="color: #ff572f; font-weight: bold; text-align: center">
                        <c:out value="${message}"/>
                        <c:remove var="message"/>
                    </p>
                    <div class="divider"></div>
                    <br>
                    <div class="row">
                        <c:if test="${currentFunction.canCreate}">
                            <a href="${pageContext.request.contextPath}/admin/system/role/add"
                               class="btn waves-effect waves-light gradient-45deg-green-teal">
                                Tạo quyền
                            </a>
                        </c:if>
                    </div>
                    <!-- DATA TABLE -->
                    <div id="table-datatables section">
                        <h4 class="header">Bảng phân quyền hệ thống</h4>
                        <div class="row">
                            <div class="col s12">
                                <table id="data-table-simple" class="responsive-table display"
                                       cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên quyền</th>
                                        <th>Mô tả</th>
                                        <th>Trạng thái</th>
                                        <th style="width: 25%">#</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên quyền</th>
                                        <th>Mô tả</th>
                                        <th>Trạng thái</th>
                                        <th>#</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="role" items="${roleList}">
                                        <c:if test="${role != null}">
                                            <tr>
                                                <td>${role.id}</td>
                                                <td>${role.name}</td>
                                                <td>${role.description}</td>
                                                <td>
                                                    <span style="color: ${role.enabled? '#245bff': '#ff4f39'}">${role.enabled? 'Kích hoạt': 'Ẩn'}</span>
                                                </td>
                                                <td>
                                                    <c:if test="${currentFunction.canUpdate}">
                                                        <a href="${pageContext.request.contextPath}/admin/system/role/edit?id=${role.id}"
                                                           class="btn waves-effect waves-light gradient-45deg-green-teal">
                                                            Sửa
                                                        </a> |
                                                        <a href="${pageContext.request.contextPath}/admin/system/role/authorize?id=${role.id}"
                                                           class="btn waves-effect waves-light gradient-45deg-purple-deep-orange">
                                                            Gán chức năng
                                                        </a>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- END DATA TABLE -->
                </div>
            </div>
        </section>
    </div>
    <br>
    <br>
</div>
<!-- END MAIN -->
<c:import url="../../../common/footer.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/data-tables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts/data-tables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>
>
</body>
</html>