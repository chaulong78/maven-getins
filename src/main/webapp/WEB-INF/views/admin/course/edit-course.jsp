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
    <link href="${pageContext.request.contextPath}/vendors/dropify/css/dropify.min.css" type="text/css" rel="stylesheet">
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
                                <c:forEach var="tempFunction" items="${functionList}">
                                    <c:if test="${tempFunction.id == 'CourseManagement'}">
                                        <c:set var="parentFunction" value="${tempFunction}"/>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="tempFunction" items="${functionList}">
                                    <c:if test="${tempFunction.id == 'CourseList'}">
                                        <c:set var="currentFunction" value="${tempFunction}"/>
                                    </c:if>
                                </c:forEach>
                                <li>${parentFunction.name}</li>
                                <li><a href="${pageContext.request.contextPath}${currentFunction.url}">${currentFunction.name}</a></li>
                                <li>Sửa khóa học</li>
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
                    <!-- FORM ADVANCE -->
                    <div class="row section">
                        <div class="col s12 m12 l12">
                            <div class="card-panel">
                                <div class="row">
                                    <form:form
                                            action="${pageContext.request.contextPath}/admin/course/edit"
                                            method="post" class="col s12" modelAttribute="course"
                                            enctype="multipart/form-data">
                                        <input type="hidden" name="id" value="${course.id}">
                                        <input type="hidden" name="authorId" value="${course.authorId}">
                                        <input type="hidden" id="typeId" value="${course.typeId}" name="typeId">
                                        <div class="row">
                                            <div class="col s4 m5 14">
                                                <img src="${course.image}"
                                                     alt="Avatar"
                                                     class="ct-square responsive-img valign profile-image cyan">
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <input id="image" name="image" type="text"
                                                           value="${course.image}" required>
                                                    <label for="image">Ảnh đại diện khóa học</label>
                                                </div>
                                                <div class="input-field col s6">
                                                    <input id="name" name="name" type="text"
                                                           value="${course.name}" required>
                                                    <label for="name">Tên khóa học</label>
                                                </div>
                                                <div class="input-field col s6">
                                                    <select id="select">
                                                        <c:forEach var="type" items="${typeList}">
                                                            <option value="${type.id}" ${course.typeId==type.id ? 'selected':''}>${type.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <label>Thể loại khóa học</label>
                                                </div>
                                                <div class="input-field col s6">
                                                    <input id="author" name="author" type="text"
                                                           value="${author}" disabled="disabled">
                                                    <label for="author">Tác giả</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s2">
                                                <input id="price" name="price" type="text"
                                                       value="${course.price}" required placeholder="Ví dụ: 2.200.00">
                                                <label for="price">Giá khóa học</label>
                                            </div>
                                            <div class="input-field col s2">
                                                <input id="duration" name="duration" type="number"
                                                       value="${course.duration}" required>
                                                <label for="duration">Thời lượng</label>
                                            </div>
                                            <div class="input-field col s2">
                                                <input id="rating" name="rating" type="number"
                                                       value="${course.rating}" required>
                                                <label for="rating">Đánh giá khóa học</label>
                                            </div>
                                            <div class="input-field col s6">
                                                <input id="videoUrl" name="videoUrl" type="text"
                                                       value="${course.videoUrl}">
                                                <label for="videoUrl">URL Video khóa học</label>
                                            </div>
                                        </div>
                                        <label style="font-size:100% ">Mô tả</label>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                        <textarea id="description"
                                                                  name="description"
                                                                  class="materialize-textarea"
                                                                  required>${course.description}</textarea>
                                            </div>
                                        </div>
                                        <br>
                                        <label style="font-size:100% ">Mục tiêu</label>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                        <textarea id="goal"
                                                                  name="goal"
                                                                  class="materialize-textarea"
                                                                  required>${course.goal}</textarea>
                                            </div>
                                        </div>
                                        <br>
                                        <label style="font-size:100% ">Lộ trình khóa học</label>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                        <textarea id="ccontent"
                                                                  name="content"
                                                                  class="materialize-textarea"
                                                                  required>${course.content}</textarea>
                                            </div>
                                        </div>
                                        <label style="font-size:100% ">Yêu cầu trình độ</label>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                        <textarea id="requirement"
                                                                  name="requirement"
                                                                  class="materialize-textarea"
                                                                  required>${course.requirement}</textarea>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col s12">
                                                <input type="checkbox" id="enabled" name="enabled">
                                                <label for="enabled">Kích hoạt</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <button class="btn cyan waves-effect waves-light right"
                                                        type="submit" name="action"
                                                        onclick="getType(); return confirm('Lưu thông tin khóa học?')">
                                                    Submit
                                                    <i class="material-icons right">send</i>
                                                </button>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END FORM ADVANCE -->
                </div>
            </div>
        </section>
        <br>
    </div>
</div>
<!-- END MAIN -->
<c:import url="../../../common/footer.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts/form-file-uploads.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/dropify/js/dropify.min.js"></script>
<script src="https://cdn.ckeditor.com/4.5.4/full-all/ckeditor.js"></script>
<script>
    $(document).ready(function () {
        $("#enabled").attr('checked', ${course.enabled})
    });
    CKEDITOR.replace('description');
    CKEDITOR.replace('ccontent');
    CKEDITOR.replace('goal');
    CKEDITOR.replace('requirement');

    function getType() {
        $('#typeId').val($("#select").val());
    }
</script>
</body>
</html>