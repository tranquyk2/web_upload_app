<?php
// Cấu hình thông tin kết nối cơ sở dữ liệu
$servername = "localhost";  // Địa chỉ server MySQL
$username = "root";     // Tên người dùng MySQL
$password = "";     // Mật khẩu của bạn
$dbname = "ipa-app";  // Tên cơ sở dữ liệu

// Tạo kết nối
$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Thiết lập mã hóa ký tự UTF-8
$conn->set_charset("utf8");
?>
