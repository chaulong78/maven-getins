<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="hero-area hero--1 bgimage">
    <div class="bg_image_holder">
        <img src="${pageContext.request.contextPath}/webstatic/src/images/hero_area_bg2.png">
    </div>
    <div class="hero-content content_above">
        <div class="content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="hero__content__title">
                            <h1>
                                <span class="light">Khám phá ngay</span>
                                <span class="bold">Tương lai về Vạn vật kết nối</span>
                            </h1>
                            <p class="tagline">Là một người trẻ, bạn cần chuẩn bị những gì trong kỉ nguyên công nghệ
                                số?</p>
                        </div>
                        <div class="hero__btn-area">
                            <a href="${pageContext.request.contextPath}/khoa-hoc" class="btn btn--round btn--lg">Tất cả
                                khóa học</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="search-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="search_box">
                        <form:form action="${pageContext.request.contextPath}/tim-kiem" method="get">
                            <input type="text" class="text_field" name="khoa-hoc"
                                   placeholder="Hàng trăm khóa học đang chờ đón bạn. Tìm hiểu ngay..." required>
                            <div class="search__select">
                            </div>
                            <button type="submit" class="search-btn btn--lg">Get it!</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>