-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2019 at 11:21 AM
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
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description`, `content`, `thumbnail`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(2, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(4, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 2, 1, NULL, NULL),
(5, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL),
(6, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL),
(7, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(8, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 2, 1, NULL, NULL),
(9, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 1, 1, NULL, NULL),
(10, 'Review Cafe Cư Xá', '', 'Gà Phê - Số 7, ngõ 20, Thái Hà, Đống Đa, Hà Nội. Mức giá trung bình : 35.000 - 45.000', '<p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.</p> <video src="https://dlthanh.com/dist/videos/barista_video.mp4?6d614aa9217a3448c597af40d3c84441" controls="controls" class="el-full"></video> <p>Nếu vào giờ cao điểm, lượng khách đông thì sẽ ồn ào và ảnh hưởng khá nhiều đó. Vì thế, nếu bạn tìm đến Gà Phê để học tập, làm việc thì nên chọn những thời điểm vắng, tránh những buổi tối hoặc cuối tuần nhé.</p> <img src="https://dlthanh.com/dist/images/about-gallery-5.jpg?0c2f58fa3d62b46f5d8e869b902470be" alt="" class="el-full"> <p>Không gian ngoài trời rộng, sắp xếp bàn ghế hợp lý hơn, tuy nhiên vào những ngày nắng nóng đây chắc chắn không phải lựa chọn hợp lý của khách. Vì vậy quán sẽ không tận dụng được tối đa không gian của mình. Điều đặc biệt nhất ở Gà Phê có lẽ là sự sáng tạo trong cách decor quán. Với phong cách Industial mặt tường bê tông không sơn, mặt tường thô tạo nên vẻ độc đáo kết hợp với bàn ghế đơn giản, tone giản trắng đen tạo cảm giác hài hòa. Quán cũng có sử dụng thêm những chiếc ghế sofa dài thích hợp cho các bạn tụ tập theo nhóm để trò chuyện, thư giãn. Không gian quán không quá rộng, bàn ghế được sắp xếp khá sát nhau nên khi ồn ào sẽ ảnh hưởng khá nhiều đến những bàn xung quanh đó nhé</p>', 'https://dlthanh.com/dist/images/course-item-1.jpg?836944c3b9b4f57c61fa18c687a36aec', 3, 1, NULL, NULL),
(11, 'Đây là tiêu đề 1-1111111111', 'day-la-tieu-de-1-1111111111', 'Đây là mô tả', '<p class=""><br></p><div class="medium-insert-images"><figure contenteditable="false">\r\n    <img src="http://cms.baristaskill.vn:8080/uploads/321facbf-d1f7-4a66-84d8-6b65b390a289.png" alt="">\r\n        \r\n</figure></div><p>Quán cafe nằm trong con ngõ nhỏ trên trục đường Thái Hà, địa chỉ khá dễ tìm và đường vào rộng rãi. Quán còn có một khu để xe riêng bên cạnh, khá thoải mái và thuận tiện khi gửi. Gà phê chỉ phục vụ từ tầng 2, không gian khu vực order đồ khá nhỏ, quầy bar có thể ngồi được từ 4-5 người. Hành lang tầng 2 có một bảng phần thông báo những món đặc biệt cũng như được phục vụ trong thời gian tới khá đẹp mắt, cách trang trí cũng khiến khách hàng phải đứng lại đọc kĩ từng câu. Lên đến tầng 3 không gian rộng rãi hơn với phía bên ngoài là view ngoài trời, phía bên trong là không gian làm việc tương đối yên tĩnh. Gà Phê được xây dựng là không gian workshop, tuy nhiên các bàn kê tương đối sát nhau và dày, quán không có cách âm và tiếng vang, nếu ít người thì sẽ hợp lý hơn cho các bạn tìm một địa điểm để làm việc hoặc học tập.<br></p><div class="medium-insert-embeds" contenteditable="false">\r\n	<figure>\r\n		<div class="medium-insert-embed">\r\n			<div class="video video-youtube"><iframe width="980" height="551.25" src="//www.youtube.com/embed/kBe0hk5a9s8" frameborder="0" allowfullscreen=""></iframe></div>\r\n		</div>\r\n	</figure>\r\n	<div class="medium-insert-embeds-overlay"></div>\r\n</div><div class="medium-insert-images medium-insert-active"><figure contenteditable="false">\r\n    <img src="http://cms.baristaskill.vn:8080/uploads/248391ae-461a-4b5a-9ffc-7c76df7a35a7.png" alt="">\r\n        \r\n</figure></div><p><br></p>', '5dddc450-0654-4593-9195-9d134278271d.png', 2, 1, '2019-12-19 07:02:22', '2019-12-19 07:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) unsigned NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `date`, `month`, `year`, `label`, `created_at`, `updated_at`) VALUES
(1, 15, 12, 2019, 'Khai giảng lớp pha chế tổng hợp', '2019-12-19 09:19:38', '2019-12-19 10:33:41'),
(2, 30, 12, 2019, 'Khai giảng lớp pha chế tổng hợp', '2019-12-19 09:19:38', '2019-12-19 09:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) unsigned NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '7f139c65-6ef2-4f96-96d7-eb2c52f36d0d.jpg', '2019-12-11 04:00:03', '2019-12-11 04:00:03'),
(2, 'd233fb54-9169-4daf-b201-9be2e5c117fb.png', '2019-12-11 04:00:10', '2019-12-11 04:00:10'),
(3, 'cd8668cb-1fdd-41c8-981e-b4446c6dbe48.png', '2019-12-11 04:02:14', '2019-12-11 04:02:14'),
(4, '8188e4d5-db20-4c4a-824c-7d1bdf05eade.png', '2019-12-11 04:02:17', '2019-12-11 04:02:17'),
(5, '76e7f2a1-c49e-45e4-9c04-ab110735a376.png', '2019-12-11 04:02:59', '2019-12-11 04:02:59'),
(6, '35a92a9b-2d7d-4e86-aef5-a670a63a2810.png', '2019-12-11 04:03:02', '2019-12-11 04:03:02'),
(7, '387d4ec7-cf9c-4f31-97f5-718125d1161e.png', '2019-12-11 21:36:40', '2019-12-11 21:36:40'),
(8, '0ed78092-c7bd-4dd8-92fc-c451f9dfc0e2.png', '2019-12-11 21:36:40', '2019-12-11 21:36:40'),
(9, '4bba9f95-3b1d-400a-a312-b158a838df76.png', '2019-12-11 21:41:14', '2019-12-11 21:41:14'),
(10, '04293e8e-b1a4-4381-ac27-f5e564e67828.png', '2019-12-11 21:42:52', '2019-12-11 21:42:52'),
(11, '24c4da81-70c2-448c-ad89-673177f230c7.png', '2019-12-11 21:54:59', '2019-12-11 21:54:59'),
(12, '2c9a3bd9-2b0e-46f8-9abc-2f3be3e40caa.png', '2019-12-11 22:01:12', '2019-12-11 22:01:12'),
(13, '23abfbfd-335b-4ca6-83ae-299678c9dcf6.png', '2019-12-12 21:02:20', '2019-12-12 21:02:20'),
(14, '15e683c7-b7c9-4f9c-88a5-da87add1de98.png', '2019-12-16 09:10:52', '2019-12-16 09:10:52'),
(15, 'a723aa88-c125-4b56-a06c-fd7812a0bce1.png', '2019-12-16 09:11:21', '2019-12-16 09:11:21'),
(16, '9688b6df-15c5-4eda-b374-3b33e6cdf0a8.png', '2019-12-16 09:12:49', '2019-12-16 09:12:49'),
(17, '11eb3577-06fa-43b4-89ce-be9f59e847e8.png', '2019-12-16 09:17:01', '2019-12-16 09:17:01'),
(18, '19beb123-ab2e-402b-bb59-27bae8b3a66b.png', '2019-12-16 09:17:21', '2019-12-16 09:17:21'),
(19, 'a0ad3af2-ba3b-4507-ac32-1a575ab7faa9.png', '2019-12-16 09:35:44', '2019-12-16 09:35:44'),
(20, 'e3fe2fc0-0e1c-4fba-af10-38a94944ff43.png', '2019-12-16 09:52:13', '2019-12-16 09:52:13'),
(21, '78d88d87-444f-49c9-a6e9-bbfdd00e3969.png', '2019-12-19 06:54:10', '2019-12-19 06:54:10'),
(22, '1e9f8017-8442-443f-ad25-5dc2d8c7c8f9.png', '2019-12-19 06:54:34', '2019-12-19 06:54:34'),
(23, 'e87eaf57-e124-4fb3-9f1a-e0b1df4ac603.png', '2019-12-19 06:55:35', '2019-12-19 06:55:35'),
(24, '321facbf-d1f7-4a66-84d8-6b65b390a289.png', '2019-12-19 07:00:11', '2019-12-19 07:00:11'),
(25, 'c98d87fa-4a56-4d11-b41b-14d515eacf1d.png', '2019-12-19 07:01:53', '2019-12-19 07:01:53'),
(26, 'b630d52c-1cd2-4e41-b2f2-35e8cb84a0f4.png', '2019-12-19 07:19:01', '2019-12-19 07:19:01'),
(27, '6fa2e358-9c3a-4490-b2d5-822e3f9d2470.png', '2019-12-19 07:19:13', '2019-12-19 07:19:13'),
(28, '248391ae-461a-4b5a-9ffc-7c76df7a35a7.png', '2019-12-19 07:19:44', '2019-12-19 07:19:44'),
(29, '5dddc450-0654-4593-9195-9d134278271d.png', '2019-12-19 07:19:47', '2019-12-19 07:19:47'),
(30, '787451e0-9e9a-41a1-a243-590f76f0202e.png', '2019-12-25 09:35:22', '2019-12-25 09:35:22'),
(31, '3c2a668a-02e1-4011-bda0-99e86041485c.png', '2019-12-25 09:37:56', '2019-12-25 09:37:56'),
(32, '4811a80f-4fff-4995-a634-80327ee0957f.png', '2019-12-25 09:38:21', '2019-12-25 09:38:21'),
(33, '46e869f5-4e7e-46f2-b14f-f0fe5f2849b6.png', '2019-12-25 09:39:34', '2019-12-25 09:39:34'),
(34, '3fa745ca-ee24-43ab-b232-abf881839b9d.png', '2019-12-25 09:42:13', '2019-12-25 09:42:13'),
(35, '308a8c6f-4c8d-4449-aef9-aff7a24be9cc.png', '2019-12-25 09:42:55', '2019-12-25 09:42:55'),
(36, '69d4f5c4-d238-4dfd-aea0-2b79cbb49c95.png', '2019-12-25 09:59:04', '2019-12-25 09:59:04'),
(37, '6da0acd7-5b8c-40f2-8a3b-25560f8dfd4b.png', '2019-12-25 10:01:38', '2019-12-25 10:01:38'),
(38, '6c3ac439-c23a-4874-9e51-ea11ae8b4ced.png', '2019-12-25 10:02:38', '2019-12-25 10:02:38'),
(39, 'feba45d7-fa93-4f83-91f3-2670cec198d1.png', '2019-12-25 10:15:06', '2019-12-25 10:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_01_095230_laratrust_setup_tables', 1),
(5, '2019_12_09_095531_create_videos_table', 2),
(8, '2019_12_10_080751_create_articles_table', 3),
(9, '2019_12_11_064234_update_articles_table', 4),
(10, '2019_12_11_084041_create_media_table', 5),
(11, '2019_12_19_145502_create_courses_table', 6),
(12, '2019_12_19_173814_create_subjects_table', 7),
(13, '2019_12_25_150846_update_subjects_table', 8),
(14, '2019_12_25_154904_update_subjects_table', 9),
(15, '2019_12_25_164733_update_subjects_table', 10);

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
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session` tinyint(4) NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `isHome` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `thumbnail`, `quote`, `price`, `session`, `time`, `description`, `short_description`, `video`, `content`, `isHome`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Khóa học tổng hợp', '6c3ac439-c23a-4874-9e51-ea11ae8b4ced.png', 'Thành hay bại của một thương hiệu phụ thuộc 100% vào các Barista', '4.500.000', 6, '3', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'kBe0hk5a9s8', '[{"title":"Ti\\u00eau \\u0111\\u1ec1 1","content":"<p>N\\u1ed9i dung 1<\\/p><p>N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"},{"title":"Ti\\u00eau \\u0111\\u1ec1 2","content":"<p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 1<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"},{"title":"Ti\\u00eau \\u0111\\u1ec1 3","content":"<p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 1<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"},{"title":"Ti\\u00eau \\u0111\\u1ec1 4","content":"<p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 1<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"},{"title":"Ti\\u00eau \\u0111\\u1ec1 5","content":"<p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 1<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"},{"title":"Ti\\u00eau \\u0111\\u1ec1 6","content":"<p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 1<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 2<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 3<\\/p><p style=\\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Geomanist, sans-serif;\\">N\\u1ed9i dung 4<\\/p>"}]', 1, '2019-12-25 10:02:39', '2019-12-25 10:59:12', 0),
(2, 'Khóa học tổng hợp', '6c3ac439-c23a-4874-9e51-ea11ae8b4ced.png', 'Thành hay bại của một thương hiệu phụ thuộc 100% vào các Barista', '4.500.000', 6, '3', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'kBe0hk5a9s8', NULL, 1, '2019-12-25 10:06:04', '2019-12-25 10:06:04', 0),
(3, 'Khóa học tổng hợp', 'feba45d7-fa93-4f83-91f3-2670cec198d1.png', 'Thành hay bại của một thương hiệu phụ thuộc 100% vào các Barista', '4.500.000', 6, '3', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'Bắt kịp xu hướng của tương lai giúp thanh lọc cơ thể, giảm cân, đẹp da giữ dáng', 'kBe0hk5a9s8', NULL, 0, '2019-12-25 10:15:46', '2019-12-25 10:15:46', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `email`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'Owner', 'owner@app.com', '$2y$10$eYxkaHIBlt/7WTEpKk1YaO0z31mq9Ad41BqZ4KAl08RI.YPO.lLze', 0, 'ralCXlsT3nzEgbHICB1C40elDg80ph0lsedxHU6tsy1Wb1AerIH51po3WSrc', '2019-12-06 18:50:13', '2019-12-10 01:01:13'),
(2, 'administrator', 'Administrator', 'administrator@app.com', '$2y$10$88UaPIxSSMZve4hKUIrpFOBzEP2twti0Puwapzd3b7zMh7Gbn3pKS', 1, NULL, '2019-12-06 19:10:24', '2019-12-06 19:10:24'),
(3, 'user', 'User', 'user@app.com', '$2y$10$rTmH/fesaj7hJAQow.jYFuzJvKoig2yl418R25MAK3RbZ25JCWGPW', 2, NULL, '2019-12-06 19:35:58', '2019-12-06 19:35:58'),
(5, 'dlthanh', 'Doan Le Thanh', 'dlthanh@yahoo.com', '$2y$10$jRo.DPAbIGfa8/nmIpvoseLUYGRrINBO9AfjWDaQ5Q6qxRvkZv.5a', 1, NULL, '2019-12-08 17:00:54', '2019-12-08 17:00:54'),
(6, 'dlthanh1', 'Doan Le Thanh', 'dlthanh1@yahoo.com', '$2y$10$Gm6sdpnJNvUOS0zvG0.1gu1qnT159HrjnHTUQ7vG9NXrceOpg1poG', 1, NULL, '2019-12-08 17:01:27', '2019-12-08 17:01:27'),
(9, 'dlthanh2', 'Doan Le Thanh', 'dlthanh2@yahoo.com', '$2y$10$iQkQ/TP0iMn9UQQbzbcBIOY0DEEW3hJXyXOvcfcOC2AOdG7bZz9Qq', 2, NULL, '2019-12-19 07:43:03', '2019-12-19 07:43:03');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
