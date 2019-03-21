<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="products">
    <c:if test="${fn:length(courseList) != 0}">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sorting">
                        <span style="font-size: large"><b>Thể loại khóa học: </b></span>
                        <ul>
                            <c:forEach var="type" items="${courseTypeList}">
                                <li>
                                    <a href="${pageContext.request.contextPath}${type.urlName}">${type.name}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach var="course" items="${courseList}">
                    <div class="col-lg-4 col-md-6">
                        <div class="product product--card product--card2">
                            <div class="product__thumbnail">
                                <img src="${course.image}" alt="Product Image">
                                <div class="prod_btn">
                                    <a href="${pageContext.request.contextPath}${course.urlName}"
                                       class="transparent btn--sm btn--round">Chi
                                        tiết</a>
                                </div>
                            </div>
                            <div class="product-desc">
                                <a href="${pageContext.request.contextPath}${course.urlName}" class="product_title">
                                    <h4>${course.name}</h4>
                                </a>
                                <p>${course.description}</p>
                            </div>
                            <ul class="titlebtm">
                                <li class="product_cat">
                                    <a href="${pageContext.request.contextPath}${course.typeUrl}">
                                        <span class="lnr lnr-book"></span>${course.typeName}</a>
                                </li>
                                <li class="rating product--rating">
                                    <ul>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="product-purchase">
                                <div class="price_love">
                                    <span>VNĐ ${course.price}</span>
                                </div>
                                <div class="sell">
                                    <p>
                                        <span>${course.duration} buổi</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="col-md-12">
                    <div class="more-product">
                        <a href="${pageContext.request.contextPath}/khoa-hoc" class="btn btn--lg btn--round">Tất cả khóa
                            học</a>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
</section>