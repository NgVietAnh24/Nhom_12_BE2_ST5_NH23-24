-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2024 lúc 02:31 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `linkfb` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `linkcopyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `logo`, `phone`, `email`, `address`, `linkfb`, `copyright`, `linkcopyright`, `created_at`, `updated_at`) VALUES
(1, 'image.png', '0898732404', 'anh2442004@gmail.com', '60 Linh Trung, Thu Duc City, HCM City', 'facebook.com', 'copyright', 'link copyright', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Diql-8cd35-banner_tintuc.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort_name`, `active`, `created_at`, `updated_at`) VALUES
(8, 'Kinh doanh', 'kinh-doanh', 1, NULL, '2024-04-24 16:34:18'),
(9, 'Pháp luật', 'pha-p-lua-t', 1, NULL, NULL),
(11, 'Thể thao', 'the-thao', 0, NULL, '2024-04-24 17:36:23'),
(13, 'Sức khỏe', 'suc-khoe', 1, '2024-04-24 16:53:16', '2024-04-24 16:53:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `news_id`, `active`, `content`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 1, 'Hello World', NULL, NULL),
(3, 3, 14, 1, 'a', NULL, NULL),
(4, 3, 14, 1, 'b', NULL, NULL),
(5, 2, 9, 1, 'abc', NULL, NULL),
(6, 1, 15, 1, 'Đánh giá như nào ?', NULL, NULL),
(7, 2, 15, 1, 'Tệ nạn', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_25_002417_create_banners_table', 1),
(6, '2021_05_25_002437_create_categories_table', 1),
(7, '2021_05_25_002503_create_subcategories_table', 1),
(8, '2021_05_25_002519_create_news_table', 1),
(9, '2021_05_25_002536_create_comments_table', 1),
(10, '2021_05_25_002553_create_pages_table', 1),
(11, '2021_06_19_050917_create_abouts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `sort_title`, `image`, `type`, `link`, `summary`, `content`, `index`, `view`, `category_id`, `subcategory_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(21, 'Thái Lan thắng ngược dù bị hai thẻ đỏ ở futsal châu Á', 'thai-lan-thang-nguoc-du-bi-hai-the-do-o-futsal-chau-a', 'ztIv-435504634-1869848346809340-879-4964-7163-1713965833.jpg', 1, NULL, 'THÁI LANBị dẫn 0-2 và hai lần đá thiếu người, nhưng Thái Lan vẫn thắng ngược Iraq 3-2 ở tứ kết giải vô địch futsal châu Á 2024, tối 24/4.', '<p>THÁI LANBị dẫn 0-2 và hai lần đá thiếu người, nhưng Thái Lan vẫn thắng ngược Iraq 3-2 ở tứ kết giải vô địch futsal châu Á 2024, tối 24/4.</p><p>Thái Lan hiện đứng thứ 28 FIFA - hơn Iraq 10 bậc, và toàn thắng đối thủ vùng Vịnh qua ba lần chạm trán gần nhất. Một chiến thắng nữa khi tái ngộ tại nhà thi đấu Hua Mark, Bangkok sẽ giúp Thái Lan vào bán kết, đồng nghĩa với vé dự VCK futsal World Cup.</p><p>Vì thế, người hâm mộ nước này đến chật kín các khán đài, tiếp sức cho đội nhà.</p><p>Tuy nhiên, khi còn chưa thể hiện được ưu thế, Thái Lan đã thủng lưới ngay phút thứ 3. Sau khi cướp bóng, tiền đạo (pivo) Salim Faisal dẫn thêm hai nhịp rồi chích mũi giày làm bó tay thủ thành Arut.</p><figure class=\"image\"><img src=\"https://i1-thethao.vnecdn.net/2024/04/24/435504634-1869848346809340-879-4964-7163-1713965833.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ocdrPRd0Wp4-e3vv3JkJew\" alt=\"Hậu vệ Iraq ngăn một nỗ lực dứt điểm của cầu thủ Thái Lan. Ảnh: AFP\"></figure><p>&nbsp;</p><p>Hậu vệ Iraq ngăn một nỗ lực dứt điểm của tiền đạo Thái Lan Muhammad. Ảnh: <i>AFC.</i></p><p>Thái Lan không nôn nóng. Đội futsal số một Đông Nam Á bình tĩnh tổ chức tấn công, phối hợp biến hóa. Nhưng các chân sút Muhammad rồi Apiwat đều không thể thắng được thủ môn Iraq, hoặc bị xà ngang từ chối.</p><p>Trong khi đó, sau khi dẫn bàn, Iraq càng nguy hiểm với lối chơi phòng ngự phản công. Phút 16, sau khi hóa giải cơ hội của đối thủ, thủ môn Thái Lan Senbat dẫn bóng lên giữa sân. Nhưng thay vì phát động tấn công nhanh, anh lại chuyền ngược về cho đồng đội. Sulaiman bắt bài, cướp bóng rồi sút vào lưới trống nhân đôi cách biệt cho Iraq.</p><p>Hai phút sau, Thái Lan rút ngắn xuống còn 1-2 bằng pha phối hợp đá phạt biến hóa để Janphon sút căng tung lưới Iraq. Khi hy vọng vừa được nhen nhóm, Thái Lan phải chơi thiếu người khi hiệp đấu chỉ còn 1 phút 8 giây. Từ tình huống phá hụt bóng, Apiwat đá thẳng vào mặt đối thủ, và bị phạt thẻ đỏ. Chủ nhà vất vả để trụ vững đến hết hiệp.</p><p>Đầu hiệp hai, khi đang chơi hay để tìm bàn gỡ, Thái Lan lại mất người sau cú đạp của Muhammad vào chân đối phương. Trọng tài không phát hiện, nhưng vì Iraq khiếu nại, ông xem lại video và phạt thẻ vàng thứ hai, đuổi Muhammad. Một lần nữa, Thái Lan lại đứng vững trong hai phút chơi thiếu người.</p><p>Theo luật futsal, khi nhận thẻ đỏ, cầu thủ phải rời sân và đội bóng của họ phải chơi với bốn người, bao gồm thủ môn, trong hai phút. Khác với bóng đá sân cỏ 11 người, hết hai phút này, đội mất người sẽ đưa cầu thủ khác vào sân để tiếp tục chơi với năm người. Nhưng trong lúc mất người, nếu có bàn thắng được ghi, đội thiếu người có thể tung cầu thủ vào sân mà không phải chờ hết thời gian phạt hai phút.</p><p>Vượt qua những thời khắc khó khăn từ hai lần phải đá thiếu người, Thái Lan bình tĩnh tấn công, rồi gỡ 2-2 ở phút 31, vẫn nhờ công Janphon.</p><p>Từ việc dẫn hai bàn, hai lần được chơi hơn người, Iraq đánh rơi mọi lợi thế. Điều này khiến họ nôn nóng vùng lên ở những phút cuối. Dù đang có tỷ số hòa, đội khách quyết định chơi power-play khi trận đấu còn tới hơn bảy phút. Canh bạc mạo hiểm này khiến họ trả giá ở phút 39. Từ pha chống tấn công và cướp bóng bên sân nhà, Therdsak xoay người sút bóng từ xa vào lưới trống nâng tỷ số lên 3-2.</p><p>Trong khoảng một phút còn lại, Iraq suýt gỡ hòa, nhưng bóng đi trúng xà ngang. Thái Lan lẽ ra cũng có thể gia tăng cách biệt, nhưng thủ môn Iraq xuất thần cản phá.</p><figure class=\"image\"><img src=\"https://i1-thethao.vnecdn.net/2024/04/24/435236718-3595691034075329-989-9004-8594-1713965833.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xmp9bT1NQA2KCWrl5MElLA\" alt=\"Các tuyển thủ futsal Thái Lan mừng sau khi nâng tỷ số lên 3-2 trong trận đấu Iraq tại Hua Mark, Bangkok tối 24/4. Ảnh: AFC\"></figure><p>Các tuyển thủ futsal Thái Lan mừng sau khi nâng tỷ số lên 3-2 trong trận đấu Iraq tại Hua Mark, Bangkok tối 24/4. Ảnh: <i>AFC</i></p><p>Chiến thắng 3-2 giúp Thái Lan vào bán kết, đồng thời giành vé đi World Cup. Tuy nhiên, họ sẽ không thể sử dụng hai ngôi sao Muhammad và Apiwat ở trận đấu tiếp theo.</p><p>Trước đó, Tajikistan thắng Afghanistan 2-1, còn Iran hạ Kyrgyz 6-1 để giành hai vé đầu tiên dự Wolrd Cup.</p><p>Trận tứ kết còn lại diễn ra lúc 21h hôm nay giữa Việt Nam và Uzbekistan. Nếu thắng, Việt Nam sẽ giành vé thứ tư đi World Cup. Ngược lại, nếu thua, thầy trò Diego Giustozzi phải chơi các trận play-off.</p><p>VCK futsal châu Á 2024 diễn ra tại Thái Lan từ ngày 17 đến 28/4 với 16 đội tuyển hàng đầu châu lục. Bốn đội có thành tích tốt nhất sẽ giành vé dự FIFA futsal World Cup 2024 tại Uzbekistan. Trong trường hợp Uzbekistan vào bán kết, bốn đội thua ở tứ kết sẽ thi đấu vòng play-off để xác định suất thứ năm của châu Á. Việt Nam từng dự World Cup 2016 và 2020.</p>', 1, 0, 11, 11, 5, 1, '2024-04-24 16:32:40', '2024-04-24 16:32:40'),
(22, 'Lập mưu \'diệt trừ\' vợ sau khi bị đánh ghen', 'lap-muu-diet-tru-vo-sau-khi-bi-danh-ghen', 'RvnR-0df3657131b8488482e7154fa67927-4421-6669-1712676202.jpg', 1, NULL, 'TRUNG QUỐCVợ kiên quyết không ly hôn, đến chỗ làm đánh ghen khiến nhân tình bị đuổi đi nên Ngụy Phi Hưng tức giận thuê người sát hại.', '<p>TRUNG QUỐCVợ kiên quyết không ly hôn, đến chỗ làm đánh ghen khiến nhân tình bị đuổi đi nên Ngụy Phi Hưng tức giận thuê người sát hại.</p><p>Hơn 2h ngày 24/7/1988, hàng xóm nghe thấy tiếng chó sủa, tiếng kêu la thấp thoáng phát ra từ nhà của gia đình Ngụy Phi Hưng ở thành phố Lai Vu, tỉnh Sơn Đông. Biết Hưng đang đi làm ở tỉnh khác, chỉ có vợ anh ta là Dương Đồng Quế cùng con trai 12 tuổi ở nhà, hàng xóm vội vã sang kiểm tra.</p><p>Gõ cửa nhiều lần không thấy ai đáp lại, họ dùng gậy phá cửa sổ, rọi đèn pin thì phát hiện Quế nằm trong vũng máu trên sàn, khóa quần bị kéo tụt, vẫn còn thoi thóp. Cảnh sát nhanh chóng có mặt đưa nạn nhân đi bệnh viện cấp cứu và điều tra hiện trường.</p><p>Vợ chồng Hưng mới xây lại nhà nhờ kiếm được nhiều tiền sau khi mở xưởng dệt bao bì chỉ cách nhà 300 m. Hiện trường vụ án là căn phòng ở phía đông. Những dấu máu vương vãi cho thấy Quế bị đánh bằng hung khí cùn trong lúc không phòng bị. Khóa quần bị kéo xuống nhưng nạn nhân không bị xâm hại.</p><p>Trong nhà không có dấu hiệu bị lục lọi, đồ đạc có giá trị còn nguyên vẹn, sổ tiết kiệm trị giá 1.700 nhân dân tệ vẫn ở trong ngăn kéo đầu giường. Vì vậy, cảnh sát loại trừ giả thuyết kẻ cướp đột nhập gây án.</p><p>Điều đáng ngờ là nhà Hưng có con chó dữ nặng hơn 40 kg, Quế thường thả chó trong sân để trông nhà, nhưng đêm qua cô lại nhốt nó vào cũi. Nhà họ có tường cao, xung quanh không có dấu vết leo trèo.</p><p>Khi điều tra hiện trường, cảnh sát tìm thấy vỏ trứng còn mới, chất đống trước bếp lò. Sau khi phục hồi, tổng cộng có 14 quả trứng. Trong chảo trên bếp còn dư ít nước luộc trứng. Ngoài ra, trong phòng còn có một chiếc bát sứ đựng trứng chần để cạnh ghế sofa, kỳ lạ là trên đó không có dấu vân tay.</p><p>Con trai nạn nhân kể rằng vào tối 23/7, hai mẹ con ăn cơm với món trứng xào ớt chuông, cậu bé thấy mẹ đập hai quả trứng và ném vỏ trước bếp lò. Sau bữa tối, họ xem phim trên tivi rồi khóa cửa đi về căn phòng phía tây bắc, trải chiếu ngủ. Trong khoảng thời gian này không có ai khác đến nhà. Cậu bé còn cho biết nhà có hai chìa khóa, bố mẹ mỗi người cầm một chiếc.</p><p>Vì phim chiếu hết lúc 22h50, cảnh sát suy đoán thời điểm Quế bị hại là từ 22h50 ngày 23/7 đến khoảng 2h ngày 24/7, món trứng chần được làm trong thời gian này. Điểm đáng ngờ khác là ban đầu Quế ngủ trong phòng phía tây bắc, nhưng sau đó lại đến phòng phía đông và bị tấn công tại đây.</p><p>Cảnh sát tập trung điều tra chồng nạn nhân là Hưng, 43 tuổi. Hưng kết hôn với Quế qua mai mối cách đây 13 năm, mối quan hệ vợ chồng ban đầu khá tốt đẹp nhưng đột ngột căng thẳng kể từ mùa đông 1986. Hưng đã nhiều lần đệ đơn ly hôn, nguyên nhân được cho là do anh ta có quan hệ ngoài luồng với Kỳ Tú Quyên, nữ kế toán trong xưởng dệt.</p><p>Khoảng một tháng trước, Quế hai lần nảy sinh xung đột lớn với Quyên, khiến Quyên bị buộc nghỉ việc ở xưởng vào ngày 5/7. Chín ngày trước, tức 15/7, Hưng bảo tài xế chở đến Thượng Hải mua máy móc. Tài xế và những người khác làm chứng rằng Hưng rời Thượng Hải vào 19/7, nói rằng sẽ đến tỉnh Chiết Giang bàn chuyện làm ăn. Đến nay anh ta vẫn chưa trở về.</p><p>Các manh mối hiện có đều liên quan đến mâu thuẫn giữa nạn nhân, Hưng và Quyên. Sau khi phân tích, cảnh sát cho rằng vụ Quế bị hại rất có thể liên quan đến việc Hưng \"có mới nới cũ\", muốn ly hôn. Xét theo mức độ quen thuộc hiện trường, hung thủ có thể là bạn bè thân thiết của Hưng và Quế, không loại trừ khả năng chính Hưng ra tay.</p><p>Tuy nhiên, sáng 25/7, cảnh sát xác thực Hưng đang ở Chiết Giang. Đội điều tra chuyển mục tiêu sang Quyên để tìm điểm đột phá.</p><p>Quyên, 18 tuổi, đến làm việc tại xưởng dệt của Hưng vào đầu mùa hè 1986. Chẳng bao lâu sau, Quyên được Hưng tin tưởng cho làm kế toán. Trong khoảng thời gian sau khi bị đuổi khỏi xưởng vào 5/7 cho tới trước khi Hưng rời quê, Quyên nhiều lần lẻn vào xưởng tình tự với Hưng.</p><p>Sáng 26/7, Quyên bị triệu tập để điều tra. Cô khai nhận có quan hệ ngoài luồng với Hưng từ đầu mùa xuân 1987. Kể từ đó, Quyên cùng Hưng và Mạnh Khánh Huy (19 tuổi, làm việc trong xưởng của Hưng) nhiều lần âm mưu sát hại Quế.</p><p>Quyên cung cấp manh mối quan trọng: Khoảng 20 ngày trước khi Quế bị hại, cũng là ngày thứ hai sau cuộc xung đột lớn thứ hai giữa Quyên và Quế, Hưng đến ngân hàng rút 4.000 nhân dân tệ tiền mặt và đưa cho Huy 1.000 nhân dân tệ trước mặt Quyên, bảo anh ta tìm \"chú Bảy\" giết Quế ngay lập tức, 3.000 nhân dân tệ còn lại giao cho Quyên giữ.</p><p>Đêm 14/7, một ngày trước khi rời quê, Hưng bí mật đến tìm Quyên dặn dò: Sau khi xong việc, nếu Huy đòi tiền thì đưa 3.000 nhân dân tệ cho hắn.</p><p>Sau lời khai của Quyên, Huy lập tức bị bắt tại xưởng dệt.</p><p>Huy cho biết đến làm việc tại xưởng của Hưng vào tháng 5/1987. Nhờ chăm chỉ, tháo vát, Huy được Hưng đánh giá cao và cũng được Quế tin tưởng. Sáng 24/7, khi nghe tin Quế bị tấn công nhưng chưa chết, hắn hoảng hốt định bỏ trốn nhưng rồi quyết định đợi Hưng về. Huy ở lại với lý do trông coi xưởng. Khi bị bắt, hắn hối hận vì tính toán sai lầm.</p><p>Cùng lúc đó, cảnh sát nhận được điện báo Hưng gửi từ Chiết Giang về sau khi hay tin vợ bị hại, nói sẽ lập tức trở về. Đội điều tra nhận định Hưng chưa biết vợ sống hay chết, không biết đồng bọn đã bị bắt nên nhiều khả năng anh ta sẽ trở về để thăm dò tình hình. Vì vậy, cảnh sát bí mật giăng lưới chờ nghi phạm.</p><p>Chiều 27/7, Hưng bị bắt ngay khi vừa bước vào cửa xưởng dệt.</p><p>Tuy nhiên, theo phân tích hiện trường, tấn công Quế chắc chắn không chỉ có một người. Họ chỉ biết Huy đã chuyển 1.000 nhân dân tệ cho \"chú Bảy\", nhưng hắn khăng khăng một mình gây án, \"chú Bảy\" chỉ là cái tên để gạt Hưng, chiếm tiền cho riêng mình.</p><p>Theo lời khai của Huy, cảnh sát thu thập được đôi giày vải màu đen, găng tay và chiếc khăn cũ dính máu mà hắn dùng khi gây án từ bãi rác của thôn. Hung khí không có ở đây.</p><p>Chiều 28/7, Huy bị thẩm vấn lần hai. Hắn chỉ lặp lại lời khai cũ, khi thì lảng tráng câu hỏi, khi giả vờ điên dại, nhất quyết không khai ra đồng phạm. Nhưng sau quá trình đấu tranh tâm lý, Huy bắt đầu run rẩy, đổ mồ hôi, thú nhận tất cả vào rạng sáng 29/7.</p><p>Mạnh Khánh Cường, 17 tuổi, em trai Huy, bị bắt vào chiều 30/7. Hung khí được tìm thấy tại nhà Cường là một thanh sắt dài 30 cm, đường kính 2 cm, và chiếc áo khoác trắng cộc tay dính máu nạn nhân mà Huy mặc khi gây án. Kế hoạch và quá trình phạm tội cũng được hai anh em khai rõ.</p><p>Hưng âm mưu giết vợ từ lâu. Người đàn ông trung niên này chỉ cao hơn 1,5 m, ngoại hình thô kệch, cậy có tiền nên hay chơi bời lăng nhăng. Trước khi gặp Quyên, anh ta đã nhiều lần ngoại tình với phụ nữ khác.</p><p>Đầu hè 1986, sau khi Quyên được giới thiệu vào làm việc trong xưởng dệt, Hưng ép buộc, dụ dỗ cô trở thành nhân tình. Anh ta giao sổ sách cho Quyên quản lý, thu xếp chỗ ở cho người tình ngay trong xưởng, sau đó đề nghị ly hôn.</p><p>Tuy nhiên, áp lực từ gia đình, dư luận và quyết tâm không ly hôn của Quế khiến mộng đẹp được tái hôn với thiếu nữ tươi trẻ của Hưng không thành hiện thực. Vì vậy, anh ta quyết định giết vợ. Để tránh bị nghi ngờ, Hưng định bỏ tiền thuê Huy gây án theo kế hoạch anh ta vạch sẵn nhưng chưa có cơ hội.</p><p>Ngày 3-4/7/1988, Quế đến xưởng đánh ghen, cãi vã ầm ĩ với Quyên khiến cô ta bị đuổi đi. Việc này càng củng cố quyết tâm giết vợ của Hưng. Ngay hôm sau, anh ta đi rút tiền, thúc giục Huy gây án. Để có bằng chứng ngoại phạm, Hưng lấy cớ đi tỉnh khác bàn chuyện làm ăn và giao chìa khóa nhà cho Huy.</p><p>Quế không hay biết về âm mưu của chồng, Quyên và Huy. Cô chỉ hận Quyên vì bị cướp chồng, gia đình tan vỡ. Quế từng nhờ Huy: \"Em giúp chị dạy cho Quyên một bài học, để cô ta không dám quyến rũ Hưng nữa, chị sẽ cho em tiền\". Vốn có mưu đồ riêng, Huy đồng ý. Sau khi Hưng rời quê, Huy lấy cớ bàn chuyện này để đến nhà tìm Quế vài lần.</p><p>Tối 21/7, Huy và Cường lừa Quế rằng Quyên lại đến xưởng để rủ cô đi cùng đánh ghen, muốn loại bỏ cô trên đường. Tuy nhiên, hai anh em không dám ra tay vì tình cờ đụng mặt một người quen. Huy để lại thanh sắt mang theo ở nhà Hưng, hai bên hẹn nhau hôm khác.</p><p>Đêm 24/7, anh em Huy đến căn phòng phía đông theo hẹn. Quế nhốt chó rồi khóa cửa lại. Khi biết hai người chưa ăn tối, cô vào bếp chần 12 quả trứng cho họ. Quế nói: \"Ăn no thì dạy dỗ Quyên cho chị, nhưng không thể làm người ta bị thương\".</p><p>Ăn xong, anh em Huy dùng găng tay lau sạch bên ngoài bát, không để lại dấu vân tay. Nhân lúc Quế không chú ý, Huy và Cường đã tấn công. Thấy Quế bất tỉnh, Huy còn kéo khóa quần để ngụy tạo thành vụ hiếp dâm, giết người. Cả hai chạy khỏi hiện trường bằng chìa khóa Hưng đưa. Ngày hôm sau, Huy giục em trai chạy trốn đi nơi khác.</p><p>Quế bị đánh nứt hộp sọ, chấn thương sọ não, hôn mê sâu suốt ba tháng nhưng vẫn sống sót như kỳ tích, dẫu bị tàn phế suốt đời.</p><p>Ngày 29/7/1989, Hưng và Huy nhận án tử hình vì tội cố ý giết người, thi hành án ngay lập tức. Cường và Quyên cũng phải nhận hình phạt thích đáng.</p><p><strong>Tuệ Anh</strong> (Theo <i>Toutiao</i>)</p>', 1, 0, 9, 8, 5, 1, '2024-04-24 16:37:43', '2024-04-24 16:37:43'),
(23, 'Đột ngột mất thị lực do phình động mạch não', 'dot-ngot-mat-thi-luc-do-phinh-dong-mach-nao', '3kTL-img-2238-jpg-1713946719-171394-3132-8236-1713946757.jpg', 1, NULL, 'HÀ NỘIBệnh nhận nữ 41 tuổi, đột ngột mất thị lực do khối phình động mạch não khổng lồ, vừa được các bác sĩ phẫu thuật cứu sống.', '<p>HÀ NỘIBệnh nhận nữ 41 tuổi, đột ngột mất thị lực do khối phình động mạch não khổng lồ, vừa được các bác sĩ phẫu thuật cứu sống.</p><p>Bệnh nhân quê Quảng Bình, làm nghề giáo viên, thấy mắt mờ, đi khám ở bệnh viện địa phương, được chẩn đoán mắc bệnh về mắt, điều trị không đỡ. Cuối năm ngoái, kết quả chụp MRI ở Bệnh viện Trung ương Huế, phát hiện phình mạch khổng lồ động mạch cảnh trong.</p><p>Bệnh nhân đã được đặt stent tại Huế nhưng kích thước túi phình vẫn tiếp tục tăng lên. Sau khi thăm khám tại nhiều cơ sở y tế, người bệnh được điều trị nội khoa trong khoảng 3 tháng nhưng chưa có tiến triển, hai mắt dần mất thị lực.</p><p>Khám tại Bệnh viện Việt Đức, bệnh nhân có khối phồng dọa vỡ, chèn thị giác khiến mắt trái mù hoàn toàn, mắt phải chỉ còn 2/10. \"Đây là một trong số những ca bệnh nặng và khó trong điều trị bệnh lý phình động mạch cảnh\", TS Dương Đức Hùng, Giám đốc Bệnh viện Việt Đức, nói hôm 24/4, thêm rằng hiếm bệnh nhân nào có khối phồng to, chèn mất thị lực như này mà chưa vỡ.</p><p>Các chuyên gia khoa Phẫu thuật Thần kinh 2 đã hội chẩn và quyết định mổ, điều trị bằng phương pháp phẫu thuật bắc cầu động mạch, tạo hình động mạch cảnh trong. Cụ thể, để cắt khối phình, các bác sĩ phải khóa 2 chiều động mạch, song việc này sẽ dẫn đến nguy cơ thiếu máu não. Khi đó, bác sĩ phải bắc cầu động mạch, nhằm giúp máu lưu thông lên não. Sau khi cắt được khối phình, các bác sĩ khâu nối lại động mạch. Ca phẫu thuật kéo dài 6 tiếng đồng hồ, thành công.</p><p>Hiện, sau hai tuần phẫu thuật, tình trạng bệnh nhân ổn định, có thể tự đi lại, thị lực đã hồi phục tốt.</p><figure class=\"image\"><img src=\"https://i1-suckhoe.vnecdn.net/2024/04/24/img-2238-jpg-1713946719-171394-3132-8236-1713946757.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=fgPxIMxN-R-umqd7Uct5wA\" alt=\"Đột ngột mất thị lực do phình động mạch não\"></figure><p>Phình động mạch não là hiện tượng thành của mạch máu ở trong não bị phồng lên. Các phình động mạch não nhỏ thường không gây ra triệu chứng. Song, nếu túi phình to lên có thể gây chèn ép não khiến bệnh nhân đau đầu, mờ mắt hoặc mất thị lực. Phình động mạch não có thể bị dò hoặc vỡ, gây ra đau đầu dữ dội và đột ngột. Vỡ phình động mạch não là tình trạng rất nghiêm trọng và nguy hiểm, đe doạ tính mạng và cần phải được điều trị đúng và kịp thời.</p><p>Phình mạch khổng lồ chiếm 20% trong tổng số phình mạch não, nếu không được can thiệp, xử lý kịp thời nguy cơ vỡ cao lên đến 25%. Điều trị phình động mạch cảnh não có 2 phương pháp là can thiệp nội mạch hoặc điều trị phẫu thuật.</p><p>Bệnh phình mạch máu não được ví như một kẻ giết người thầm lặng. Tùy theo mỗi giai đoạn khác nhau mà bệnh sẽ có những biểu hiện triệu chứng khác nhau như tê bì, yếu liệt nửa người, đau đầu chóng mặt, giảm thị lực... Giai đoạn khi túi phình bị vỡ có thể gây nên tình trạng xuất huyết mạch máu não hường gặp với các biểu hiện đau đầu đột ngột và dữ dội; rối loạn hoặc mất ý thức.</p>', 1, 0, 13, 20, 5, 1, '2024-04-24 16:54:38', '2024-04-24 16:56:47'),
(24, 'Giới trẻ Hàn Quốc đổ xô mua vàng mini khi giá tăng', 'gioi-tre-han-quoc-do-xo-mua-vang-mini-khi-gia-tang', '4kKE-Screenshot-2024-04-24-155700-4310-1713949230.png', 1, NULL, 'Loại vàng nặng 1 gram đang bán chạy tại Hàn Quốc, khi giá kim loại quý tại đây lập đỉnh mới vào tuần trước.', '<p>Loại vàng nặng 1 gram đang bán chạy tại Hàn Quốc, khi giá kim loại quý tại đây lập đỉnh mới vào tuần trước.</p><p>Trong góc một cửa hàng tiện lợi GS25 ở quận Gangnam (Seoul, Hàn Quốc) hôm 15/4, Oh - một nhân viên văn phòng 28 tuổi - chọn mua vàng từ chiếc máy tự động. Sau quá trình xác minh và thanh toán nhanh chóng, một miếng vàng nhỏ kích thước bằng móng tay được máy nhả ra.</p><p>Chiếc máy này có nhiều lựa chọn, từ 0,5 gram (0,02 ounce), 3,75 gram đến 11,25 gram. Tuy nhiên, Oh chọn mua 1 gram. Số vàng này có giá 160.000 won (116 USD).</p><p>\"Tôi thường mua 3,75 gram mỗi tháng. Nhưng lần này chỉ mua loại 1 gram vì giá đang tăng vọt. Mua ở đây tiện hơn, không phải ra cửa hàng trang sức\", Oh nói.</p><p>Oh là một trong rất nhiều người trẻ Hàn Quốc đang chuyển sang đầu tư vàng, khi khối lượng giao dịch và giá kim loại quý đều lập đỉnh.</p><p>Lạm phát cao dai dẳng và xung đột leo thang tại Trung Đông khiến nhà đầu tư Hàn Quốc đổ xô mua công cụ trú ẩn. Những người ít tiền như Oh cũng tham gia làn sóng này, dù chỉ mua những miếng vàng nhỏ.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2024/04/24/Screenshot-2024-04-24-155700-4310-1713949230.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K6VOxZ_BBtGwphFMrJddyA\" alt=\"Máy bán vàng tự động tại một cửa hàng GS25 tháng 9/2022. Ảnh: Korea JoongAng Daily\"></figure><p>&nbsp;</p><p>Máy bán vàng tự động tại một cửa hàng GS25 tháng 9/2022. Ảnh: <i>Korea JoongAng Daily</i></p><p>Giá vàng tại Hàn Quốc hôm 20/4 lên kỷ lục 456.000 won với mỗi 3,75 gram, theo Sàn giao dịch Vàng Hàn Quốc. Hôm 21/4, kim loại quý lùi về 448.000 won. Dù vậy, tính chung từ đầu năm, giá tại đây tăng hơn 20%.</p><p>Khối lượng giao dịch cũng tăng, đạt 16,5 tỷ won trong 19 ngày đầu tháng 4. Đây là mức cao nhất 10 năm qua.</p><p>Một nguyên nhân khác khiến giá tăng vọt là nhà đầu tư trẻ ngày càng coi kim loại quý là công cụ trú ẩn an toàn. Họ chủ yếu mua loại 1-3,75 gram qua kênh trực tuyến hoặc từ các máy bán hàng tự động trong cửa hàng tiện lợi.</p><p>Theo Công ty In ấn và Đúc tiền Hàn Quốc, doanh số bán loại 1 gram trở xuống tăng 68% trong quý đầu năm nay so với cùng kỳ năm ngoái.</p><p>\"Phần lớn khách hàng dùng máy bán vàng tự động ở độ tuổi 20-30, chiếm 52% số người mua\", người phát ngôn của GS25 cho biết.</p><p>CU - một chuỗi cửa hàng tiện lợi khác - cũng bán vàng kích cỡ nhỏ. Từ khi mở bán ngày 1/4, họ tiêu thụ 42% số vàng trong 15 ngày. Loại 1 gram cháy hàng sau 2 ngày.</p><p>Các sản phẩm khác nhắm vào giới trẻ cũng hút khách. Thương hiệu trang sức Soo&amp;Jin Gold bán trực tuyến \"hạt đậu vàng nguyên chất\" nặng 1 gram. 12.000 sản phẩm được bán ra kể từ tháng 4/2023 đến nay.</p><p>\"Những người trong độ tuổi 20 chiếm 20% khách hàng của chúng tôi\", người phát ngôn của Soo&amp;Jin Gold cho biết.</p><p>Lee Eun-hee - Giáo sư Khoa học tiêu dùng tại Đại học Inha nhận định việc gom mua vàng loại 1 gram sẽ không giúp người trẻ giàu ngay. Tuy nhiên, xu hướng này cho thấy thế hệ trẻ phản ứng với biến động thị trường theo cách vừa với túi tiền của họ.</p><p>Trên thế giới, kim loại quý liên tiếp lập đỉnh 2 tháng. Hồi đầu tháng, căng thẳng địa chính trị và lực mua mạnh của các ngân hàng trung ương có thời điểm kéo mặt hàng này lên kỷ lục 2.431 USD một ounce.</p><p>Vài phiên gần đây, thị trường hạ nhiệt. Tuy vậy, tính từ đầu năm, kim loại quý tăng gần 20%.</p><p><strong>Hà Thu</strong><i> (theo Korea JoongAng Daily)</i></p>', 1, 0, 8, 5, 5, 1, '2024-04-24 16:58:25', '2024-04-24 16:58:25'),
(26, 'Ông Trần Quí Thanh: \'Cảm ơn cơ quan tố tụng giúp tôi nhận ra sai lầm\'', 'ong-tran-qui-thanh-cam-on-co-quan-to-tung-giup-toi-nhan-ra-sai-lam', 'jgz2-tran-qui-thanh-1-2544-1713960317.jpg', 0, 'https://www.youtube.com/embed/l6LLvPV9GC4?si=bkxLTs569QpkKvAR', 'TP HCMNói lời sau cùng, ông Trần Quí Thanh cảm ơn các cơ quan tố tụng đã giải thích để ông hiểu ra sai lầm, bày tỏ xót xa về 2 con gái đã vì ông mà phải đứng trước tòa.', '<p>TP HCMNói lời sau cùng, ông Trần Quí Thanh cảm ơn các cơ quan tố tụng đã giải thích để ông hiểu ra sai lầm, bày tỏ xót xa về 2 con gái đã vì ông mà phải đứng trước tòa.</p><p>Chiều 24/4, ông Thanh (71 tuổi, nguyên giám đốc Công ty TNHH Thương mại - Dịch vụ Tân Hiệp Phát) cùng hai con gái Trần Uyên Phương (43 tuổi, Phó giám đốc) và Trần Ngọc Bích nói lời sau cùng trước khi HĐXX nghị án.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2024/04/24/tran-qui-thanh-1-2544-1713960317.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ecGH-RWrSvy2Y1q0CNssig\" alt=\"Ông Trần Quí Thanh tại tòa hôm nay. Ảnh: Thanh Tùng\"></figure><p>Ông Trần Quí Thanh tại tòa hôm nay. Ảnh: <i>Thanh Tùng</i></p><p>Là người đầu tiên trình bày, ông Thanh chậm rãi đọc những lời đã viết sẵn trong tờ giấy. Ông cho biết, bản thân trưởng thành từ cô nhi viện, trải qua nhiều thăng trầm trong cuộc sống và đã xây dựng thành công tập đoàn thương hiệu Việt, có tầm thế giới. Phương châm sống của ông và gia đình là \"sống để lao động, cống hiến\" nên dù ngoài 70 tuổi ông vẫn làm việc với mong muốn đóng góp cho xã hội, tạo công ăn việc làm cho người lao động.</p><p>\"Bị cáo ân hận về những gì xảy ra trong vụ án và sẵn sàng chịu trách nhiệm về hành vi của mình\", ông Thanh nói, thêm rằng sự việc xảy ra với bản thân ngày hôm nay không làm thay đổi nguyện vọng muốn mang thương hiệu Việt ra thế giới.</p><p>Ông chủ Tân Hiệp Phát gửi lời cảm ơn cơ quan tố tụng đã xác định rõ vụ án này không liên quan tới doanh nghiệp mà gia đình đang điều hành. Ông bày tỏ xót xa, lòng biết ơn người vợ đã 70 tuổi, bị tai biến chưa phục hồi nhưng vẫn phải làm việc, điều hành công ty trong hoàn cảnh khó khăn.</p><p>\"Các con bị cáo luôn lao động, chăm chỉ hết mình. Chỉ vì bị cáo mà các con phải đứng ở đây ngày hôm nay...\", ông Thanh nghẹn giọng, giải thích rằng không phải kể những thành công, đóng góp của bản thân để biện minh cho hành vi trong vụ án này.</p><p>\"Bị cáo kính mong HĐXX xem xét khoan dung, cho bị cáo có cơ hội sớm trở về tiếp tục làm việc, cống hiến\", ông Thanh kết thúc 5 phút nói lời sau cùng.</p><p>Tương tự, bị cáo Trần Ngọc Bích cũng cảm ơn các cơ quan tố tụng đã giải thích cho mình hiểu rõ sai lầm và cảm ơn nhà chức trách đã cho tại ngoại để có điều kiện thực hiện các thỏa thuận của công ty với đối tác.</p><p>\"Bị cáo sinh ra và lớn trong gia đình làm kinh tế nên được giáo dục theo phương châm sống là phải cho đi, cống hiến cho xã hội. Bị cáo cảm thấy hối tiếc về lỗi lầm mình đã gây ra\", cô nói và xin HĐXX xem xét giảm nhẹ hình phạt cho cha, chị gái và mình.</p><figure class=\"image\"><img src=\"https://iv1.vnecdn.net/vnexpress/images/web/2024/04/24/tran-uyen-phuong-1713965140.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E9xQKPGFuvu5Da8275sNJQ\" alt=\"Trần Uyên Phương\"></figure><p>&nbsp;</p><p>Trần Uyên Phương nói lời sau cùng. Video: <i>Hải Duyên</i></p><p>Là người cuối cùng thực hiện quyền của bị cáo, Trần Uyên Phương nói rất hối tiếc về hành vi của mình. Nhiều lần nghẹn giọng, cô nói 12 tháng bị tạm giam là khoảng thời gian khó quên, để cô chiêm nghiệm lại cuộc sống, và đã chất vấn bản thân rất nhiều.</p><p>Bị cáo cho biết là doanh nhân Việt đầu tiên viết sách bằng tiếng Anh, xuất bản tại Mỹ, kể câu chuyện kinh doanh về thương hiệu Việt thắng thương hiệu nước ngoài.</p><p>\"Hôm nay đứng đây, bị cáo khẳng định với chính mình \'còn thở là còn cống hiến\'. Tất cả những kết quả bị cáo vừa nêu, là đều được học từ ba. Bị cáo rất hối tiếc cho cái sai của mình\", Phương nói, đồng thời xin tòa xem xét giảm nhẹ, khoan hồng cho cha và em gái.</p><p>Ông Thanh nhiều lần lau nước mắt khi nghe 2 con gái nói lời sau cùng.</p><p>Ngày mai, lúc 10h, tòa tuyên án.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2024/04/24/tran-uyen-phuong-1-5008-1713960317.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=-3sUaPnpBVxPGoqfHhz4LA\" alt=\"Bị cáo Trần Uyên Phương. Ảnh: Thanh Tùng\"></figure><p>Bị cáo Trần Uyên Phương. Ảnh: <i>Thanh Tùng</i></p><p>Trước đó, VKS giữ nguyên quan điểm truy tố, xác định từ 2019 đến 2020 ông Thanh cùng hai con gái thông qua môi giới đã cho nhiều người vay tiền với lãi suất 3%/tháng. Các bị cáo yêu cầu người vay phải ký hợp đồng chuyển nhượng tài sản, cổ phần của dự án và cam kết bán lại để che giấu bản chất của việc cho vay. Khi bên vay thực hiện đầy đủ nghĩa vụ trả nợ gốc, lãi theo thỏa thuận bán lại tài sản ban đầu, thì các bị cáo đưa ra nhiều lý do để không trả lại.</p><p>Bằng hình thức này, ba bố con ông Thanh đã thực hiện 4 vụ chiếm đoạt tài sản, tổng trị giá hơn 1.048 tỷ đồng. Trong đó, ông Thanh chiếm đoạt 2 dự án Minh Thành, Nhơn Thành của đại gia Đặng Thị Kim Oanh; 29 thửa đất được tách từ thửa đất số 452 của ông Nguyễn Văn Chung, 4 thửa đất của ông Lâm Sơn Hoàng và 2 thửa đất của ông Nguyễn Huy Đông.</p><p>Trong vụ án này, bị cáo Thanh là người chịu trách nhiệm chính trong các giao dịch, trực tiếp làm việc với người vay tiền, người môi giới. Còn Trần Uyên Phương và Trần Ngọc Bích không tham gia thỏa thuận, gặp gỡ với các bị hại, chỉ nhận thông tin từ ông Thanh và thực hiện ký các hợp đồng theo chỉ đạo và hoàn thiện thủ tục pháp lý.</p><p>Từ đó, VKS đề nghị tòa tuyên phạt bị cáo Thanh 9-10 năm tù; Phương 5-6 năm tù và Bích 4-5 năm.</p><p>Bào chữa cho thân chủ, các luật sư đề nghị HĐXX ghi nhận các tình tiết giảm nhẹ như: các bị cáo đã thật thà khai báo, ăn năn hối hận, đã tác động gia đình nộp 183 tỷ đồng trong quá trình điều tra để khắc phục hậu quả vụ án; ông Thanh đã lớn tuổi, sức khỏe yếu, bị tiểu đường nặng và đã có nhiều biến chứng; vợ ông cũng đang bị bệnh nan y, cần người chăm sóc...</p><p><strong>Hải Duyên</strong></p>', 1, 0, 8, 5, 5, 1, '2024-04-24 17:10:31', '2024-04-24 17:13:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort_Title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `sort_name`, `category_id`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Quốc tế', 'quoc-te', 8, 1, NULL, '2024-04-24 16:34:41'),
(8, 'Hồ sơ phá án', 'ho-so-pha-an', 9, 1, NULL, '2024-04-24 16:36:10'),
(11, 'Bóng đá', 'bo-ng-da-', 11, 0, NULL, '2024-04-24 16:34:30'),
(20, 'Tin tức', 'tin-tuc', 13, 1, '2024-04-24 16:53:41', '2024-04-24 16:53:41'),
(21, 'Tư vấn', 'tu-van', 13, 1, '2024-04-24 16:55:13', '2024-04-24 16:55:13'),
(22, 'Dinh dưỡng', 'dinh-duong', 13, 1, '2024-04-24 16:55:30', '2024-04-24 16:55:30'),
(23, 'Khỏe đẹp', 'khoe-dep', 13, 1, '2024-04-24 16:55:46', '2024-04-24 16:55:46'),
(24, 'Lịch thi đấu', 'lich-thi-dau', 11, 1, '2024-04-24 16:59:44', '2024-04-24 16:59:44'),
(25, 'Marathon', 'marathon', 11, 1, '2024-04-24 17:00:05', '2024-04-24 17:00:05'),
(26, 'Tennis', 'tennis', 11, 1, '2024-04-24 17:00:18', '2024-04-24 17:00:18'),
(27, 'Doanh nghiệp', 'doanh-nghiep', 8, 1, '2024-04-24 17:01:04', '2024-04-24 17:01:04'),
(28, 'Chứng khoán', 'chung-khoan', 8, 1, '2024-04-24 17:01:45', '2024-04-24 17:01:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `email_verified_at`, `image`, `role`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'User', 'user', '$2y$10$PoItWo5otS8.5WR3t2y0oeiucfwNpyT6/b2E/t61ZCPO6LDFrt9kG', 'user@gmail.com', NULL, 'avatar.jpg', 0, 1, NULL, '2024-05-15 00:30:16', '2024-04-24 17:40:29'),
(5, 'Admin', 'admin', '$2y$10$qRkuZVULgn3E8ec5uKGoi.0eomwzYsadjRLYuv7MW6ub.IVp670ri', 'admin@gmail.com', NULL, 'avatar.jpg', 1, 1, NULL, '2024-05-07 00:30:20', '2024-04-24 17:40:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
