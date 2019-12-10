-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2019 at 10:56 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `content`, `thumbnail`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(2, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(3, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(4, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 2, 1, NULL, NULL),
(5, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL),
(6, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL),
(7, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(8, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 2, 1, NULL, NULL),
(9, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(10, 'Review Cafe Cư Xá', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_01_095230_laratrust_setup_tables', 1),
(5, '2019_12_09_095531_create_videos_table', 2),
(8, '2019_12_10_080751_create_articles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE IF NOT EXISTS `permission_user` (
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `email`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'Owner', 'owner@app.com', '$2y$10$eYxkaHIBlt/7WTEpKk1YaO0z31mq9Ad41BqZ4KAl08RI.YPO.lLze', 0, 'ralCXlsT3nzEgbHICB1C40elDg80ph0lsedxHU6tsy1Wb1AerIH51po3WSrc', '2019-12-06 18:50:13', '2019-12-10 01:01:13'),
(2, 'administrator', 'Administrator', 'administrator@app.com', '$2y$10$88UaPIxSSMZve4hKUIrpFOBzEP2twti0Puwapzd3b7zMh7Gbn3pKS', 1, NULL, '2019-12-06 19:10:24', '2019-12-06 19:10:24'),
(3, 'user', 'User', 'user@app.com', '$2y$10$rTmH/fesaj7hJAQow.jYFuzJvKoig2yl418R25MAK3RbZ25JCWGPW', 2, NULL, '2019-12-06 19:35:58', '2019-12-06 19:35:58'),
(5, 'dlthanh', 'Doan Le Thanh', 'dlthanh@yahoo.com', '$2y$10$jRo.DPAbIGfa8/nmIpvoseLUYGRrINBO9AfjWDaQ5Q6qxRvkZv.5a', 1, NULL, '2019-12-08 17:00:54', '2019-12-08 17:00:54'),
(6, 'dlthanh1', 'Doan Le Thanh', 'dlthanh1@yahoo.com', '$2y$10$Gm6sdpnJNvUOS0zvG0.1gu1qnT159HrjnHTUQ7vG9NXrceOpg1poG', 1, NULL, '2019-12-08 17:01:27', '2019-12-08 17:01:27'),
(7, 'dlthanh2', 'Doan Le Thanh', 'dlthanh2@yahoo.com', '$2y$10$6OujOKonK3n4uHzWRxzC2OoadOdgcSzpbp3quSlcvzRAdu6foPE4e', 2, NULL, '2019-12-08 17:04:16', '2019-12-08 17:04:16'),
(8, 'dlthanh3', 'Doan Le Thanh', 'dlthanh03@yahoo.com', '$2y$10$FivwTgDju7laCv.vpbybj.pMxB2jEOn4BNC9.1B8YCEiubj6AtwcW', 2, NULL, '2019-12-08 17:04:50', '2019-12-08 17:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `thumbnail`, `embed`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Cách làm cà phê sữa hạnh nhân', 'Một ly cafe sữa nóng hoặc lạnh kết hợp với hạnh nhân sẽ là thức uống hoàn hảo khởi đầu ngày mới tràn đầy năng lượng.', 'http://i3.ytimg.com/vi/kBe0hk5a9s8/maxresdefault.jpg', 'kBe0hk5a9s8', 1, '2019-12-09 13:01:11', '2019-12-09 13:01:58'),
(3, 'Tạo hình Latte art từ cơ bản đến nâng cao cùng chuyên gia!', 'Mỗi ly cafe là một tác phẩm nghệ thuật, và người pha chế - nhất định là một nghệ sĩ.', 'http://i3.ytimg.com/vi/mN_sioSlRMI/maxresdefault.jpg', 'mN_sioSlRMI', 1, '2019-12-09 13:07:41', '2019-12-09 13:07:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
