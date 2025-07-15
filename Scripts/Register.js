
    function validateForm() {
        var password = document.getElementById('<%= txtPassword.ClientID %>').value;
    var confirmPassword = document.getElementById('<%= txtConfirmPassword.ClientID %>').value;
    if (password !== confirmPassword) {
        alert("Mật khẩu xác nhận không khớp!");
    return false;
        }
    if (password.length < 6) {
        alert("Mật khẩu phải có ít nhất 6 ký tự!");
    return false;
        }

    var email = document.getElementById('<%= txtEmail.ClientID %>').value;
    var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!pattern.test(email)) {
        alert("Email không hợp lệ!");
    return false;
        }

    return true;
    }

    function togglePassword() {
        var pass = document.getElementById('<%= txtPassword.ClientID %>');
    var confirm = document.getElementById('<%= txtConfirmPassword.ClientID %>');
    var type = pass.type === "password" ? "text" : "password";
    pass.type = type;
    confirm.type = type;
    }

