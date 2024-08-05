-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 07:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(1, 2, 'Pride and Prejudice', 85000, 1, 'pride-and-prejudice.jpg'),
(2, 17, 'Sunny Everywhere (SBS)', 84000, 1, 'sunny.jpg'),
(3, 15, 'Salah Piknik', 70400, 1, 'salpik.jpg'),
(4, 15, 'Rindu', 84450, 1, 'rnd.jpg'),
(5, 15, 'Pulang Pergi', 84550, 1, 'pp.jpg'),
(6, 19, 'Mati Di Jogjakarta', 64350, 1, 'mj.jpg'),
(7, 19, 'Ranah 3 Warna', 96000, 1, 'r3w.jpg'),
(8, 5, 'You Do You', 94000, 1, 'you_doyou.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(4, 4, 'Risma', 'risma@gmail.com', '08456727288', 'bukunya bagus-bagus, banyak buku yang susah dicari tapi disini lengkap'),
(5, 5, 'Maidy', 'maidy@gmail.com', '0812344667', 'bukunya bagus-bagus'),
(7, 7, 'Vivi', 'vivi@gmail.com', '01234566677', 'bukunya banyak yang masih baru'),
(9, 9, 'Natasya', 'natnat@gmail.com', '087654257484', 'buku-bukunya banyk yang baru, adi tidak ketiggalan zaman\r\n'),
(11, 11, 'Laira Deinsa', 'lala@gmail.com', '5', 'Tokonya sangat keren, banyak buku-buku yang susah buat dicari'),
(15, 15, 'Dimimi', 'dimimi@gmail.com', '085126373937', 'bukunya lengkap disini'),
(17, 17, 'Shella Anisa', 'shellaa@gmail.com', '087654246380', 'buku-bukunya sangat murah'),
(19, 19, 'Natalia', 'nata@gmail.com', '08554372829', 'bukunya murah-murah, tokonya juga sangat mudah dicari');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `prov`, `biaya`) VALUES
(22, 'Jawa Timur', 10000),
(33, 'Jawa Timur', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `norek` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(11) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `norek`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'Fawwaz', '085523456', 'fawwazz@gmail.com', 'paypal', '334455', 'rumah no. 19, jln Mangga, Pasuruan, Indonesia - 65443', ', You Do You (1) , Laut Bercerita (1) ', 194000, '16-Dec-2022', ''),
(5, 7, 'Vivi Avifah', '01234566677', 'vivi@gmail.com', 'credit card', '123456', 'rumah no. 12, jln Pintu Gerbang, Pamekasan, Indonesia - 112233', ', Sunny Everywhere (SBS) (1) ', 84000, '16-Dec-2022', ''),
(7, 7, 'Indri', '085655300150', 'pindri@gmail.com', 'cash on delivery', '085655300150', 'rumah no. 30, jln Anggrek 1, Mojokerto, Indonesia - 12345', ', Sunny Everywhere (SBS) (1) ', 84000, '15-Dec-2022', 'completed'),
(9, 5, 'Maidy', '0812344667', 'maidy@gmail.com', 'cash on delivery', '33456', 'rumah no. 12, jln Melon, Pasuruan, Indonesia - 12334', ', Sang Pemanah (1) ', 119500, '16-Dec-2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `sinopsis` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `publisher`, `writer`, `genre`, `sinopsis`, `price`, `image`) VALUES
(2, 'Pride and Prejudice', 'Mizan', 'Jane Austen', 'Romance', 'Kisah romansa klasik terpopuler oleh Jane Austen', 85000, 'pride-and-prejudice.jpg'),
(3, 'Laut Bercerita', 'Kepustakaan Populer Gramedia', 'Leila S. Chudori', 'Fantasi', 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.', 100000, 'laut_bercerita.png'),
(10, 'You Do You', 'Gramedia Pustaka Utama', 'Fellexandro Ruby', 'Novel', '\"Mas, gimana kalau passion gue belum menghasilkan?\" \"Mas, apakah lebih baik jadi generalis atau spesialis?\"\"Mas, gue pengin bisa ganti haluan karier di bidang yang lain, bisakah?\"Mas, gue lagi di tengah-tengah quarter-life crisis. Help me.\" \"Mas, gue bingung ikigai gue apa.\"\"Mas, emang di usia 30 nanti, secara finansial gue udah mesti punya apa aja?\"\"Mas, berbagi dong proses lo menuju ke Rp1M pertama.\"I feel you. Gue juga pernah mengalami keresahan yang sama. Faktanya, satu dekade pertama dalam perjalanan karier gue dihabiskan untuk bereksperimen dengan sembilan macam role yang berbeda, sampai akhirnya gue menemukan ikigai. Sales, petugas lelang, operator alat berat, travel blogger, food photographer, penyanyi, social media manager, product manager di sebuah tech startup, sampai pengusaha pernah gue jalani. Menariknya, semua kegalauan dan pencarian itu mulai terjawab dengan sendiri6nya ketika gue bisa menjawab pertanyaan: \"Who are you?\"  Ketika gue mengenal diri sendiri, maka pada titik itulah gue menemukan jawaban bahwa \"your life (career, business, relationship, and finance) should be an extension of who you are\". Buku ini nggak ngasih jawaban langsung, tapi ngebantu merefleksi diri, melihat ke dalam, mengurai situasi, supaya lo bisa menemukan sendiri jawaban, kapan pun lo bertemu dengan persimpangan. ', 94000, 'you_doyou.png'),
(13, 'Sunny Everywhere (SBS)', 'Gramedia', 'Sunny Dahye', 'Romansa', 'Growing up to me wasn’t so “Chanel”… Hidup di balik layar YouTube kadang terlihat seperti dongeng. Ada merek-merek mahal, sarapan mewah, penerbangan business-class, dan negeri-negeri yang jauh. Hidup di balik YouTube kelihatan seperti hidup yang sangat enak dijalani, hidup yang bikin penontonnya iri. Tapi apakah memang seperti itu kenyataannya? Sunny Dahye memulai perjalanannya sebagai YouTuber bahkan sebelum kanal itu dikenal banyak orang. Kini dia bisa membeli baju dan sepatu mahal, terbang ke tempat-tempat indah, menginap di hotel berbintang lima. Hidupnya, indah di layar ponselmu. Di mana, sebaliknya, sama seperti hidup kebanyakan orang, hari-hari Sunny juga tentang kegagalan, kekecewaan, keraguan, dan penyesalan. Di saat impiannya satu per satu terwujud, Sunny justru tersesat, tidak tahu harus ke mana. Di buku ini Sunny membuka sedikit hatinya, dan luka-luka yang harus dia telan pahitnya, sebelum dia menjadi Sunny yang kamu kenal hari ini. “So yeah, reality hurts. You’re welcome,” she said.', 84000, 'sunny.jpg'),
(14, 'Salah Piknik', 'Gramedia', 'Joko Pinurbo', 'Horror', 'Salah Piknik adalah kumpulan puisi Joko Pinurbo yang sebagian besar isinya merespons fenomena yang terjadi selama wabah corona melanda dunia. Puisi-puisinya menampilkan permainan kata yang bernada humoris sekaligus getir. Sindiran dan kritik juga hadir dalam buku ini. Dilengkapi dengan ilustrasi karya Alit Ambara, buku puisi ini hadir sebagai dokumentasi sosial yang penting merekam banyak hal baru yang terjadi selama pandemi.', 70400, 'salpik.jpg'),
(15, 'Rindu', 'Sabakgrip', 'Tere Liye', 'Romansa', '\"Apalah arti memiliki, ketika did kami sendiri bukanlah milik kami? Apalah arti kehilangan, ketika kami sebenarnya menemukan banyak saat kehilangan dan sebaliknya, kehilangan banyak pula saat menemukan?Apalah arti cinta, ketika menangis terluka atas perasaan yg seharusnya indah? Bagaimana mungkin, kami terduduk patah hati atas sesuatu yang seharusnya suci dan tidak menuntut apa pun?Wahai, bukankah banyak kerinduan saat kami hendak melupakan? Dan tidak terbilang keinginan melupakan saat kami dalam rindu? Hingga rindu dan melupakan jaraknya setipis benang saja', 84450, 'rnd.jpg'),
(16, 'Tapak Jejak', 'Mediakita', 'Fiersa Besari', 'Petualangan', 'Bulan April, tahun 2013 berawal dari niat dan tujuan yang berbeda,tiga pengelana memulai sebuah perjalanan meyusuri daeraah - daerah di indonesia. meski akhirnya teman seperjalanan satu per satu memilih arah pulang, langkah yang sudah dijejakkan harus diteruskan', 88250, 'tj.jp'),
(17, 'Pulang Pergi', 'Sabakgrip', 'Tere Liye', 'Romansa', 'Ada jodoh yang ditemukan lewat tatapan pertama.Ada persahabatan yang diawali lewat sapa hangat.Bagaimana jika takdir bersama ternyata,diawali dengan pertarungan mematikan?Lantas semua cerita berkelindan dengan,pengejaran demi pengejaran mencari jawaban? Pulang-Pergi', 84550, 'pp.jpg'),
(18, 'Mati Di Jogjakarta', 'Mediakita', ' Egha De Latoya', 'Romansa', '“Entah pada akhirnya nanti,aku mati dalam pelukan atau dalam perpisahan.”', 64350, 'mj.jpg'),
(19, 'Insecurity', 'Alvi Ardhi Publishing', 'Alvi Ardani', 'Fiksi', '1. Kenapa good-loking yang selalu dipilih?2. Lalu, siapa yamg akan memilihku? 3. Aku juga kayaknya nggak bisa apa-apa deh. 4. Skill apa, ya, yang cocok buat aku? | 5. Tapi, aku harus mulai dari mana, ya? 6. Aku bukan malas, hanya takut gagal lagi. 7. Dan, aku malu, belum bisa banggain orangtua. 8. Dan, aku kalah jauh dari teman-temanku.9. Jujur, aku iri sama pencapaian mereka. 10. Nggak ada yang bisa dibanggakan dariku.', 83700, 'insecure.jpg'),
(20, 'Not So Silly', 'KPG', 'NAELA ALI', 'Novel', 'This book is about you.A 12 month undated planner where you have your freedom to start arranging your not-so-ordinary-plans.Filled with some fun activities to do when youre bored (or not).Also included are some stickers to beautify the cover making it uniquely yours.And if its not enough, you can also get the Not so Silly Stickers & Postcard Book.\"Go get them and make your journaling experience even more fun!Well. this is your not-so-ordinary to accompany your  not-so-silly-life.-@SillyGillyDaily', 119200, 'silly.jpg'),
(21, 'Rapijali', 'Bentang Pustaka', 'Dee Lestari', 'Novel', 'Ping merasa telah memiliki segala yang ia butuhkan. Dunianya yang damai di Pantai Batu Karas,rumahnya yang penuh alat musik di tepi Sungai Cijulang, seorang sahabat terbaik, serta kakek yangmenyayanginya. Namun, diam-diam Ping menyimpan kegelisahan tentang masa depannya yangburam. Bakat musiknya yang istimewa tidak memiliki wadah, dan ia tidak berani bercita-cita.Hidup Ping jungkir balik ketika ia harus pindah ke Jakarta dan tinggal bersama keluarga calongubernur. Ping mesti menghadapi sekolah baru, kawan-kawan baru, dan tantangan baru.Mungkinkah ia menemukan apa yang hilang selama ini? Dan, apakah Ping siap dengan yang iatemukan? Bahwa, hidupnya ternyata tidak sesederhana yang ia duga.', 94050, 'rj.jpg'),
(22, 'Unlimited You', 'Penerbit Kata Depan', 'Wirdha Mansyur', 'Sastra', 'Ability is something that you can create. Ini bukan masalah orang itu beruntung, genius, pintar, dan sebagainya. Ini tentang orang yang paham apa kemampuannya, atau mau mencari tahu kemampuannya, kemudian dia asah, dia kembangkan, dia berproses, dan dia tidak berhenti berbuat.Kalau kita mencari sesuatu berdasarkan kemampuan kita, yang kita dapat ya segitu-gitunya aja, atau malah mentok sana sini. Kalau kita mencari dengan kemampuan Allah? Maka, bisa jadi nggak terbatas. Kemampuan manusia itu ada batasnya. Namun, tidak dengan kemampuan Allah.  Jika kita melihat kemampuan kita, emang juga serbaterbatas. Untuk itu, lihatnya ke Allah aja. Kemampuan Allah. Kemampuan yang super-unlimited. Sehingga, kita pun jadi ketularan unlimited-nya.', 94050, 'uy.jpg'),
(23, 'Sang Pemanah', 'Gramedia', 'Sang Alkemis', 'Sastra', 'Paulo Coelho, pengarang buku bestseller internasional SANG ALKEMIS, menceritakan kisah inspiratif tentang seorang anak yang mencari kebijaksanaan dan pelajaran tentang kehidupan dari Sang Pemanah. Buku ini disertai ilustrasi ilustrasi indah oleh Martin Dima. Gandewa adalah pemanah ulung yang pernah sangat termasyhur, namun dia telah mengundurkan diri dari duna ramai. Suatu hari, seorang anak lelaki datang mencarinya bersama seorang asing. Begitu banyak yang ditanyakan anak ini, dan Gandewa menjawab dengan menggambarkan Jalan Busur serta prinsip-prinsip utama dalam menjalani kehidupan yang bermakna. Dalam cerita yang disampaikan dengan sederhana ini, Paulo Coelho bertutur tentang pokok-pokok penting dalam kehidupan, antara lain kerja keras dan antusiasme, berani mengambil risiko, tidak takut gagal, dan menerima hal-hal tak terduga yang disodorkan oleh nasib.', 119500, 'sp.jpg'),
(24, 'Ranah 3 Warna', 'Gramedia', 'A. Fuadi', 'Sastra', 'Alif baru saja tamat dari Pondok Madani. Dia bahkan sudah bisa bermimpi dalam bahasa Arab dan Inggris. Impiannya? Tinggi betul. Ingin belajar teknologi tinggi di Bandung seperti Habibie, lalu merantau sampai ke Amerika.   Dengan semangat menggelegak dia pulang kampung ke Maninjau dan tak sabar ingin segera kuliah. Namun kawan karibnya, Randai, meragukan Alif mampu lulus UMPTN. Lalu dia sadar, ada satu hal penting yang dia tidak punya. Ijazah SMA. Bagaimana mungkin mengejar semua cita-cita tinggi tanpa ijazah?  Alif baru saja tamat dari Pondok Madani. Dia bahkan sudah bisa bermimpi dalam bahasa Arab dan Inggris. Impiannya? Tinggi betul. Ingin belajar teknologi tinggi di Bandung seperti Habibie, lalu merantau sampai ke Amerika.   Dengan semangat menggelegak dia pulang kampung ke Maninjau dan tak sabar ingin segera kuliah. Namun kawan karibnya, Randai, meragukan Alif mampu lulus UMPTN. Lalu dia sadar, ada satu hal penting yang dia tidak punya. Ijazah SMA. Bagaimana mungkin mengejar semua cita-cita tinggi tanpa ijazah?   Terinspirasi semangat tim dinamit Denmark, dia mendobrak rintangan berat. Baru saja dia tersenyum, badai lain menggempurnya silih berganti tanpa ampun. Alif letih dan mulai bertanya-tanya: “Sampai kapan aku harus teguh bersabar menghadapi semua cobaan hidup ini?” Hampir saja dia menyerah.   Rupanya “mantra” man jadda wajada saja tidak cukup sakti dalam memenangkan hidup. Alif teringat “mantra” kedua yang diajarkan di Pondok Madani: man shabara zhafira. Siapa yang bersabar akan beruntung. Berbekal kedua mantra itu dia songsong badai hidup satu persatu. Bisakah dia memenangkan semua impiannya?   Ke mana nasib membawa Alif? Apa saja 3 ranah berbeda warna itu? Siapakah Raisa? Bagaimana persaingannya dengan Randai? Apa kabar Sahibul Menara? Kenapa sampai muncul Obelix, orang Indian, Michael Jordan, dan Kesatria Berpantun? Apa hadiah Tuhan buat sebuah kesabaran yang kukuh?   Ranah 3 Warna adalah hikayat tentang bagaimana impian tetap wajib dibela habis-habisan walau hidup digelung nestapa tak berkesudahan. Tuhan sungguh bersama orang yang sabar. Alif baru saja tamat dari Pondok Madani. Dia bahkan sudah bisa bermimpi dalam bahasa Arab dan Inggris. Impiannya? Tinggi betul. Ingin belajar teknologi ting  Terinspirasi semangat tim dinamit Denmark, dia mendobrak rintangan berat. Baru saja dia tersenyum, badai lain menggempurnya silih berganti tanpa ampun. Alif letih dan mulai bertanya-tanya: “Sampai kapan aku harus teguh bersabar menghadapi semua cobaan hidup ini?” Hampir saja dia menyerah.   Rupanya “mantra” man jadda wajada saja tidak cukup sakti dalam memenangkan hidup. Alif teringat “mantra” kedua yang diajarkan di Pondok Madani: man shabara zhafira. Siapa yang bersabar akan beruntung. Berbekal kedua mantra itu dia songsong badai hidup satu persatu. Bisakah dia memenangkan semua impiannya?   Ke mana nasib membawa Alif? Apa saja 3 ranah berbeda warna itu? Siapakah Raisa? Bagaimana persaingannya dengan Randai? Apa kabar Sahibul Menara? Kenapa sampai muncul Obelix, orang Indian, Michael Jordan, dan Kesatria Berpantun? Apa hadiah Tuhan buat sebuah kesabaran yang kukuh?   Ranah 3 Warna adalah hikayat tentang bagaimana impian tetap wajib dibela habis-habisan walau hidup digelung nestapa tak berkesudahan. Tuhan sungguh bersama orang yang sabar. Alif baru saja tamat dari Pondok Madani. Dia bahkan sudah bisa bermimpi dalam bahasa Arab dan Inggris. Impiannya? Tinggi betul. Ingin belajar teknologi', 96000, 'r3w.jpg'),
(25, '100 Day Left', 'Alex Media Komputindo', 'Kokone Nata', 'Komik', 'Seorang teman baru bertambah dalam kehidupan Shuto dan Chiho yang tinggal bersama selama 100 hari!! Tidak kalah dengan anak-anak TK yang semangat meskipun musim hujan, para remaja pun harus berjuang untuk belajar!', 36000, '100dl.jpg'),
(26, 'Menulusuri Jejak 25 Nabi', 'Grasindo', 'Ira Irmawati', 'Fiksi', 'Raja Thalut cemas , Dibalik tembok-tembok tinggi Azeka,pasukan Filistin bersiap menyerang kerajaannya.Para Prajurit Filistin tinggi dan besar.Tak sebanding dengan prajurit-prajurit Raja Thalut', 76800, 'menyusuri25nabi.jpg'),
(29, 'Jodoh, Takdir, & Kamu', 'Gramedia', 'Haizofers', 'Romansa', 'Buku Ini Soal Jodoh, Takdir, dan Kamu: Kita Bisa Apa? berangkat dari melihat banyak akunfanbase Haico dan Azof (Haizof) yang senang mengekspresikan kecintaan mereka pada idolamereka dengan menciptakan kata-kata indah (quotes) atau puisi.Buku kumpulan quotes ini mengangkat tema seputar jodoh dan takdir. Sasaran dari bukuini adalah semua orang bukan hanya fans Haizof, terutama mereka yang saat ini sedang galausoal jodoh.Sekencang apa pun kamu berlari,sekuat apa pun kamu mencoba menghapus semuanya,sebanyak apa pun rintangan yang ada,kalau Tuhan sudah menakdirkan dia untukmu…kamu bisa apa?Buku ini seakan menjadi bukti bahwa Haizofers adalah fanbase yang “nggak ‘kaleng-kaleng’”dan senantiasa membagikan hal-hal positif pada sekitar seperti yang selalu ditekankan oleh idolamereka, yakni “Spread Love” dan terus berkarya.', 88000, 'jodoh.jpg'),
(30, 'Respati', 'MC', 'Ragiel JP', 'Horror', 'Kejadian mengerikan terjadi di Yogyakarta. Para korban ditemukan tewas tergantung dalam posisi terbalik. Tidak ada satu pun yang tahu siapa pelaku semua pembunuhan itu. Namaku Respati. Aku mempunyai kemampuan aneh, yaitu bisa masuk ke dalam mimpi seseorang hanya dengan menyentuh kulit Si Pemimpi. Aku sudah terbiasa dengan kemampuan ini sebelum mengenal Wulan yang ternyata mimpinya tidak bisa kutembus. Dari Wulan-lah aku tahu bahwa aku seorang Penjelajah Mimpi. Dari Wulan pula aku tahu bahwa semua kasus pembunuhan itu berhubungan erat dengan kemampuanku.Keunggulan:Fantasi lokal yang mengangkat tema Lucid Dream, ditambah dengan bumbu misteri. Dengan setting Yogyakarta yang detail, pembaca akan diajak untuk memecahkan teka-teki siapa dalang sebenarnya di dalam cerita ini. Dan dengan alur cerita yang runtut dan mengalir, pembaca juga akan menamatkan cerita ini dalam sekali duduk.Selain itu, novel ini menampilkan informasi mengenai Penjelajah Mimpi yang mudah dipahami. Termasuk bacaan ringan, tapi dengan isi yang berisi. ', 60000, 'respati.jpg'),
(31, 'Empedu Tanah', 'Gramedia', '-', 'Sastra', 'TAMU TAK BERMALUMeski selembut gerak asap rokokAtau sekeras palu kuli bangunan menghancurkan tembokUpaya mengusirnya serupa hasrat mengubah batang kelapa jadi tongkat musaTamu tak diundang dan tak bermalu ini akan pergi, hanya bila kita tak lagi berdenyut nadi.2016', 64000, 'empedu.jpg'),
(32, 'Sepotong Hati Baru', 'Sabakgrip', 'Tere Liye', 'Romansa', 'Kita hanya punya sepotong hati, bukan? Satu-satunya - Tere Liye.Lantas bagaimana kalau hati itu terluka? Disakiti justru oleh orang yang kita cintai? Aduh, apakah kita bisa mengobatinya? Apakah luka itu bisa pulih, tanpa bekas? Atau jangan-jangan, kita harus menggantinya dengan sepotong hati yang baru?.Lantas, apakah tetap cinta namanya meski telah kehilangan kepercayaan dan komitmen? Apakah kita bersedia mengorbankan cinta demi kepentingan yang lebih besar, atau tetap dengan ego demi kebahagiaan sendiri? Ada banyak pertanyaan tentang sepotong hati ini..Semoga datanglah pemahaman baik itu. Bahwa semua pengalaman cinta dan perasaan adalah spesial. Sama spesialnya dengan milik kita. Tidak peduli sesederhana apa pun itu, sepanjang dibungkus dengan pemahaman-pemahaman yang baik.Selamat membaca cerita-cerita Sepotong Hati yang Baru.', 74600, 'sepotong.jpg'),
(33, 'Closed Casket', 'Gramedia', 'Sophia Hannah', 'Fantasi', '\"Apa yang hendak kusampaikan ini akan membuatmu kaget.\" Dengan ucapan itu, Lady Athelinda Playford--salah satu penulis buku anak-anak yang paling dicintai--membuat kaget pengacara yang dipercaya untuk mengurus surat wasiatnya. Ketika para tamu berdatangan ke pesta di rumah megahnya, Lady Playford memutuskan untuk mencoret kedua anaknya dari surat wasiat dan tidak mewariskan sepeser pun. Harta kekayaannya yang banyak itu diberikan kepada orang lain: orang invalid yang hidupnya tinggal beberapa minggu lagi. Di antara tamu-tamu Lady Playford ada dua orang asing: Hercule Poirot, sang detektif Belgia yang terkenal, dan Inspektur Edward Catchpool dari Scotland Yard. Keduanya tidak tahu kenapa mereka diundang. sampai Poirot mulai bertanya-tanya apakah Lady Playford sedang menunggu terjadinya pembunuhan. Tapi kenapa dia tampaknya begitu ingin me-mancing-mancing si pembunuh? Dan ketika hal itu benar-benar terjadi, walaupun Poirot sudah berusaha keras mencegahnya, kenapa identitas si korban terasa tidak masuk akal?', 79200, 'closed.jpg'),
(34, 'TIK', 'MC', 'SHORESTORY', 'Fantasi', '“What are you most afraid of?”“Feelings.”------------------------------Larasati Rana membenci dua hal: hubungan berkomitmen dan politik. Namun, perkenalannya dengan seorang reporter surat kabar, Arjuna Simanjuntak, justru menjebloskannya di tengah keduanya. Arjuna ingin mengubah hubungannya dengan Lara menjadi lebih dari ‘one-night stand’ belaka, namun bukan hanya kesulitan meruntuhkan ‘tembok’ tinggi yang dipasang wartawan gaya hidup itu, ia juga harus menghadapi Kevin Wiratama--pengusaha yang berambisi untuk mendapatkan kursi wakil gubernur dengan cara apa pun, serta rupanya terobsesi dengan Lara.Di tengah profesi yang menuntut mereka untuk mengedepankan obyektivitas, Lara dan Arjuna berupaya mengurai perasaan mereka terhadap satu sama lain sembari bergelut dengan lika-liku kerja pers dan geliat industri media cetak di era digital.', 71200, 'tik.jpg'),
(35, 'Lewat Tengah Malam', 'MC', '-', 'Horror', 'Kelamnya malam menyimpan rahasia terdalam. Kepingan kisah bertebaran, tertular dari mulut ke mulut saling berkesinambungan. Kini kisah-kisah itu terangkum dalam sebuah catatan. Kumpulan pengalaman mencekam, kisah nyata yang senantiasa berubah seiring rekaan dari segala penjuru zaman. Mereka terhimpun oleh satu tali kesamaan. Kisah-kisah yang berlangsung kala gelap kian mencekam di waktu hening tak bertuan. Lewat Tengah Malam.', 54400, 'Lewat.jpg'),
(36, 'Kita Pernah Sling Mencinta', 'Gramedia', 'Felix K.Nesi', 'Satra', 'Siapakah yang diam-diammenaruh gemunung di dalamhatimu?Siapakah yang membentangkancuriga dari ujung daguhingga jendela kamarmu?Di negeri kami, orangbercerita tentangtanah yang hilang,tentang bangsa yang takpunya siapa-siapaselain ibukota.........Kita Pernah Saling Mencinta adalah buku puisi perdana Felix K. Nesi. Dalam buku ini terangkum jejak kepenyairan Felix selama rentang 2008-2019. Dengan penuh ironi Felix menyuarakan persoalan keluarga, kerontangnya alam, dan peliknya menjadi yang bukan diutamakan.', 56000, 'kita.jpg'),
(37, 'Silly Gilly Daily', 'Gramedia', 'Naela Ali', 'Fantasi', 'Gilly is back at home!(well, like always)But this time it is a lil bit different!How is Gilly gonna spend her days at home during pandemic?', 108000, 'gilly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Indri Putri', 'pindri@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(2, 'Fawwaz Zahran', 'fawwazz@gmail.com', '81b073de9370ea873f548e31b8adc081', 'user'),
(4, 'Risma', 'risma@gmail.com', 'cf79ae6addba60ad018347359bd144d2', 'user'),
(5, 'Maidy', 'maidy@gmail.com', '6074c6aa3488f3c2dddff2a7ca821aab', 'user'),
(7, 'Vivi', 'vivi@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 'user'),
(9, 'Natasya', 'natnat@gmail.com', 'b0c7ae2316c7e8214fd659e4bc8a0dea', 'user'),
(14, 'Efita Nana', 'efita@gmail.com', '7a674153c63cff1ad7f0e261c369ab2c', 'user'),
(15, 'Dimimi', 'dimimi@gmail.com', 'bc7316929fe1545bf0b98d114ee3ecb8', 'user'),
(17, 'Shella Anisa', 'shellaa@gmail.com', '8b5700012be65c9da25f49408d959ca0', 'user'),
(19, 'Natalia', 'nata@gmail.com', 'fa246d0262c3925617b0c72bb20eeb1d', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
