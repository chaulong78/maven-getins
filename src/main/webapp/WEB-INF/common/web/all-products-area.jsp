<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="section--padding2 bgcolor">
    <c:if test="${fn:length(courseList) != 0}">
        <div class="shortcode_wrapper">
            <div class="container">
                <div class="row">
                    <c:forEach var="course" items="${courseList}">
                        <div class="col-lg-4 col-md-6">
                            <div class="product product--card product--card2">
                                <div class="product__thumbnail">
                                    <img src="${course.image}">
                                    <div class="prod_btn">
                                        <a href="${pageContext.request.contextPath}${course.urlName}"
                                           class="transparent btn--sm btn--round">Chi tiết</a>
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
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </c:if>
</section>