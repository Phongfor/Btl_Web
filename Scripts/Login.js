function validateLoginForm() {
    var email = document.getElementById('<%= txtEmail.ClientID %>').value.trim();
    var password = document.getElementById('<%= txtPassword.ClientID %>').value.trim();
    var lbl = document.getElementById('<%= lblMessage.ClientID %>');

    // Kiểm tra email rỗng
    if (email === "") {
        lbl.innerText = "Vui lòng nhập email.";
        lbl.style.color = "red";
        return false;
    }

    // Kiểm tra định dạng email
    var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!pattern.test(email)) {
        lbl.innerText = "Email không hợp lệ.";
        lbl.style.color = "red";
        return false;
    }

    // Kiểm tra mật khẩu rỗng
    if (password === "") {
        lbl.innerText = "Vui lòng nhập mật khẩu.";
        lbl.style.color = "red";
        return false;
    }

    // Nếu hợp lệ → Xóa thông báo lỗi
    lbl.innerText = "";
    return true;
}
