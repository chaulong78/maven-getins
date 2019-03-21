<%@ page contentType="text/html; charset=UTF-8" %>
<section class="promotion-area">
    <div class="container">
        <div class="row">
            <div class="col-md-6 v_middle">
                <div class="promotion-img">
                    <img src="${event.image}">
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1 col-md-6 v_middle">
                <div class="promotion-content">
                    <h3 class="promotion__subtitle">Sự kiện đặc biệt</h3>
                    <h1 class="promotion__title">${event.name}
                    </h1>
                    <p>${event.description}</p>
                    <a href="${pageContext.request.contextPath}${event.urlName}" class="btn btn--lg btn--round">Xem chi tiết</a>
                </div>
            </div>
        </div>
    </div>
</section>