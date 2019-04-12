-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 02:21 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internview-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_org` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `name_org`, `announcer`, `detail`, `contact_person`, `tel_number`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'รับนักศึกษาฝึกงาน Programmer Internship (โปรแกรมเมอร์)', 'TGS Enterprise Network Limited (THAILAND)', 'MiddleHR', 'TGS Enterprise Network Limited (THAILAND)\r\nEstablished in Thailand in 1974 under the name T.N. Communication Limited, it was renamed as Siemens Business Communication Systems Limited in 1995. Upon acquisition, Siemens Business Communication Systems Limited was named as TGS Enterprise Networks Ltd.\r\nTGS Enterprise Networks provides solutions and services for Enterprise Customers in the field of telecommunication and IT, including\r\nEnterprise Communication Networks\r\nBroadband Communication Systems\r\nEnergy Management Solutions\r\nIT Equipment Services and Solutions\r\nCellular Networks Installation and Maintenance Services\r\nตำแหน่งที่รับสมัคร Programmer/Network Engineer\r\nคุณสมบัติ\r\n1.ระยะเวลาฝึกขั้นต่ำ 4 เดือนขึ้นไป\r\n2.สามารถเขียนโปรแกรมพื้นฐาน HTML, PHP, JavaScipt , Web Application ภาษาใดภาษาหนึ่ง \r\n3.มีมนุษยสัมพันธ์ในการทำงาน\r\n4.ทำงานสัปดาห์ละ 5 วัน', 'TGS Enterprise Network Limited ', '02-715-9222', 'อาคารชาญอิสสระ ทาวเวอร์ II ชั้น 20 เลขที่ 2922/252-258\r\nบางกะปิ, ห้วยขวาง, กรุงเทพมหานคร, 10310', 'marketing@tgs-enterprise.com', '2019-02-28 12:00:40', '2019-04-10 09:24:15'),
(2, 'รับนักศึกษาที่มีความประสงค์จะฝึกงานทางด้านการเขียนโปรแกรม', 'EWIT Co., Ltd.', 'ฝ่าย HR', 'Who are we\r\nWe\'re A Mattered Marketing Company\r\nWe believe that there are treasures trapped inside your brand, which we eager to help discover and unlock to make the world appreciate and love you more.\r\nWhen we do this successfully, the brand, the client, the society will be benefits in both short and long term.\r\nwww.ewitewit.com \r\nFB : @ewitdigital\r\nตำแหน่งที่รับสมัคร Programmer\r\nคุณสมบัติ \r\n1.เป็นนักศึกษาที่มีความประสงค์จะฝึกงานทางด้านการเขียนโปรแกรม\r\n2.จากคณะ สาขาวิชาใดก็ได้ไม่จำกัด\r\n3.มีความรู้พื้นฐานในการเขียนโปรแกรม\r\n4.สามารถฝึกงานได้เป็นระยะเวลาไม่น้อยกว่า 2 เดือน\r\nหน้าที่ที่ต้องรับผิดชอบ\r\n1.พัฒนาระบบ Web Application ด้วยภาษา PHP, PYTHON ตามที่ได้รับมอบหมาย\r\n2.พัฒนาระบบ Chatbot\r\n3.พัฒนาระบบ AI, NLP', 'พี่โน้ต', '02-632-9858/106', 'เลขที่ 52 อาคารธนิยะพลาซ่า ชั้น 26\r\nสีลม, บางรัก, กรุงเทพมหานคร, 10500', 'job@ewitewit.com', '2019-03-01 15:57:22', NULL),
(3, 'รับนักศึกษาฝึกงานตำแหน่ง IT', 'Micron Group Co.,Ltd', 'Micron Group Co.,Ltd', 'เราเป็นบริษัทผู้นำด้านเครื่องใช้ในบ้านในประเทศไทย เราส่งออกมากกว่า 40 ประเทศทั่วโลก ดำเนินธุรกิจมามากกว่า 30 ปี เราเป็นเบอร์ 1 ในประเทศเรื่องกล่องถนอมอาหาร เราเป็นเจ้าของลิขสิทธ์ Disney, Kitty Characters ในประเทศไทย มีสินค้ามากกว่า 500 SKUs ตั้งแต่กระทะ ตระกร้า ลิ้นชัก และ ขวดน้ำในแบรนด์ Micronware และ Super Lock\r\nMicron Group เป็นบริษัทในเครือที่สร้าง ขึ้นมาเฉพาะ เพื่อทำการตลาด online ให้กับสินค้าของทางบริษัท จะมี culture ที่เป็นสมัยใหม่รองรับการทำงานแนวใหม่ๆ\r\nเราต้องการหาคนรุ่นใหม่ไฟแรงร่วมกันสร้างแบรนด์เครื่องใช้ในครัวเรือนคุณภาพของไทยสู่ตลาดโลก และ พร้อมจะโตไปกับบริษัท\r\nตำแหน่งที่รับสมัคร Programmer\r\nคุณสมบัติ \r\n1.เพศชาย-หญิง เป็นนักศึกษาที่มีหลักสูตรที่ต้องฝึกงาน \r\n2.วุฒิการศึกษา กำลังศึกษาในระดับปริญญาตรี สาขาวิชาที่เกี่ยวข้องกับคอมพิวเตอร์และอิเล็กทรอนิกส์\r\n3.มีความรู้และมีประสบการณ์ทางด้าน Hardware, Software คอมพิวเตอร์และระบบเครือข่าย \r\n4.สามารถเรียนรู้และใช้งานโปรแกรมสำเร็จรูปต่าง ๆ ได้ดี\r\n5.มีทักษะในการตรวจสอบ วิเคราะห์และแก้ไขปัญหาด้าน IT \r\n6.มีความขยันใฝ่เรียนรู้ อดทนสู้งานหนักเบา มีความรับผิดชอบต่องานที่ได้รับมอบหมาย และสามารถทำงานร่วมกันเป็น Teamwok ได้\r\nหน้าที่ที่ต้องรับผิดชอบ\r\n1.ประกอบ ซ่อมแซมอุปกรณ์ Hardware หรือติดตั้ง Software ให้กับคอมพิวเตอร์ได้\r\n2.แก้ปัญหาทางด้านเทคนิคต่าง ๆ ในการใช้งาน Computer ให้กับผู้ใช้\r\n3.แก้ไขปัญหาที่เกี่ยวข้องกับระบบเครือข่ายภายนอกและภายในทั้งด้าน Hardware และ Software\r\n4.ให้บริการดูแลระบบ IT ทั้งหมดของบริษัทให้ผู้ใช้สามารถทำงานได้อย่างราบรื่น\r\n5.แก้ไขติดตั้งระบบกล้องวงจรปิด CCTV ,โทรศัพท์ภายในผ่านตู้สาขา', 'Micron Group Co.,Ltd', '99-999-9999', '125/212-217 ซอย กำนันแม้น 18 ถนน เอกชัย 36\r\nบางขุนเทียน, จอมทอง, กรุงเทพมหานคร, 10150', 'aaaaaaa@gmail.com', '2019-03-02 12:00:40', NULL),
(4, 'ต้องการนศ.ปี 4 ฝึกงานตั้งแต่ 4 เดือนขึ้นไป', 'บริษัท ไอทีซัน คอปอร์เรชั่น จำกัด', 'ประสงค์ วิทยา', 'เป็นบริษัท พัฒนา ซอฟต์แวร์และโซลูชั่นทางด้านไอทีด้วยโปรแกรมด้วยภาษา SQL, PL/SQL, AngularJS, JSP,Asp.Net, C#.Net\r\nตำแหน่งที่รับสมัคร Programmer\r\nคุณสมบัติ\r\nต้องมีความรู้พื้นฐานทางด้าน SQL, PL/SQL, AngularJS, JSP,Asp.Net, C#.Net\r\nTools ที่ใช้ในการพัฒนาระบบงาน : Oracle Developer, Ionic\r\nสามารถพร้อมที่จะเรียนรู้งานได้อย่างเต็มที่\r\nหน้าที่ที่ต้องรับผิดชอบ\r\n1.พัฒนาระบบตามความต้องการของลูกค้า\r\n2.ให้บริการทางด้านเขียนโปรแกรมด้วยภาษา SQL, PL/SQL, AngularJS, JSP,Asp.Net, C#.Net\r\n3.support งานกรีที่ลูกค้าติดปัญหาการใช้งาน', 'บริษัท ไอทีซัน คอปอร์เรชั่น จำกัด', '02-862-7200', 'เลขที่ 42/144 พาร์คราชาวดี ซอย พระราม2ซอย3\r\nบางมด, จอมทอง, กรุงเทพมหานคร, 10150', 'support@itsuncorporation.com', '2019-03-04 04:50:51', '2019-04-10 09:25:12'),
(5, 'รับสมัครน้องฝึกงาน', 'บริษัท มิราเคิล ไลฟ์ โค้ช จำกัด', 'GM.เพชรียา ดิถีวิชัยกุล (อีฟ)', 'ความตั้งใจของพี่ในการรับสมัครน้องฝึกงาน คือ เพื่อให้น้องได้สัมผัสประสบการณ์ที่มีคุณค่าที่สุดช่วงหนึ่งในชีวิต เหมือนที่พี่เคยได้รับเมื่อตอนที่พี่ฝึกงาน\r\nและงานที่พี่อยากชวนน้องมาทำคือ\r\n* การสร้างสรรค์คุณค่าให้กับลูกค้า ด้วยความสามารถด้าน Programmer/ ทักษะงานด้านคอมพิวเตอร์ \r\n* งานอื่นๆ ตามความสนใจของน้อง\r\nพี่มั่นใจว่าเราจะได้เรียนรู้ แลกเปลี่ยนมุมมอง และมีประสบการณ์ที่มีคุณค่าร่วมกัน ^_^\r\nหมายเหตุ\r\n* บริษัทเป็นลักษณะ Home Office\r\n* ทำงานที่กรุงเทพมหานคร หรือ ต่างจังหวัดในบางโอกาส\r\n* บางชิ้นงานสามารถทำงานจากที่บ้านได้\r\nรับสมัครตำแหน่ง Programmer\r\nคุณสมบัติ\r\n1.กำลังเรียนด้านคอมพิวเตอร์ธุรกิจ หรือสาขาอื่นที่เกี่ยวข้อง \r\n2.ชอบอ่านหนังสือ สนุกกับการเรียนรู้ ตรงเวลา มีความยืดหยุ่นสูง \r\n3.สามารถเขียนเว็บไซต์ โดยใช้โปรแกรม Net beans หรืออื่นๆ ได้\r\nหน้าที่ที่ต้องรับผิดชอบ\r\n1.การสร้างสรรค์คุณค่าให้กับลูกค้า ด้วยความสามารถด้าน Programmer/ ทักษะงานด้านคอมพิวเตอร์ \r\n2.*งานอื่นๆ ตามความสนใจของน้อง', 'GM. เพชรียา ดิถีวิชัยกุล (อีฟ)', '080-6516589', '645/289 ซอยนวมินทร์ 93 ถนนนวมินทร์ แขวงนวมินทร์ เขตบึงกุ่ม\r\nกรุงเทพมหานคร 10240', 'eve.petchareeya@gmail.com', '2019-03-05 04:50:51', NULL),
(6, 'Intern Student – Analytics/Customer Technical Support\r\nนักศึกษาที่กำลังศึกษาอยู่ในสาขาที่เกี่ยวข้องทุกระดับชั้น', 'Seagate Technology (Thailand)Limited', 'SeagateHR', 'Seagate is the worldwide leader in the design, manufacturing and marketing of hard disc drives, providing products for a wide-range of Enterprise, Desktop, Mobile and Consumer Electronics applications. The company is committed to delivering award-winning products, customer support and reliability, to meet the world\'s growing demand for information storage. Seagate can be found around the globe and at www.seagate.com To support the scope expansion of Thai team, we invite the applications from both newly graduated and experienced professionals. Several new positions are required to be filled with highly motivated professionals. The career opportunities are opened at our factory in Korat and Teparuk.\r\nตำแหน่งที่รับสมัคร Programmer SQL / Hardware engineer\r\nคุณสมบัติ\r\n1.นักศึกษาที่กำลังศึกษาอยู่ในสาขาที่เกี่ยวข้องทุกระดับชั้นปริญญาตรี, โทและเอก\r\n2.สามารถฝึกงานได้ตั้งแต่ 4 เดือนขึ้นไป\r\nหน้าที่ที่รับผิดชอบ\r\n1.Monitor customer performance of Seagate products\r\n2.Conduct deep-dive analysis of abnormal trend or trigger, conduct configuration analysis to define potential cause of an issue and recommend warning limits based upon the performance (Analysis via SQL query, ERI, OQ&A Portal, Shiny, eXp, FES Cloud Parser, )\r\n3.Generate executive report summary of the issue description, finding from deep-dive analysis and potential cause (Result from Analysis lead to Suggestion to perform Proactive Action)\r\n4.Report technical issues discover from the existing analytic tools for further development\r\n5.Develop SQL script to support ad-hoc data analysis request, including generate report of trouble shooting', 'Seagate Technology (Thailand)Limited', '0-2715-2999', '1627 หมู่ 7 ถนนเทพารักษ์\r\nเทพารักษ์, เมืองสมุทรปราการ, สมุทรปราการ, 10270', 'aaaa@gmail.com', '2019-03-06 04:50:51', '2019-04-10 09:24:49'),
(7, 'รับนักศึกษาฝึกงาน ตำแหน่ง Web Designer/ Developer', 'บริษัท ไฮไลฟ์ เน็ทเวิร์ค จำกัด', 'บริษัท ไฮไลฟ์ เน็ทเวิร์ค จำกัด', 'บริษัท ไฮไลฟ์ เน็ทเวิร์ค จำกัด เปิดดำเนินกิจการมากว่า 8 ปี โดย คุณศศิลักษณ์ เหตระกูล ประธานกรรมการและผู้ก่อตั้ง โดยประกอบกิจการธุรกิจขายตรง มีความพร้อมในแผนการตลาดและแผนธุรกิจเพื่อสนับสนุนให้กับสมาชิก รวมทั้งสนับสนุนสินค้าเพื่อตอบสนองความต้องการของสมาชิก\r\nตำแหน่งที่รับสมัคร Programmer ด้าน website \r\nคุณสมบัติ \r\n1.มีความรู้พื้นฐาน HTML, PHP, CSS, Java, Ajax\r\n2.มีความรู้พื้นฐาน SQL การเชื่อม Data base\r\n3.มีความรู้พื้นฐาน WordPress CMS\r\n4.มีความรับผิดชอบสูง มีความคิดสร้างสรรค์ รักการเรียนรู้ และทำงานเป็นทีมได้\r\n5.มีความชอบหลงไหล ในชีวิตทันสมัย อินเตอร์เน็ตและดิจิตอลภาพรวมทีมีผลต่อชีวิต\r\nหน้าที่ที่รับผิดชอบ\r\n1.พัฒนา website ร่วมกับทีม IT \r\n2.อัพเดทข้อมูลในเว็บไซต์ของบริษัทฯ \r\n3.ประสานงานกันภายในทีม และแผนกต่างๆ ในการให้ความช่วยเหลือเกี่ยวกับการสร้าง Website หรือข้อมูลทางเทคนิค\r\n4.ตรวจสอบผลงานในหลายๆ browsers เช่น google chrome, Firefox, Safari ทั้งใน Desktop และ Smartphone\r\nตำแหน่งที่รับสมัคร Web Designer\r\nคุณสมบัติ\r\n1.สามารถใช้งาน โปรแกรม Photoshop, Illustrator, Flash และโปรแกรมด้านกราฟฟิคอื่นๆ ได้เป็นอย่างดี 	\r\n2.มีความเข้าใจเกี่ยวกับ Css,Html5,Java Script, Jquery , Web Responsive , Bootstap\r\n3.สามารถออกแบบเว็บไซต์ได้ มีความคิดสร้างสรร และเรียนรู้สิ่งใหม่ๆ อยู่เสมอ\r\n4.รักงานด้านบริการ มี Service Mind ดี มีทักษะการประสานงานที่ดี และแก้ไขปัญหาเฉพาะหน้าได้\r\n5.มีทักษะด้านการบริหารและดูแลทีมงาน ให้ส่งงานโครงการให้ลูกค้าได้ตามระยะเวลาที่กำหนด รวมถึงมีการติดตามผลงานอย่างเป็นระบบ\r\nหน้าที่ที่รับผิดชอบ\r\n1.ออกแบบเว็บไซต์ เพื่อให้สามารถดำเนินการด้านการออกแบบเว็บไซต์ของบริษัทฯ และของลูกค้า ตลอดจนงาน Graphic ต่างๆเพื่อใช้ในการประชาสัมพันธ์บริษัทฯ\r\n2.ประสานงานกับฝ่ายขายของบริษัทฯ และลูกค้า เพื่อรับทราบความต้องการในการออกแบบและดำเนินการออกแบบเว็บไซต์ ให้สวยงาม เป็นมืออาชีพ ตรงกับธุรกิจของลูกค้า ด้วยการใช้ระบบการสร้างเว็บไซต์ของบริษัทฯ', 'บริษัท ไฮไลฟ์ เน็ทเวิร์ค จำกัด', '0-2-258-5155', '199\r\nคลองเตย, คลองเตย, กรุงเทพมหานคร, 10110', 'crm@hylifenetwork.com', '2019-03-07 04:50:51', NULL),
(8, '(Thai) Internship - Information Technology (HQ- Bangkok)\r\nนักศึกษาของมหาวิทยาลัย ระดับชั้นปีที่ 3 หรือ ปีที่ 4 ', 'Kokotel (Thailand)', 'Kokotel (Thailand)', '\"WE ARE FRIENDS AND FAMILIES\"\r\nSERVING FRIENDS AND FAMILIES\r\nKokotel Thailand is an ambitions start-up in the hospitality industry Bed and Cafe Concept with Rooms for 4, an integrated concept of F&B and accommodation. We aim to deploy up to 1,000 properties between 30-110 keys in Thailand, South-East Asia and India as a game changer until 2030\r\nKokotel\'s name came from some Japanese words.The most important is Kokoro = (Heart) This is a symbol of our commitment to provide heart-warming service with Thai Hospitality and Japanese Quality within Bed & Cafe Concept.\r\nLet\'s explore our Kokotel Home as follow:\r\n2016 : Our first home \"Kokotel Bangkok Surawong\"\r\n2017 : Kokotel Krabi Ao Nang, Kokotel Phuket Patong, Kokotel Krabi Oasis\r\n2018 : Our lastest home \"Kokotel Chiang Mai, Nimman\" Open official on 1st of April 2018\r\nAnother things: More to come......We are looking for your talented team who would like to have some fun together with aiming to have 10 more properties within 2019\r\nตำแหน่งที่รับสมัคร IT support\r\nคุณสมบัติ\r\n1.สัญชาติไทย ชาย/หญิง\r\n2.ปัจจุบันเป็นนิสิต/นักศึกษาของมหาวิทยาลัย ระดับชั้นปีที่ 3 หรือ ปีที่ 4 \r\n3.มีจดหมายพร้อมลายเซ็นต์ยืนยันการขอฝึกงานจากทางมหาวิทยาลัย\r\n4.กระตือรือร้นที่จะเรียนรู้ประสบการณ์ใหม่ๆ จากธุรกิจ Start-up \r\n5.กำลังศึกษาอยู่ในภาควิชาเทคโนโลยีสารสนเทศ / วิศวกรรมคอมพิวเตอร์ หรือสาขาอื่นที่เกี่ยวข้อง\r\n6.มีประสบการณ์ และความรู้เกี่ยวกับทางด้าน IT Support\r\n7.สามารถฝึกงานเป็นระยะเวลาขั้นต่ำอย่างน้อย 2 เดือน แต่ไม่เกิน 6 เดือน\r\n8.ทัษนะคติที่ดีในการทำงาน\r\n9.ทัศนะคติดี ต้องการที่จะพัฒนาตนเอง รักการบริการ อดทน มีความเป็นผู้นำ คล่องแคล่ว และมีความถนัดหลายอย่าง\r\n10.มีความตรงต่อเวลา ทำงานเป็นทีม และมีความคิดสร้างสรรค์\r\n11.สามารถสื่อสาร และเขียนภาษาไทย และอังกฤษได้ดี และมีมนุษยสัมพันธ์ที่ดีกับเพื่อนร่วมงาน\r\n12.มีความเชี่ยวชาญด้านความรู้คอมพิวเตอร์ทั่วไปจะได้รับการพิจารณาเป็นพิเศษ\r\nหน้าที่ที่รับผิดชอบ\r\n1.จัดเตรียมชื่อผู้ใช้ และวิธีการแก้ปัญหา สำหรับคอมพิวเตอร์ แล็ปท็อป/โน้ตบุ๊ค ปริ้นเตอร์ อุปกรณ์ฮาร์ดแวร์ และโปรแกรมซอฟต์แวร์\r\n2.ติดตั้ง และกำหนดค่าเครื่องคอมพิวเตอร์ฮาร์ดแวร์ ซอฟแวร์ ระบบ เน็ตเวิร์ค ปริ้นเตอร์ และ สแกนเนอร์\r\n3.การจัดเตรียมอุปกรณ์และชิ้นส่วนต่างๆ\r\n4.การวางแผน และดำเนินการจัดตารางการซ่อมบำรุงฮาร์ดแวร์ และซอฟต์แวร์', 'Kokotel (Thailand)', '053 218 825', '140/22\r\nบางรัก, บางรัก, กรุงเทพมหานคร, 10500', 'aaaaaa@gmail.com', '2019-03-08 04:50:51', NULL),
(9, 'รับสมัครนักศึกษาฝึกงาน IT', 'บริษัท คาลิน่า จำกัด\r\n', 'บริษัท คาลิน่า จำกัด\r\n', 'บริษัทผลิตและจำหน่ายยาสีฟันตราดีดีเฮิร์บ ยาสีฟันธรรมชาติ ไร้สารเคมีรักษาช่องปากของคนที่เรารัก และนมอัดเม็ดตราแฟมิลี่มิล\r\nตำแหน่งที่รับสมัคร IT support / ดูแลเว็บไซต์\r\nคุณสมบัติ\r\n1.กำลังศึกษาในสาขาคอมพิวเตอร์ และสาขาที่เกี่ยวข้อง\r\n2.เพศหญิงหรือชายก็ได้\r\n3.มีความกระตือรือร้นที่จะเรียนรู้\r\nหน้าที่ที่ต้องรับผิดชอบ\r\nดูแลเรื่องการใช้งานระบบคอมพิวเตอร์ ดูแลเรื่องการทำคอนเทนท์บนเว็บไซด์ และสื่อออนไลน์ต่างๆ คอยควบคุมการทำงานของระบบคอมพิเตอร์ภายในบริษัท\r\n', 'Zhang Wenbin', '0832363856/0876868999', '114/2-4 ถนนมณีนพรัตน์ ตำบลศรีภูมิ อำเภอเมือง จังหวัดเชียงใหม่ 50200\r\nศรีภูมิ, เมืองเชียงใหม่, เชียงใหม่, 50200', 'welcomekalina@gmail.com', '2019-03-08 12:03:06', NULL),
(10, 'ฝึกงาน, สหกิจศึกษา ตำแหน่ง โปรแกรมเมอร์', 'หจก. ไอซีที อินทิเกรเตอร์', 'Sawatdee', 'ฝึกประสบการณ์วิชาชีพในขอบเขตงานคอมพิวเตอร์โปรแกรมมิ่ง\r\nตำแหน่งที่รับสมัคร\r\nProgrammer PHP, C# หรือ JAVA\r\nคุณสมบัติ\r\n1.มีความสามารถในการเขียนโปรแกรมคอมพิวเตอร์ อย่างน้อย 1 ภาษาได้แก่ PHP, C# หรือ JAVA\r\n2.มีทักษะที่ดีในกระบวนการต่างๆ ด้านไอที\r\n3.มีความขยัน และ ตรงต่อเวลา\r\n4.ต้องการพัฒนาตนเองตลอดเวลา\r\n5.ห่างคอมพิวเตอร์ และ อินเตอร์เน็ตไม่ได้', 'หจก. ไอซีที อินทิเกรเตอร์', '0988845935', '299/139 ม.6 ต.สันผักหวาน อ.หางดง จังหวัด เชียงใหม่', 'ictintegrator.co@gmail.com', '2019-03-10 04:50:51', '2019-04-10 09:23:25'),
(11, 'รับนักศึกษาฝึกงาน โปรแกรมเมอร์ PHP', 'AKK Softtech Co,.Ltd.', 'แผนกบุคคลAKK', 'AKK SOFTTECH เป็นบริษัทที่ดำเนินธุรกิจทางด้าน IT Hardware/Software ที่เชี่ยวชาญเฉพาะด้าน ต้องการรับสมัครผู้มีความรู้ ความสามารถ เรียนรู้ได้เร็วกับวิวัฒนาการใหม่ๆ และต้องการเติบโตไปพร้อมๆกับเราเพื่อก้าวไปสู่ระดับเอเชียและระดับโลก\r\nสวัสดิการ\r\n- เงินเดือนประจำ\r\n- เสื้อฟอร์ม\r\n- โอที\r\n- โบนัสประจำปีตามผลประกอบกิจการของบริษัท\r\nตำแหน่งที่รับสมัคร โปรแกรมเมอร์ PHP\r\nคุณสมบัติ\r\n1.เขียนโปรแกรม Client Server/ Web App /Mobile App ด้วยภาษาใดภาษาหนึ่งได้ เช่น PHP, HTML, MySQL, Java Script, CSS\r\n2.เข้าใจระบบ E-Commerce/ Website สามารถปรับปรุงและแก้ไขระบบได้\r\n3.พัฒนาตัวเอง และเรียนรู้สิ่งใหม่ๆ มีความกระตือรือร้นในการทำงาน ความรับผิดชอบสูงและมีระเบียบวินัยในการทำงาน\r\n4.มีความรู้เกี่ยวกับฐานข้อมูล\r\n5.มีความคิดริเริ่มสร้างสรรค์\r\n6.มีมนุษยสัมพันธ์ที่ดี\r\n7.รับนักศึกษาฝึกงาน และสหกิจศึกษา\r\n8.รับนักศึกษาจบใหม่ ไม่จำเป็นต้องมีประสบการณ์มาเรียนรู้ที่บริษัทได้\r\n9.สามารถเขียนโปรแกรมรองรับระบบ Phonegap build จะพิจารณาเป็นพิเศษ\r\n10.สามารถเขียนโปรแกรมรองรับระบบ Android และ IOS (เขียน React Native,Ionic,Xamarin ภาษาใดภาษาหนึ่งได้ จะพิจารณาเป็นพิเศษ)\r\nหน้าที่รับผิดชอบ\r\n- ประเมินเวลาในการเขียนโปรแกรม\r\n- เขียนโปรแกรมตามที่ต้องการ\r\n- แก้ข้อผิดพลาดของโปรแกรม(bugs)\r\n- งานอื่นๆตามที่ได้รับมอบหมายจากหัวหน้างาน', 'แผนกบุคคล AKK Softtech Co,.Ltd.', '02-531-7498-9/ 062-6981988', 'ชัชวาลย์วงศ์ เลขที่ 11/47 ลำลูกกาคลอง2 ถนนลำลูกกา ตำบลคูคต อำเภอลำลูกกา จังหวัดปทุมธานี 12130', 'akksofttech_12@trustmail.jobthai.com', '2019-03-11 04:50:51', '2019-04-10 09:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `list_orgs`
--

CREATE TABLE `list_orgs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_org` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `headerpic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-preview.png',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'All,hardware,software,network',
  `Lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_orgs`
--

INSERT INTO `list_orgs` (`id`, `name_org`, `picture`, `headerpic`, `description`, `address`, `type`, `Lat`, `Lng`, `created_at`, `updated_at`) VALUES
(1, 'บริษัท ไปด้วยกันมั้ย จำกัด', 'paiduay.png', 'pd.png', 'บจก.ไปด้วยกันมั๊ย เป็นบริษัท Technology ที่พัฒนาระบบซอฟแวร์ขนาดใหญ่, เว็บไซต์ และแอปพลิเคชั่นบนมือถือ เพื่อตอบสนองความต้องการและแก้ปัญหาทางธุรกิจขององค์กรเอกชน หรือหน่วยงานรัฐบาล รวมถึงพัฒนาผลิตภัณฑ์ของตัวเองเพื่อเจาะตลาดและกลุ่มลูกค้าใหม่ ซึ่งขณะนี้สิ่งที่เรากำลังพัฒนากันอยู่ก็มีทั้ง Chatbot, แอปพลิเคชั่นสำหรับตลาดผู้สูงอายุ, ระบบบริหารจัดการคิวอัจฉริยะ, ระบบบริหารความสัมพันธ์กับลูกค้า, ระบบจัดการ Logistic ให้ธุรกิจ E-commerce และอื่นๆ', '217 ห้อง 403-404 ตึก D อาคาร NSP ต.แม่เหียะ อ.เมือง จ.เชียงใหม่ 50100', 'All,software', '18.765211', '98.936702', '2019-03-19 15:57:22', '2019-04-10 06:54:39'),
(2, 'บริษัท บีเน็ต เอ็นจิเนียริ่ง จำกัด', 'beenet.png', 'beenet.jpg', 'บีเน็ต เอ็นจิเนียริ่ง ให้บริการติดตั้งระบบเครือข่ายและระบบปฎิบัติการคอมพิวเตอร์ ให้คำปรึกษาด้านระบบและการประยุกต์ใช้ ดำเนินการบริหารโดยผู้บริหารที่มีความรู้และเข้าใจในระบบงานคอมพิวเตอร์เป็นอย่างดี บริษัทฯ มีนโยบายในการให้บริการเกี่ยวกับ NETWORK INFRASTRUCTURE, DATA CENTER SERVER & STORAGE, HOTSPOT WIFI, MAINTENANCE & CONSULTANT', 'โครงการ Biz Point 10 เลขที่ 500/54 ถ.คลองชลฯ ต.แม่เหียะ อ.เมือง จ.เชียงใหม่ 50100', 'All,network', '18.752044', '98.942151', '2019-03-19 12:07:48', '2019-03-19 12:07:48'),
(3, 'บริษัท ซีเกท เทคโนโลยี (ประเทศไทย) จำกัด', 'seagate.png', 'seegate.jpg', 'บริษัท ซีเกท เทคโนโลยี (ประเทศไทย) จำกัด ดำเนินการผลิตเพื่อจำหน่ายอุปกรณ์บันทึกข้อมูล หรือฮาร์ดดิสก์ไดร์ฟสำหรับคอมพิวเตอร์ตั้งโต๊ะ และต่อมาได้ขยายกิจการมายังภูมิภาคเอเชียโดยเริ่มในประเทศสิงคโปร์ แล้วจึงขยายการลงทุนมายังประเทศไทย และได้พัฒนาเทคโนโลยีฮาร์ดดิสก์อย่างต่อเนื่องรวมทั้งควบกิจการกับบริษัทที่มีเทคโนโลยีชั้นสูงต่างๆ เพื่อทำการผลิต และออกแบบผลิตภัณฑ์ฮาร์ดดิสก์ที่ตามความต้องการของอุตสาหกรรมคอมพิวเตอร์ บริษัทฯ ก่อตั้งเมื่อปี 2522 สำนักงานตั้งอยู่ที่สมุทรปราการ', '1627 ม.7 ถ.เทพารักษ์ ต.เทพารักษ์ อ.เมือง จ.สมุทรปราการ 10270', 'All,software', '13.623250', '100.632789', NULL, '2019-03-17 21:30:26'),
(4, 'ศูนย์ควบคุมการบินเชียงใหม่', 'aerothai.jpg', 'AirCtrlCNX.jpeg', 'ศูนย์ควบคุมการบินเชียงใหม่ มีหน้าที่รับผิดชอบในการให้บริการจราจรทางอากาศ (Air Traffic Services) บริเวณเขตท่าอากาศยาน ด้านการสื่อสารการบินส่วนภูมิภาค และบริการเครื่องช่วยการเดินอากาศ โดยใช้ระบบเรดาร์ทุติยภูมิ (Secondary Surveillance Radar) Mode S ในการควบคุมจราจรทางอากาศ ซึ่งติดตั้งใช้งาน ณ ท่าอากาศยานเชียงใหม่ และท่าอากาศยานแม่ฟ้าหลวงเชียงราย มีรัศมีโดยรอบ 250 ไมล์  นอกจากนี้ยังให้การบริการข่าวสารการเดินอากาศ (Aeronautical Information Services) การซ่อมบำรุงระบบและอุปกรณ์ ที่สนับสนุนการให้บริการการเดินอากาศ อาคารสถานที่ และสาธารณูปโภค รวมทั้งบริหารจัดการศูนย์ควบคุมการบิน และหอบังคับการบินในพื้นที่ที่รับผิดชอบได้แก่ หอบังตคับการบินเชียงใหม่ เชียงราย ลำปาง และแม่ฮ่องสอน เพื่อก่อให้เกิดความรวดเร็ว แม่นยำ เที่ยงตรง และมีความปลอดภัย\r\n', '60 ถนนสนามบิน ตำบลสุเทพ อำเภอเมือง จังหวัดเชียงใหม่ 50200', 'All,software,network', '18.772171', '98.966492', NULL, NULL),
(5, 'สำนักบริการเทคโนโลยีสารสนเทศ มหาวิทยาลัยเชียงใหม่', 'ITSC.jpg', 'itscHEAD.JPG', 'ตามที่มหาวิทยาลัยเชียงใหม่ได้ก้าวสู่การเป็นมหาวิทยาลัยในกำกับอย่างเป็นทางการ เมื่อวันที่ 7 มีนาคม 2551 นั้น นับเป็นโอกาสในการรวมหน่วยงานเดิมสององค์กร คือ สำนักบริการคอมพิวเตอร์ ที่ได้ดำเนินการมากว่า 25 ปี และสถานบริการเทคโนโลยีสารสนเทศ ซึ่งเป็นองค์กรในกำกับของมหาวิทยาลัยตั้งแต่ปี 2545 มารวมเข้าด้วยกันอย่างเป็นทางการ ภายใต้ชื่อ \"สำนักบริการเทคโนโลยีสารสนเทศ\" ตั้งแต่วันที่ 5 กรกฎาคม 2551 เป็นต้นมา โดยมีวิสัยทัศน์คือเป็นศูนย์กลางแห่งการให้บริการเทคโนโลยีสารสนเทศของมหาวิทยาลัยที่ได้รับการรับรองมาตรฐานสากล เป้าหมายหลักคือการเป็นศูนย์กลางการให้บริการหลักที่ได้รับการรับรองมาตรฐาน', '239 ถนนห้วยแก้ว ตำบลสุเทพ อำเภอเมือง จังหวัดเชียงใหม่ 50200', 'All,software,network', '18.803861', '98.953026', NULL, NULL),
(6, 'บริษัท ท่าอากาศยานไทย จำกัด (มหาชน)', 'AOT.jpg', 'g20140411085306_g.jpg', 'บริษัท ท่าอากาศยานไทย จำกัด (มหาชน) เดิมใช้ชื่อว่า การท่าอากาศยานแห่งประเทศไทย หรือ ทอท. เป็นรัฐวิสาหกิจสังกัดกระทรวงคมนาคม เป็นองค์กรบริหารงานท่าอากาศยานระดับแห่งชาติของไทย โดยเริ่มดำเนินการตั้งแต่วันที่ 1 กรกฎาคม พ.ศ. 2522 เพื่อดำเนินกิจการท่าอากาศยานต่างๆ ให้มีมาตรฐานและประสิทธิภาพ และรับโอนกิจการท่าอากาศยานดอนเมือง ซึ่งเคยสังกัดกรมการบินพลเรือน (กองทัพอากาศ) โดยอาศัยตามความบทเฉพาะกาล มาตรา 50 ของพระราชบัญญัติการท่าอากาศยานแห่งประเทศไทย พุทธศักราช 2522 ต่อมา ทอท. ได้แปลงสภาพเป็นบริษัทภายใต้นโยบายการแปรรูปรัฐวิสาหกิจไทย โดยได้จดทะเบียนเป็นนิติบุคคลชื่อ \"บริษัทท่าอากาศยานไทย จำกัด (มหาชน)\" และปรับตราสัญลักษณ์ใหม่ โดยชื่อย่อของบริษัทยังคงใช้ \"ทอท.\" เช่นเดิม ส่วนชื่อภาษาอังกฤษคือ Airports of Thailand Public Company Limited และใช้ชื่อย่อว่า AOT', '333 ถนนเชิดวุฒากาศ แขวงสีกัน เขตดอนเมือง กรุงเทพฯ 10210', 'All,software,network', '13.927156', '100.603298', NULL, NULL),
(7, 'บริษัท ท่าอากาศยานไทย จำกัด (มหาชน) ท่าอากาศยานเชียงใหม่', 'AOT.jpg', 'g20140411085306_g.jpg', 'ท่าอากาศยานเชียงใหม่ หรือสนามบินเชียงใหม่ (อังกฤษ: Chiang Mai International Airport) ตั้งอยู่ทางตะวันตกเฉียงใต้ ห่างจากตัวเมืองเชียงใหม่ 4 กิโลเมตร ในตำบลสุเทพ อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ เป็นท่าอากาศยานนานาชาติ 1 ในจำนวนทั้งหมด 6 แห่ง ที่ดำเนินงานโดยบริษัท ท่าอากาศยานไทย จำกัด (มหาชน) เป็นศูนย์กลางทางการบินของภาคเหนือ โดยมีเที่ยวบินเข้าออกหนาแน่นเป็นลำดับสี่ รองจากท่าอากาศยานสุวรรณภูมิ ท่าอากาศยานดอนเมือง และท่าอากาศยานภูเก็ต', '60 ถนนมหิดล ตำบลสุเทพ อำเภอเมือง จังหวัดเชียงใหม่ 50200', 'All,software,network', '18.768592', '98.963676', NULL, NULL),
(8, 'บริษัท ฮิตาชิ เคมิคัล ออโตโมทีฟ โปรดักส์ (ประเทศไทย) จำกัด', 'hitashi.jpg', '46791633_o.jpg', 'บริษัท ฮิตาชิ เคมีคัล ออโตโมทีฟ โปรดักส์ (ประเทศไทย) จำกัด เป็นการร่วมทุนระหว่างบริษัท ฮิตาชิ เคมีคัล จำกัด (ประเทศญี่ปุ่น) และบริษัท อีซูซุ มอเตอร์ (ประเทศไทย) จำกัด ก่อตั้งบริษัทเมื่อเดือนธันวาคม พ.ศ. 2538 โดยมี วัตถุประสงค์เพื่อผลิตและจำหน่ายชิ้นส่วนยานยนต์ ด้วยกรรมวิธีการฉีดขึ้นรูปและการพ่นสี เพื่อให้ได้ชิ้นงานที่มี คุณภาพตามมาตรฐานขั้นสูง อาทิ คอนโซลหน้า กันชน กระจังหน้า แผงประตู ฯลฯ และยังคลอบคลุมถึงการจัดหา และออกแบบเครื่องมือ และชิ้นส่วนยานยนต์ต่าง ๆ เพื่อตอบสนองทุกความต้องการของลูกค้า', '60/11 หมู่ 3 นิคมอุตสาหกรรมสยามอีสเทิร์น ตำบลมาบยางพร อำเภอปลวกแดง จังหวัดระยอง 21140', 'All,hardware', '12.994524', '101.220148', '2019-03-19 12:02:10', '2019-03-19 12:02:10'),
(9, 'กรมท่าอากาศยาน', 'air-org.jpg', 'slide-one.jpg', 'กรมท่าอากาศยาน (อังกฤษ: Department of Airports , ชื่อย่อ : ทย. , DOA) หน่วยงานระดับกรมในสังกัดของ กระทรวงคมนาคม มีอำนาจหน้าที่พัฒนาโครงข่ายส่งเสริมกิจการท่าอากาศยานและบริหารท่าอากาศยานทั้ง 28 แห่งทั่วประเทศไทยซึ่งเคยอยู่ภายใต้การบริหารดูแลของ กรมการบินพลเรือน', '71 ซอยงามดูพลี ถนนพระรามที่ 4 แขวงทุ่งมหาเมฆ เขตสาทร กรุงเทพฯ 10120', 'All,software,network', '13.718257', '100.543125', NULL, NULL),
(10, 'บริษัท มายคอส เทคโนโลยีส์ จำกัด', 'mycos.png', 'mycost.jpg', 'MyCos Technologies ให้บริการพัฒนาซอฟต์แวร์และแอพพลิเคชั่น ตลอดจนถึงการให้คำปรึกษาสำหรับลูกค้าภาคธุรกิจจากทั่วโลก เรามุ่งเน้นการพัฒนาแอพพลิเคชั่นสำหรับธุรกิจ เช่น ธุรกิจด้านการผลิต การเงิน การบริหาร และการรวบรวมข้อมูล จัดเก็บ วิเคราะห์ และการเข้าถึงข้อมูล (Business Intelligence) เราบริการด้วยความซื่อสัตย์และความหลงใหลในเทคโนโลยี', '12/1 ซอย 13 ถนนนิมมานเหมินทร์ ตำบลสุเทพ อำเภอเมือง จังหวัดเชียงใหม่ 50200', 'All,software', '18.796427', '98.968084', '2019-03-19 12:00:40', '2019-03-19 12:00:40'),
(11, 'บริษัท พีทีที ดิจิตอล โซลูชั่นส์ จำกัด', 'ptt.png', 'PTTDigital1.jpg', 'พีทีที ดิจิตอล โซลูชั่นส์  ก่อตั้งขึ้นโดยมีวัตถุประสงค์หลัก เพื่อสร้างความร่วมมือและมูลค่าภายในกลุ่มบริษัท ปตท. โดยปฏิบัติการร่วมกันเป็นหนึ่งเดียวตามวิสัยทัศน์ของกลุ่ม ปตท. ที่มุ่งสู่องค์กรแห่งความเป็นเลิศ (High Performance Organization) ด้วยการบริหารจัดการและลงทุนทางด้านไอซีทีร่วมกันอย่างมีประสิทธิภาพ โดยจะสร้างมูลค่าจากการทำงานร่วมกันเป็นกลุ่ม (Group Synergy) พีทีที ดิจิตอล โซลูชั่นส์ ก่อกำเนิดขึ้นจากความร่วมมือของบริษัทในกลุ่ม ปตท. เพื่อผสานความเชี่ยวชาญด้านเทคโนโลยีสารสนเทศของหน่วยงานไอซีทีของทั้ง 5 บริษัท ผู้ถือหุ้นหลัก  โดยให้การดูแลให้คำปรึกษา และบริการด้านเทคโนโลยี อย่างครบวงจรและเป็นระบบ เพื่อเชื่อมโยงการทำงานของกลุ่ม ปตท. ให้เกิดประสิทธิภาพสูงสุด', '555/1 ศูนย์เอนเนอร์ยี่คอมเพล็กซ์ อาคารเอ ชั้นที่ 6, 19-36 ถนนวิภาวดีรังสิต แขวงจตุจักร เขตจตุจักร กรุงเทพฯ 10900', 'All,hardware,software', '13.819942', '100.556809', NULL, '2019-03-25 01:18:31'),
(12, 'สำนักงานส่งเสริมอุตสาหกรรมซอฟต์แวร์แห่งชาติ (สาขาเชียงใหม่)', 'sipa.png', '52561.jpg', 'สำนักงานส่งเสริมอุตสาหกรรมซอฟต์แวร์แห่งชาติ (องค์การมหาชน) สาขาเชียงใหม่จัดตั้งขึ้นเมื่อวันที่ 24 กันยายน พ.ศ. 2546 เป็นหน่วยงานภายใต้การกำกับดูแลของรัฐมนตรีว่าการกระทรวงเทคโนโลยีสารสนเทศและการสื่อสารมีหน้าที่รับผิดชอบเรื่องการวางแผนและกำหนดนโยบายส่งเสริมอุตสาหกรรมซอฟต์แวร์สนับสนุนและอบรมบุคลากรด้านซอฟต์แวร์และส่งเสริมด้านการตลาดและการผลิตในประเทศผ่านการให้เงินทุนสนับสนุนในรูปแบบต่างๆSIPA ได้ตั้งศูนย์ให้บริการในหลายๆด้านเช่นให้คำปรึกษาการส่งเสริมการลงทุนจากผู้เชี่ยวชาญส่งเสริมให้ธุรกิจขนาดกลางและขนาดเล็กและส่งเสริมการคุ้มครองทรัพย์สินทางปัญญา', '145 ถนนทุ่งโฮเต็ล ตำบลวัดเกต อำเภอเมือง จังหวัดเชียงใหม่ 50000', 'All,software,network', '18.792630', '99.017915', NULL, NULL),
(13, 'บริษัท ซีพี ออลล์ จำกัด (มหาชน) (ศูนย์กระจายสินค้าภาคเหนือ 7-11) ลำพูน', 'CP-all.png', 'About-Us-Banner@2x.png', 'บริษัท ซีพี ออลล์ จำกัด (มหาชน) (ศูนย์กระจายสินค้าภาคเหนือ 7-11) ตั้งอยู่ที่จังหวัดลำพูน ทำหน้าที่กระจายสินค้าไปยังจังหวัดใกล้เคียงในภาคเหนือตอนบน เพื่อรักษาความสดใหม่และทำให้สินค้าถูกจำหน่ายวันต่อวันสามารถเข้ามาวางขายในเซเว่นอีเลฟเว่นสาขาในภาคเหนือได้มากขึ้น รวมทั้งยังเป็นบริษัทที่ช่วยกระจายรายได้ให้กับชาวเหนือโดยเปิดรับผู้ที่มีความสามารถทั้งในด้านการตลาด หรือด้านไอที มาช่วยเติมเต็มให้ศูนย์กระจายสินค้าแห่งนี้สามารถกระจายสินค้าได้อย่างมีประสิทธิภาพมากขึ้น', '99 ม.4 ถนนป่าซาง-ลำพูน ต.หนองหนาม อ.เมือง จ.ลำพูน 51000', 'All,software', '18.499639', '98.998556', NULL, NULL),
(14, 'บริษัท เดอะ เอ็นจิเนียริ่ง คร๊าฟ จำกัด', 'tec.png', '18839368.jpg', 'บริษัท เดอะ เอ็นจิเนียริ่ง คร๊าฟ จำกัด ทำหน้าที่จำหน่ายชิ้นส่วนอุปกรณ์คอมพิวเตอร์ราคาส่ง ออกไปยังพ่อค้าคนกลางและร้านค้าขายปลีกทั่วไป โดยมีการตรวจสอบคุณภาพของอุปกรณ์อย่างดีเยี่ยมทุกชิ้นก่อนออกจำหน่าย รวมทั้งเป็นเจ้าที่ใหญ่ที่สุดในจังหวัดเชียงใหม่ และทำการกระจายสินค้าไปทั่วภาคเหนือตอนบน ทำให้ชิ้นส่วนต่างๆไม่หายาก หรือถูกกดราคา', '108/3 หมู่ 1 ตำบลหนองหอย อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ 50000', 'All,hardware', '18.753942', '99.003708', NULL, NULL),
(15, 'บริษัท สยามคอมเพรสเซอร์อุตสาหกรรม จำกัด', 'sci.jpg', 'Photo_7-4.jpg', 'SCI เป็นผู้ผลิตคอมเพรสเซอร์ระบบ ROTARY และระบบ Scroll สำหรับเครื่องปรับอากาศ และเครื่องทำความร้อน โดยมีส่วนแบ่งตลาดเป็นอันดับหนึ่งในประเทศไทย และขยายตลาดไปกว่า 50 ประเทศทั่วโลก บริษัทฯ ได้รับการรับรองมาตรฐาน ด้านระบบบริหารคุณภาพ ( ISO 9001 ) ระบบการจัดการด้านสิ่งแวดล้อม(ISO 14001) และระบบการจัดการด้านอาชีวอนามัย (มอก.18001) และรางวัลทรงคุณค่ามากมาย', '87/10 หมู่ 2 นิคมอุตสาหกรรมแหลมฉบัง ถนนสุขุมวิท ตำบลทุ่งสุขลา อำเภอศรีราชา จังหวัดชลบุรี 20230', 'All,hardware', '13.771491', '100.540953', '2019-03-19 12:03:06', '2019-03-19 12:03:06'),
(16, 'การไฟฟ้าส่วนภูมิภาคจังหวัดเชียงใหม่ 2', 'pea.jpg', '30848912_16.jpg', 'การไฟฟ้าส่วนภูมิภาค หรือ กฟภ. (Provincial Electricity Authority ตัวย่อ PEA) เป็นรัฐวิสาหกิจสังกัดกระทรวงมหาดไทย มีหน้าที่บริการจำหน่ายไฟฟ้าแก่ประชาชนในส่วนภูมิภาคทุกจังหวัดทั่วประเทศไทย ยกเว้นกรุงเทพมหานคร จังหวัดนนทบุรี และจังหวัดสมุทรปราการ ซึ่งเป็นเขตรับผิดชอบของการไฟฟ้านครหลวง\r\n', 'ศูนย์บ้านพักข้าราชการจังหวัดเชียงใหม่ สนามกีฬา 700 ปี อำเภอเมือง จังหวัดเชียงใหม่ 50300', 'All,hardware', '18.837321', '98.961731', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `pos_id` bigint(20) UNSIGNED NOT NULL,
  `ann_id` int(11) NOT NULL,
  `position_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` longtext COLLATE utf8mb4_unicode_ci,
  `duty` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `org_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `org_id`, `user_id`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'สถานที่ฝึกงานใกล้มหาวิทยาลัย บรรยากาศร่มรื่น พี่ๆเป็นกันเอง มีขนมฟรีให้หยิบ ฝึกงานเกี่ยวกับ dev ทั้งหมด ได้ลองเขียน web dev มีสาย mobile ร่วมด้วย เริ่มฝึกงานตั้งแต่ workshop เล็กๆ จนไปถึง Project ที่ได้รับมอบหมายกับเพื่อนๆที่ไปฝึกงานด้วยกัน มีไปดูงานนอกสถานที่บ้าง', 5, '2019-03-15 12:07:48', NULL),
(2, 1, 3, 'ที่ฝึกงานแอร์เย็นแต่ก็อบอุ่นดีครับ บรรยากาศการทำงานสบายๆ พี่ๆเป็นกันเอง ตลก คุยได้หลายเรื่อง สอน mobile ตั้งแต่การเริ่มออกแบบ UX/UI ลงไปถึงการเขียน code และ optimize ขั้นสูง เพื่อให้ application มีประสิทธิภาพ ได้รับประสบการณ์การเก็บ requirement โดยตรงจากลูกค้าเพื่อนำมาตีโจทย์ด้วย', 5, '2019-03-19 12:00:40', NULL),
(6, 2, 4, 'พี่ๆเป็นกันเองมาก ดูแลอย่างดี มีออกนอกสถานที่บ่อยๆ ที่นี่ไม่รับนักศึกษาฝึกงานหญิง เพราะพี่ๆที่บริษัทเป็นผู้ชายทั้งหมด ส่วนใหญ่ได้ออกไปติดตั้งตามสถานที่ต่างๆจริงๆ บางครั้งได้ config เป็นงานประเภทลุยๆ', 4, '2019-04-09 20:06:17', '2019-04-09 20:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `firstname`, `lastname`, `admin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Kunjanaphorn', 'Boonmak', 1, 'admin@gmail.com', NULL, '$2y$10$elbabult1KktAZEiuazr1OVujBA8PrqU7AVK24ej0n7NlybyvryRa', NULL, '2019-03-26 22:24:06', '2019-03-26 22:24:06'),
(2, 'Kunjanaphorn', 'Kunjanaphorn', 'Boonmak', 0, 'Pim@gmail.com', NULL, '$2y$10$lTaYCoXGoWsBTovpp/a9MevfHv5.b5xSpW8WDKDcMTKCZydnTHn3y', NULL, '2019-03-26 22:31:18', '2019-03-26 22:31:18'),
(3, 'Kan', 'Kan', 'Tippayamontree', 0, 'First@gmail.com', NULL, '$2y$10$9vUHLy3amj.pgdamDtCw6uG465gXTe08pis0DTVFhn2XuAMNhRrMe', NULL, '2019-03-26 22:32:49', '2019-03-26 22:32:49'),
(4, 'Tanawit', 'Tanawit', 'Prasertsak', 0, 'Aomsin@gmail.com', NULL, '$2y$10$SNYU/Ike/xFZ6MOV31VnUu0aQJxaRaUNZ5AIqOit.NthbIihXt7rW', NULL, '2019-04-09 20:05:01', '2019-04-09 20:05:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_orgs`
--
ALTER TABLE `list_orgs`
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
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fk_reviews_list_orgs_idx` (`org_id`),
  ADD KEY `fk_reviews_users1_idx` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `list_orgs`
--
ALTER TABLE `list_orgs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_list_orgs` FOREIGN KEY (`org_id`) REFERENCES `list_orgs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reviews_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
