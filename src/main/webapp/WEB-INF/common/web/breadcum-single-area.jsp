<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb">
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/">Trang chủ</a>
                        </li>
                        <c:set var="current" value="${requestScope['javax.servlet.forward.request_uri']}"/>
                        <c:choose>
                            <c:when test="${fn:contains(current, '/khoa-hoc/')}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/khoa-hoc/">Khóa học</a>
                                </li>
                                <li class="active">
                                    <a href="${pageContext.request.contextPath}${course.typeUrl}">${course.typeName}</a>
                                </li>
                                <c:set var="title" value="${course.name}"/>
                            </c:when>
                            <c:when test="${fn:contains(current, '/tin-tuc/')}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/tin-tuc/">Tin tức</a>
                                </li>
                                <li class="active">
                                    <a href="${pageContext.request.contextPath}${post.typeUrl}">${post.typeName}</a>
                                </li>
                                <c:set var="title" value="${post.name}"/>
                            </c:when>
                        </c:choose>
                    </ul>
                </div>
                <h1 class="page-title">${title}</h1>
            </div>
        </div>
    </div>
</section>