<?php
// Kết nối đến cơ sở dữ liệu và bắt đầu phiên làm việc
require_once 'config/init.php';

// Tiêu đề trang
$pageTitle = "Giới thiệu - FastFeed";

// Bao gồm header
include 'includes/header.php';
?>

<!-- Trang giới thiệu -->
<div class="container main-container">
    <div class="section-title">
        <h2>GIỚI THIỆU</h2>
    </div>

    <div class="about-container bg-light p-4 rounded shadow-sm mb-4">
        <div class="about-section mb-5 fade-in">
            <h2 class="text-center text-primary mb-4">GIỚI THIỆU</h2>
            <p><strong>FastFeed</strong> là một blog cá nhân được tạo ra với mục tiêu mang đến những <strong>bài đánh
                    giá chân thực, gần gũi và không thiên vị</strong> về các <strong>món ăn nhanh</strong> - từ những chuỗi
                cửa hàng lớn cho đến các quán nhỏ ít người biết tới.
                <br>
                Tại FastFeed, mình chia sẻ cảm nhận của bản thân sau mỗi lần thưởng thức món ăn,
                từ hương vị, giá cả, đến trải nghiệm dịch vụ. Tất cả nội dung đều được viết từ góc
                nhìn cá nhân, <strong>không nhận tài trợ, không quảng cáo trá hình,</strong> và không bị chi phối
                bởi bất kỳ thương hiệu nào. Với mình, điều quan trọng nhất khi viết review là <strong>trung
                    thực và rõ ràng</strong>, để người đọc có thể tự tin tham khảo và đưa ra lựa chọn phù hợp.
            </p>
        </div>

        <div class="about-section mb-5 fade-in">
            <h2 class="text-center text-primary mb-4">Lý do mình tạo nên FastFeed</h2>
            <p>Là một người yêu thích đồ ăn nhanh, mình luôn tò mò và hào hứng mỗi khi có món mới ra mắt. Nhưng khi tìm kiếm thông tin, mình nhận ra rằng phần lớn các bài review hiện nay thường mang tính quảng bá nhiều hơn là chia sẻ thật lòng. Điều này khiến mình không biết nên tin vào đâu, và từ đó nảy ra ý tưởng:</p>

            <blockquote class="blockquote text-center my-4">
                <p class="mb-0">"Tại sao không tự viết lại những trải nghiệm của chính mình - một cách thật thà, mộc mạc và không màu mè?"</p>
            </blockquote>

            <p>FastFeed ra đời từ chính sự <strong>đam mê ẩm thực và mong muốn xây dựng một không gian nhỏ để lan tỏa góc nhìn thật</strong> - nơi người đọc có thể tìm được thông tin tin cậy và khách quan về những món ăn nhanh quen thuộc mỗi ngày.</p>
        </div>

        <div class="about-section mb-5 fade-in">
            <h2 class="text-center text-primary mb-4">Không gian cởi mở cho tất cả mọi người</h2>
            <p>Dù đây là một blog cá nhân, nhưng mình luôn lắng nghe và trân trọng mọi ý kiến đóng góp từ người đọc. FastFeed không hướng đến sự chuyên nghiệp hào nhoáng, mà chú trọng vào <strong>chất lượng nội dung và sự kết nối thật sự với người yêu ẩm thực</strong>.</p>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>