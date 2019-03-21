<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="single-product-desc">
    <c:if test="${course!=null}">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="item-preview">
                        <div class="item__preview-slider">
                            <div class="prev-slide">
                                <img src="${course.image}"
                                     alt="${course.name}">
                            </div>
                        </div>
                    </div>
                    <div class="item-info">
                        <div class="tab-content">
                            <div class="fade show tab-pane product-tab active" id="product-details">
                                <div class="tab-content-wrapper">
                                    <h2><b>I. Mô tả</b></h2>
                                        ${course.description}
                                    <h2><b>II. Mục tiêu</b></h2>
                                        ${course.goal}
                                    <h2><b>III. Lộ trình học</b></h2>
                                        ${course.content}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar sidebar--single-product">
                        <div class="sidebar-card card-pricing">
                            <div class="price">
                                <h1>
                                    <sup>VNĐ</sup>${course.price}</h1>
                            </div>
                        </div>
                        <div class="sidebar-card card--product-infos">
                            <div class="card-title">
                                <h4>Thông tin chi tiết</h4>
                            </div>
                            <ul class="infos">
                                <li>
                                    <p class="data-label">Thể loại</p>
                                    <p class="info">${course.typeName}</p>
                                </li>
                                <li>
                                    <p class="data-label">Thời gian học</p>
                                    <p class="info">${course.duration} buổi</p>
                                </li>
                                <li>
                                    <p class="data-label">Giảng viên</p>
                                    <p class="info">Get Ins</p>
                                </li>
                            </ul>
                        </div>
                        <div class="author-card sidebar-card ">
                            <div class="card-title">
                                <h4>Thông tin giảng viên</h4>
                            </div>
                            <div class="author-infos">
                                <div class="author_avatar">
                                    <img src="${pageContext.request.contextPath}/webstatic/src/images/getinslogo.png">
                                </div>
                                <div class="author">
                                    <h4>Get Ins</h4>
                                </div>
                                <div class="social social--color--filled">
                                    <ul>
                                        <li>
                                            <a href="https://www.facebook.com/GetinsVietNam/">
                                                <span class="fa fa-facebook"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.instagram.com/GetinsVietNam/">
                                                <span class="fa fa-instagram"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="author-btn">
                                    <a href="${pageContext.request.contextPath}/about-us"
                                       class="btn btn--sm btn--round">Thông
                                        tin</a>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </c:if>
</section>