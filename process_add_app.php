<?php
// Import file cấu hình kết nối
include 'config.php';

// Kiểm tra xem form đã được gửi
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Lấy dữ liệu từ form
    $app_name = $_POST['app_name'];
    $version = $_POST['version'];
    $update_date = $_POST['update_date'];
    $description = $_POST['description'];
    $download_link = $_POST['download_link'];
    
    // Kiểm tra xem giá trị category được gửi lên có thuộc danh sách enum
    $allowed_categories = ['app', 'game', 'Chứng Chỉ', 'jaibreak'];
    $category = $_POST['category'];
    if (!in_array($category, $allowed_categories)) {
        die("Lỗi: Giá trị category không hợp lệ.");
    }
    
    $app_image = $_POST['app_image'];
    
    // Thêm giá trị cho modby và chucnang (ví dụ bạn có thể lấy từ form hoặc gán cứng giá trị)
    $modby = $_POST['modby']; // hoặc giá trị mặc định, ví dụ 'admin'
    $chucnang = $_POST['chucnang']; // hoặc giá trị mặc định

    // Chuẩn bị câu lệnh SQL để thêm dữ liệu
    $sql = "INSERT INTO apps (app_name, version, update_date, description, download_link, category, app_image, modby, chucnang) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    if ($stmt = $conn->prepare($sql)) {
        // Liên kết các biến với tham số câu lệnh SQL
        $stmt->bind_param("sssssssss", $app_name, $version, $update_date, $description, $download_link, $category, $app_image, $modby, $chucnang);

        // Thực thi câu lệnh
        if ($stmt->execute()) {
            echo "Ứng dụng đã được thêm thành công.";
        } else {
            echo "Lỗi: " . $stmt->error;
        }

        // Đóng câu lệnh
        $stmt->close();
    } else {
        echo "Lỗi: " . $conn->error;
    }

    // Đóng kết nối
    $conn->close();
}
?>
