function validateLoginForm() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var check = false;

    if (username === "") {
        document.getElementById("error").innerHTML = "Tên đăng nhập không được để trống";
    } else if (password === "") {
        document.getElementById("error").innerHTML = "Mật khẩu không được để trống";
    } else if (password.length < 6 || password.length > 50) {
        document.getElementById("error").innerHTML = "Mật khẩu tối thiểu 6 ký tự và tối đa 50 ký tự";
    } else {
        check = true;
    }

    return check;
}

function validateSignupForm() {
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var rePassword = document.getElementById("password-again").value;

    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var check = false;
    var error = document.getElementById("error");

    if (email === "") {
        error.innerHTML = "Email không được để trống";
    } else if (!emailPattern.test(String(email).toLowerCase())) {
        error.innerHTML = "Định dạng email không đúng";
    } else if (username === "") {
        error.innerHTML = "Tên đăng nhập không được để trống";
    } else if (username.length < 6 || username.length > 50) {
        error.innerHTML = "Tên đăng nhập tối thiểu 6 ký tự và tối đa 50 ký tự";
    } else if (password === "") {
        error.innerHTML = "Mật khẩu không được để trống";
    } else if (password.length < 6 || password.length > 50) {
        error.innerHTML = "Mật khẩu tối thiểu 6 ký tự và tối đa 50 ký tự";
    } else if (password !== rePassword) {
        error.innerHTML = "Nhập lại mật khẩu không đúng";
    } else {
        check = true;
    }

    return check;
}