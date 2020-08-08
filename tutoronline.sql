-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 06:37 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutoronline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`, `email`, `token`) VALUES
(1, 'admin', 'admin', 'shahzona8@gmail.com', 'svgh289cnt');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batchid` int(55) NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cduration` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdate` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` varchar(66) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batchid`, `cname`, `cteachby`, `cduration`, `cdate`, `ctime`) VALUES
(5, 'Learn English', 'John', '3 month', '2020-12-08', '12:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cmid` int(55) NOT NULL,
  `cid` int(55) NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cmid`, `cid`, `name`, `email`, `msg`) VALUES
(1, 8, 'shahzona', 'shahzonaashraf@gmail.com', ' i can say this course is amazing and I 1 i think my English is better and I look forward to continue next English level');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(55) NOT NULL,
  `cmaincategory` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdiscription` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cfee` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cduration` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cimage` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `cmaincategory`, `cname`, `cteachby`, `cdiscription`, `cfee`, `cduration`, `status`, `cimage`) VALUES
(8, 'LANGUAGE', 'Learn English', 'John', '<p><strong><em>In this course,</em></strong> you will learn about the basic foundational principles of<br />\r\nlanguage acquisition and the basic techniques founded upon those<br />\r\nprinciples. It will describe second or foreign language theories, and basic<br />\r\nstudies in second language acquisition and their pedagogical</p>\r\n\r\n<p>implications. It will elaborate upon basic design for lesson plans and<br />\r\nprovide access to professional resources. You will learn how to listen to<br />\r\nclass lectures and take notes more effectively. <em><strong>You will also improve<br />\r\nyour speaking skills for common tasks such as class discussions and<br />\r\npresentations</strong></em>.</p>\r\n\r\n\r\n', '35$', '3 month', 'Approve', '../pic/englishc.jpg'),
(9, 'LANGUAGE', 'Chinese for beginners', 'John', '<p><strong>This is a Chinese course for beginners,</strong> including introduction of phonetics and daily expressions. After taking this class, learners can have a basic understanding of Chinese Mandarin and make basic conversations of daily living such as exchanging personal information, talking about daily arrangements and food, asking about price, introducing the city and the weather, telling your hobbies etc. <em><strong>Selected topics and situations come from real life scenarios and can be used for everyday communications.</strong></em></p>\r\n', '35$', '3 month', 'Approve', '../pic/chinesec.jpg'),
(10, 'DESIGN', 'UI/UX design', 'Amna', '<p><strong>The UI/UX Design course brings a design-centric approach to user interface and user experience design,</strong> and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone. In this course, you will summarize and demonstrate all stages of the UI/UX development process, from user research to defining a project&rsquo;s strategy, scope, and information architecture, to developing sitemaps and wireframes. You&rsquo;ll learn current best practices and conventions in UX design and apply them to create effective and compelling screen-based experiences for websites or apps.</p>\r\n', '30$', '3 month', 'Approve', '../pic/uxc.jpg'),
(11, 'PHOTOGRAPHY', ' guide to photography', 'Amna', '<p>The UI/UX Design course brings a design-centric approach to user interface and user experience design, and offers practical, skill-based instruction centered around a visual communications perspective, rather than on one focused on marketing or programming alone. In this course, you will summarize and demonstrate all stages of the UI/UX development process, from user research to defining a project&rsquo;s strategy, scope, and information architecture, to developing sitemaps and wireframes. You&rsquo;ll learn current best practices and conventions in UX design and apply them to create effective and compelling screen-based experiences for websites or apps.</p>\r\n', '30$', '3 month', 'Approve', '../pic/photoc.jpg'),
(12, 'SEO', 'SEO', 'Dr Andrew', '<p>In this course you will learn the&nbsp;importance of keywords to SEO, how to find out what people are searching for online and how often, and how to&nbsp;pick the right SEO keywords. You will also hear about the things you can do to your site to prepare, to ensure the site has the best chance to rank well.</p>\r\n\r\n<p>This course will explain the role of&nbsp;content&nbsp;&ndash; text &ndash; in your Web pages, and how to optimize the various important tags in your page. You&#39;ll also hear about&nbsp;structured data markup, a way to tell the search engines what the content in your pages actually represents &ndash; products, software, reviews, people, music, articles, and more.</p>\r\n\r\n<p>You will learn the best ways to&nbsp;&ldquo;submit&quot; your site to the search engines, how to work with search directories, and about the Webmaster accounts, Google Search Console.</p>\r\n\r\n<p>You will also hear about what the hardest part about search engine optimization is often, linking&nbsp;getting links from other sites pointing back to yours. This course will explain in detail why this is so important, how links should be structured, and how to get them.</p>\r\n', '35$', '3 month', 'Approve', '../pic/seoc.jpg'),
(13, 'MARKETING', 'marketing strategy ', 'Dr Andrew', '<p>About course: You&rsquo;ll learn key principles in this course</p>\r\n\r\n<p>- Branding: brand equity is one of the key elements of keeping customers in a dynamic world in which new startups are emerging constantly.</p>\r\n\r\n<p>&nbsp;- Customer centricity: not synonymous with customer service, customer centricity starts with customer focus and need-gathering.</p>\r\n\r\n<p>&nbsp;- Go-to-market strategies: understand the drivers that influence customers and see how these are implemented prior to making an investment.</p>\r\n', '25$', '2 month', 'Approve', '../pic/markc.jpg'),
(14, 'DEVELOPMENT', 'Web Development', 'Aneeka', '<p><strong>This course covers</strong> the basics of modern full stack web development, from UX design to front-end coding to custom databases. You&rsquo;ll build foundational skills in a full range of technologies, including HTML/CSS, JavaScript, and MongoDB, and you&rsquo;ll learn to implement a reactive, multi-user web application using the meteor.js framework. We&rsquo;ll also touch on more advanced topics, such as APIs, data visualization, and animation.</p>\r\n\r\n<p>&nbsp;You will add several projects to your portfolio to demonstrate your skill and growth throughout this course. You will create web pages using basic elements to control layout and style, use responsive web design principles to take a site from wireframe to website, implement security features, and create collaborative multi-user experiences. Just like any professional full stack web developer,<strong> you will build accessibility and usability into your responsive websites.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '35$', '3 month', 'Approve', '../pic/webc.jpg'),
(15, 'IT & SOFTWARE', 'Software Development', 'Aneeka', '<p>This course is for people who are new to software<strong> </strong>engineering. It&#39;s also for those who have already developed software but wish to gain a deeper understanding of the underlying context and theory of software development practices.</p>\r\n\r\n<p>At the end of this course, you will to be able to:</p>\r\n\r\n<p>1.) Build high-quality and secure software using SDLC methodologies such as agile, lean, and traditional/waterfall.</p>\r\n\r\n<p>2.) Analyze a software development team&#39;s SDLC methodology and make recommendations for improvements.</p>\r\n\r\n<p>3.) Compare and contrast software development methodologies with respect to environmental, organizational, and product constraints.</p>\r\n', '40$', '4 month', 'Approve', '../pic/itc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enrollid` int(55) NOT NULL,
  `sname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semail` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enrollid`, `sname`, `semail`, `cname`, `cteachby`, `status`) VALUES
(3, 'Mehwish', 'mehwish@gmail.com', 'Learn English', 'John', 'student'),
(4, 'Aimen', 'aiemen@gmail.com', 'Chinese for beginners', 'John', 'student'),
(5, 'Mehwish', 'mehwish@gmail.com', ' guide to photography', 'Amna', 'trial'),
(6, 'Mehwish', 'shahzona8@gmail.com', 'Learn English', 'John', 'trial');

-- --------------------------------------------------------

--
-- Table structure for table `getintouch`
--

CREATE TABLE `getintouch` (
  `id` int(55) NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `getintouch`
--

INSERT INTO `getintouch` (`id`, `name`, `email`, `msg`) VALUES
(2, 'shahzona', 'shahzonaashraf@gmail.com', 'wertyui'),
(3, '2016-dvm-058', 'shonaashraf2@yahoo.com', 'ffghj'),
(4, 'kiran3', 'mahrukh@gmail.com', 'fghjk'),
(5, '2016-dvm-058', 'shonaashraf2@yahoo.com', 'dfdghjk');

-- --------------------------------------------------------

--
-- Table structure for table `linkk`
--

CREATE TABLE `linkk` (
  `linkid` int(55) NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkk` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linkk`
--

INSERT INTO `linkk` (`linkid`, `cname`, `cteachby`, `linkk`) VALUES
(3, 'Chinese for beginners', 'John', ''),
(4, 'Learn English', 'John', 'dfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(55) NOT NULL,
  `sname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slastname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semail` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spwd` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sintro` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgender` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `simage` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scountry` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `slastname`, `semail`, `spwd`, `sintro`, `sgender`, `simage`, `scountry`, `token`) VALUES
(1, 'Mehwish', 'Jabeen', 'shahzona8@gmail.com', 'jabeen', '<p>Student</p>\r\n', 'female', '../pic/s2.jpg', 'Pakistan', '03df67Ag80'),
(2, 'Aimen', 'Abad', 'aiemen@gmail.com', 'aimen', '<p>Student</p>\r\n', 'female', '../pic/f5.jpg', 'scountry', '03Dm67Ag71');

-- --------------------------------------------------------

--
-- Table structure for table `submitasignmnt`
--

CREATE TABLE `submitasignmnt` (
  `id` int(55) NOT NULL,
  `sname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filee` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submitasignmnt`
--

INSERT INTO `submitasignmnt` (`id`, `sname`, `cname`, `aname`, `filee`, `status`, `cteachby`, `date`, `grade`) VALUES
(4, 'Mehwish', 'Learn English', 'Cv Practice', 'linknamehere', 'Submitted', 'John', 'Fri_Jul_2020', 'A'),
(5, 'Mehwish', 'Learn English', 'assignment', 'linknamehereqwert', 'Submitted', 'John', 'Sat_Jul_2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(55) NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(55) NOT NULL,
  `cname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cteachby` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdate` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filee` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `cname`, `cteachby`, `taskname`, `cdate`, `filee`) VALUES
(10, 'Learn English', 'John', 'Cv Practice', 'Time Out', '../pic/CV FOR U (1).doc'),
(11, 'Learn English', 'John', 'assignment ', '2020-03-08', '../pic/CV FOR U (1).doc'),
(12, 'Learn English', 'John', 'Write a Story', '2020-09-08', '../pic/Information Technology.docx');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(55) NOT NULL,
  `tname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlastname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temail` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tpwd` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tintro` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgender` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timage` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcountry` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tname`, `tlastname`, `temail`, `tpwd`, `tintro`, `tgender`, `timage`, `tcountry`, `token`) VALUES
(14, 'John', 'Noah', 'john@gmail.com', 'john', '<p><strong>Qualification</strong>: BA (Art History), A Level</p>\r\n\r\n<p><strong>Subjects</strong>: SATs, SET Test, GCSE Literature and Language (all boards), KET, PET, IELTS, TOEFL</p>\r\n\r\n<p>I am a native English speaker with extensive subject knowledge of language, linguistics and literature and have been teaching English to students aged 3-73 for 18 years, both privately and in international language schools. My lessons are enjoyable and successful learning experiences which are diligently planned and professionally executed.</p>\r\n', 'male', '../pic/man.jpg', 'England', '03df67ag80'),
(15, 'Amna', 'Tahir', 'shahzona8@gmail.com', 'amnaa', '<p><strong>Qualification</strong>: BA(fine art), MA(art &amp; design)</p>\r\n<p><strong>Subjects</strong>: Art, drawing, painting, photography</p>\r\n<p>I am a former Head of Art who has taught Art at AVS and A level for the last 8 years and also have experience teaching Art BTEC, Art textiles and Photography. I have a BA Hons in Fine Art and an up to date DBS check. I currently teach at a KENT grammar school and specialize in GCSE and A level support. Please contact me for support with your GCSE/ A level skills and coursework including drawing, painting, mixed media, analyzing artworks, Photoshop etc.</p>\r\n', 'female', '../pic/f2.jpg', 'Pakistan', '63df67Ag85'),
(16, 'Dr Andrew', 'Neil', 'neil@gmail.com', 'neil', '<p><strong>Qualification</strong>: bs(Computer Science)Ms(CS)</p>\r\n<p><strong>Subjects</strong>: SEO,Digital Marketing&nbsp;</p>\r\n<p>I am a Digital Marketing Executive with a solid portfolio of projects demonstrating skills across a wide range of digital marketing activities. I hold the CIM Digital Diploma in Professional Marketing which incorporates the Digital Strategy elective. I am also Proffessional in SEO (search engine optimization)</p>\r\n', 'male', '../pic/f4.jpg', 'US', '03hf67Ag86'),
(17, 'Aneeka', 'Deep', 'aneeka@gmail.com', 'aneeka', '<p><strong>Qualification</strong>:Bachelor of Science in Information Technology from chicago</p>\r\n<p><strong>Subjects</strong>:JavaScript, JQuery, HTML, HTML5, CSS, CSS3, Web Programming Skills, E-Commerce, Teamwork, Verbal Communication, cross-browser compatibility, Web User Interface Design (UI)</p>\r\n\r\n<p>2018 to 2019 | DYL Company&ndash; Sometown, NC</p>\r\n\r\n<p>Collaborated in a team-focused</p>\r\n\r\n<p>environment providing software solutions to diverse industry clients.</p>\r\n\r\n<ul>\r\n	<li>Helped build and enhance highly available, scalable, real-time and secure systems used by customers worldwide.</li>\r\n	<li>Completed eight major projects, working closely with agile development team to develop, test and maintain Web- and desktop-based software applications.</li>\r\n	<li>Adhered to high-quality development standards while delivering solutions on-time and on-budget.</li>\r\n</ul>\r\n', 'female', '../pic/images.jpg', 'India', '83df67Ag84');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enrollid`);

--
-- Indexes for table `getintouch`
--
ALTER TABLE `getintouch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkk`
--
ALTER TABLE `linkk`
  ADD PRIMARY KEY (`linkid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `submitasignmnt`
--
ALTER TABLE `submitasignmnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batchid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cmid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enrollid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `getintouch`
--
ALTER TABLE `getintouch`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `linkk`
--
ALTER TABLE `linkk`
  MODIFY `linkid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submitasignmnt`
--
ALTER TABLE `submitasignmnt`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
