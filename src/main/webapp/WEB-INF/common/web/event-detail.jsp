<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<section class="event_details section--padding">
    <c:if test="${event!=null}">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="event_module">
                        <h4 class="event_module__title">Tổng quan</h4>
                        <p>${event.description}</p>

                        <h4 class="event_module__title">Chi tiết</h4>
                            ${event.content}
                    </div>
                    <div class="event_module">
                        <h4 class="event_module__title">Diễn giả sự kiện</h4>
                        <div>
                            <c:if test="${fn:length(speakerList) != 0}">
                                <c:forEach var="speaker" items="${speakerList}">
                                    <div class="single_speaker">
                                        <div class="speaker__thumbnail">
                                            <img src="${speaker.image}" alt="">
                                        </div>
                                        <div class="speaker__detail">
                                            <h4>${speaker.name}</h4>
                                            <span class="ocuup">${speaker.job}</span>
                                            <p>${speaker.description}
                                            </p>
                                            <div class="speaker_social">
                                                <ul>
                                                    <li>
                                                        <a href="https://www.facebook.com/GetinsVietNam">
                                                            <span class="fa fa-facebook"></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="https://www.instagram.com/GetinsVietNam">
                                                            <span class="fa fa-instagram"></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${event.map!=null && event.map!=''}">
            <div class="google_map">
                <div class="location_address">
                    <div class="addres_module">
                        <h4>${event.eventPlace}</h4>
                        <p>
                            <span class="lnr lnr-phone-handset"></span>+84 973 755 035</p>
                        <p>
                            <span class="lnr lnr-envelope"></span>getinsvietnam@gmail.com</p>
                    </div>
                </div>
                    ${event.map}
            </div>
        </c:if>
    </c:if>
    <div class="sign_up_area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h2 class="sign_up_title">Đăng ký nhận thông tin</h2>
                    <div class="ticket_form">
                        <form:form action="${pageContext.request.contextPath}/contact" method="post"
                                   modelAttribute="contact">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="name" placeholder="Tên của bạn *" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" name="email" placeholder="Email *" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="phone" placeholder="Số điện thoai">
                                    </div>
                                </div>
                            </div>
                            <textarea cols="30" rows="10" name="comment" placeholder="Ý kiến của bạn"></textarea>
                            <div class="sub_btn">
                                <button type="submit" class="btn btn--round btn--default">Gửi</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>