<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<div class="menu-area">
    <div class="top-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-6 v_middle">
                    <div class="logo">
                        <a href="${pageContext.request.contextPath}/trang-chu">
                            <img src="${pageContext.request.contextPath}/webstatic/src/images/logo1.png"
                                 class="img-fluid">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1 col-md-9 col-6 v_middle">
                    <div class="author-area">
                        <br>
                        <sec:authorize access="hasRole('ANONYMOUS')">
                            <a href="${pageContext.request.contextPath}/login" class="author-area__seller-btn inline">Đăng
                                nhập</a>
                            <a href="${pageContext.request.contextPath}/signup" class="author-area__seller-btn inline">Đăng
                                kí</a>
                        </sec:authorize>
                        <div class="author__notification_area">
                            <ul>
                                <li class="has_dropdown">
                                    <div class="icon_wrap">
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="author-author__info inline has_dropdown">
                            <sec:authorize access="!hasRole('ANONYMOUS')">
                                <div class="author__avatar">
                                    <img src="<sec:authentication property="principal.avatar"/>"
                                         style="width: 50px; height: 50px">
                                </div>
                                <div class="autor__info">
                                    <p class="name">
                                        <sec:authentication property="principal.username"/>
                                    </p>
                                </div>
                                <div class="dropdown dropdown--author">
                                    <ul>
                                        <sec:authorize access="!hasAnyRole('USER', 'ANONYMOUS')">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/admin">
                                                    <span class="lnr lnr-lock"></span>Quản trị web</a>
                                            </li>
                                        </sec:authorize>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/profile">
                                                <span class="lnr lnr-user"></span>Thông tin cá nhân</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/change-pass">
                                                <span class="lnr lnr-cog"></span>Đổi mật khẩu</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/logout">
                                                <span class="lnr lnr-exit"></span>Đăng xuất</a>
                                        </li>
                                    </ul>
                                </div>
                            </sec:authorize>
                        </div>
                    </div>
                    <!-- MOBILE -->
                    <div class="mobile_content ">
                        <span class="lnr lnr-user menu_icon"></span>
                        <div class="offcanvas-menu closed">
                            <span class="lnr lnr-cross close_menu"></span>
                            <div class="author-author__info">
                                <div class="author__avatar v_middle">
                                    <%--<img src="<sec:authentication property="principal.avatar"/>" alt="">--%>
                                </div>
                                <div class="autor__info v_middle">
                                    <p class="name">
                                        <%--<sec:authentication property="principal.username"/>--%>
                                    </p>
                                </div>
                            </div>
                            <div class="dropdown dropdown--author">
                                <ul>
                                    <sec:authorize access="hasRole('ANONYMOUS')">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/login">
                                                <span class="lnr"></span>Đăng nhập</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/signup">
                                                <span class="lnr"></span>Đăng ký</a>
                                        </li>
                                    </sec:authorize>
                                    <sec:authorize access="!hasRole('ANONYMOUS')">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/profile">
                                                <span class="lnr"></span>Thông tin cá nhân</a>
                                        </li>
                                        li>
                                        <a href="${pageContext.request.contextPath}/change-pass/">
                                            <span class="lnr"></span>Đổi mật khẩu</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/logout">
                                                <span class="lnr"></span>Đăng xuất</a>
                                        </li>
                                    </sec:authorize>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MAIN MENU AREA -->
    <div class="mainmenu">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <!-- MAIN MENU SEARCH -->
                        <div class="mainmenu__search">
                            <form:form action="${pageContext.request.contextPath}/tim-kiem" method="get">
                                <div class="searc-wrap">
                                    <input type="text" name="khoa-hoc" placeholder="Bạn muốn học gì?" required>
                                    <button type="submit" class="search-wrap__btn">
                                        <span class="lnr lnr-magnifier"></span>
                                    </button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-md navbar-light mainmenu__menu">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                                aria-controls="navbarNav" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li>
                                    <a href="${pageContext.request.contextPath}/">Trang chủ</a>
                                </li>
                                <li class="${fn:length(courseTypeList)!=0?'has_dropdown':''}">
                                    <a href="${pageContext.request.contextPath}/khoa-hoc">Khóa học</a>
                                    <div class="dropdown dropdown--menu">
                                        <ul>
                                            <c:forEach var="courseType" items="${courseTypeList}">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}${courseType.urlName}">Khóa
                                                        học ${courseType.name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li class="${fn:length(postTypeList)!=0?'has_dropdown':''}">
                                    <a href="${pageContext.request.contextPath}/tin-tuc">Tin tức</a>
                                    <div class="dropdown dropdown--menu">
                                        <ul>
                                            <c:forEach var="postType" items="${postTypeList}">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}${postType.urlName}">Tin
                                                        tức ${postType.name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/su-kien">Sự kiện</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/about-us">Về chúng tôi</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>