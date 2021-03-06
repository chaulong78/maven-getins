<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:if test="${fn:length(postList)!=0}">
    <section class="products">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sorting">
                        <span style="font-size: large"><b>Thể loại tin tức: </b></span>
                        <ul>
                            <c:forEach var="type" items="${postTypeList}">
                                <li>
                                    <a href="${pageContext.request.contextPath}${type.urlName}">${type.name}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" data-uk-grid>
                <c:forEach var="post" items="${postList}">
                    <div class="col-lg-4 col-md-6">
                        <div class="single_blog blog--card">
                            <figure>
                                <img src="${post.image}">
                                <figcaption>
                                    <div class="blog__content">
                                        <a href="${pageContext.request.contextPath}${post.urlName}" class="blog__title">
                                            <h4>${post.name}</h4>
                                        </a>
                                        <p>${post.description}</p>
                                    </div>
                                    <div class="blog__meta">
                                        <div class="date_time">
                                            <span class="lnr lnr-clock"></span>
                                            <p>${post.createDate}</p>
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="col-md-12">
                <div class="more-product">
                    <a href="${pageContext.request.contextPath}/tin-tuc" class="btn btn--lg btn--round">Tất cả tin
                        tuc</a>
                </div>
            </div>
        </div>
    </section>
</c:if>