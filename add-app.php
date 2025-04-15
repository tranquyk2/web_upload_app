<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm ứng dụng mới</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="favicon.png" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, textarea, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thêm ứng dụng mới</h1>
        <form action="process_add_app.php" method="POST" enctype="multipart/form-data">
            <label for="app_name">Tên ứng dụng:</label>
            <input type="text" id="app_name" name="app_name" required>

            <label for="version">Phiên bản:</label>
            <input type="text" id="version" name="version" required>

            <label for="update_date">Ngày cập nhật:</label>
            <input type="date" id="update_date" name="update_date" required>

            <label for="description">Mô tả:</label>
            <textarea id="description" name="description" rows="4"></textarea>

            <label for="download_link">Link tải xuống:</label>
            <input type="url" id="download_link" name="download_link" required>

            <label for="category">Danh mục:</label>
            <select id="category" name="category" required>
                <option value="app">Ứng dụng</option>
                <option value="game">Game</option>
                <option value="Chứng Chỉ">Chứng Chỉ</option>
                <option value="jaibreak">Jaibreak</option>
            </select>

            <label for="app_image">Ảnh ứng dụng (URL):</label>
            <input type="url" id="app_image" name="app_image" required>

            <label for="modby">Người chỉnh sửa:</label>
            <input type="text" id="modby" name="modby" required>

            <label for="chucnang">Chức năng:</label>
            <textarea id="chucnang" name="chucnang" rows="2" required></textarea>

            <button type="submit">Thêm ứng dụng</button>
        </form>
    </div>
</body>
</html>
