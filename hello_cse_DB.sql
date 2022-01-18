-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18/01/2022 às 10:14
-- Versão do servidor: 8.0.27-0ubuntu0.20.04.1
-- Versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hello_cse`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `celebrities`
--

CREATE TABLE `celebrities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `celebrities`
--

INSERT INTO `celebrities` (`id`, `name`, `surname`, `description`, `image_path`, `created_at`, `updated_at`) VALUES
(52, 'Angelina', 'Jolie', 'is an American actress and filmmaker. The recipient of numerous accolades, including an Academy Award and three Golden Globe Awards, she has been named Hollywood\'s highest-paid actress multiple times.\r\n\r\nJolie made her screen debut as a child alongside her father, Jon Voight, in Lookin\' to Get Out (1982), and her film career began in earnest a decade later with the low-budget production Cyborg 2 (1993), followed by her first leading role in a major film, Hackers (1995). She starred in the critically acclaimed biographical cable films George Wallace (1997) and Gia (1998), and won an Academy Award for Best Supporting Actress for her performance in the 1999 drama Girl, Interrupted. Her starring role as the video game heroine Lara Croft in Lara Croft: Tomb Raider (2001) established her as a leading Hollywood actress. She continued her action-star career with Mr. & Mrs. Smith (2005), Wanted (2008), Salt (2010), and The Tourist (2010), and received critical acclaim for her performances in the dramas A Mighty Heart (2007) and Changeling (2008), the latter of which earned her a nomination for an Academy Award for Best Actress. Her biggest commercial success came with the fantasy picture Maleficent (2014). She is also known for her voice role in the animation film series Kung Fu Panda (2008–present).', 'V1SSTsd43xWUiEgarH36bx3DHNSRxkaU6SNQeEQN.jpg', '2022-01-17 13:58:29', '2022-01-17 15:03:45'),
(53, 'Beyonce', 'Knowles', 'is an American singer, songwriter, and actress. Born and raised in Houston, Texas, Beyoncé performed in various singing and dancing competitions as a child. She rose to fame in the late 1990s as the lead singer of Destiny\'s Child, one of the best-selling girl groups of all time. Their hiatus saw the release of her debut solo album Dangerously in Love (2003), which featured the US Billboard Hot 100 number-one singles \"Crazy in Love\" and \"Baby Boy\".\r\n\r\nFollowing the 2006 disbanding of Destiny\'s Child, she released her second solo album, B\'Day, which contained singles \"Irreplaceable\" and \"Beautiful Liar\". Beyoncé also starred in multiple films such as The Pink Panther (2006), Dreamgirls (2006), Obsessed (2009), and The Lion King (2019). Her marriage to Jay-Z and her portrayal of Etta James in Cadillac Records (2008) influenced her third album, I Am... Sasha Fierce (2008), which earned a record-setting six Grammy Awards in 2010. It spawned the successful singles \"If I Were a Boy\", \"Single Ladies (Put a Ring on It)\", and \"Halo\".', 'JwfCvynLSVcTViFMNBBIoJT3eexR6m8ErtwudDlH.jpg', '2022-01-17 13:59:20', '2022-01-17 15:05:55'),
(54, 'Jennifer', 'Aniston', 's an American actress and producer. The daughter of actors John Aniston and Nancy Dow, she began working as an actress at an early age with an uncredited role in the 1988 film Mac and Me; her first major film role came in the 1993 horror comedy Leprechaun. Since her career progressed in the 1990s, she has become one of the world\'s highest-paid actresses. Films with her in the leading role have grossed over $1.6 billion worldwide, with 12 of them earning at least $100 million.[1]\r\n\r\nAniston rose to international fame for her role as Rachel Green on the television sitcom Friends (1994–2004), for which she earned Primetime Emmy, Golden Globe, and Screen Actors Guild awards. She has since played starring roles in numerous dramas, comedies and romantic comedies. Her biggest box office successes include Bruce Almighty (2003), The Break-Up (2006), Marley & Me (2008), Just Go with It (2011), Horrible Bosses (2011), and We\'re the Millers (2013), each of which grossed over $200 million in worldwide box office receipts. Some of her most critically acclaimed film roles include Office Space (1999), The Good Girl (2002), Friends with Money (2006), Cake (2014), and Dumplin\' (2018). She returned to television in 2019, producing and starring in the Apple TV+ drama series The Morning Show, for which she won another Screen Actors Guild Award.\r\n\r\nAniston has been included in numerous magazines\' lists of the world\'s most beautiful women. Her net worth is estimated as $300 million. She is the recipient of a star on the Hollywood Walk of Fame and is the co-founder of the production company Echo Films, established in 2008. She has been married twice: first to actor Brad Pitt, to whom she was married for five years, and later to actor Justin Theroux, whom she married in 2015 and separated from in 2017.', 'qjqhfh70tIRbUIWsq18q1DNLcN1Hru2lY0N3TUTv.jpg', '2022-01-17 14:00:38', '2022-01-17 14:00:38'),
(55, 'Jude', 'Law', 'is an English actor. He has received several accolades throughout his career, including a British Academy Film Award, as well as nominations for two Academy Awards, two Tony Awards, and four Golden Globe Awards. In 2007, he received an Honorary César and was named a knight of the Order of Arts and Letters by the French government.[1][3]\r\n\r\nBorn and raised in London, Law started acting in theatre. After finding small roles in feature films, Law gained recognition for his role in Anthony Minghella\'s The Talented Mr. Ripley (1999), for which he won the BAFTA Award for Best Actor in a Supporting Role and was nominated for an Academy Award. He found further critical and commercial success in Enemy at the Gates (2001), Steven Spielberg\'s A.I. Artificial Intelligence (2001) and Sam Mendes\' Road to Perdition (2002). He continued to gain praise for starring in the war film Cold Mountain (2003), the drama Closer (2004), and the romantic comedy The Holiday (2006), gaining Academy Award and BAFTA nominations for the first.\r\n\r\nLaw played Dr. Watson in Sherlock Holmes (2009) and Sherlock Holmes: A Game of Shadows (2011), a younger Albus Dumbledore in Fantastic Beasts: The Crimes of Grindelwald (2018), and Yon-Rogg in Captain Marvel (2019); all of which rank among his highest-grossing releases. His other notable roles were in Contagion (2011), Hugo (2011), Side Effects (2013), The Grand Budapest Hotel (2014), and Spy (2015); and the television series The Young Pope (2016) and The New Pope (2020).\r\n\r\nLaw has also had an accomplished career on stage, performing in several West End and Broadway productions such as Les Parents terribles in 1994, Hamlet in 2010, and Anna Christie in 2011.[4] He received Tony Award nominations for the first and second.', 'J3dMzYpfwu7sMBHJw7smMuBrA1AnGIFursJUIG0o.jpg', '2022-01-17 14:01:37', '2022-01-17 14:01:37'),
(56, 'Leonardo', 'DiCaprio', 'is an American actor and film producer. Known for his work in biopics and period films, DiCaprio is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awards. As of 2019, his films have grossed over $7.2 billion worldwide, and he has been placed eight times in annual rankings of the world\'s highest-paid actors.\r\n\r\nBorn in Los Angeles, DiCaprio began his career in the late 1980s by appearing in television commercials. In the early 1990s, he had recurring roles in various television shows, such as the sitcom Parenthood, and had his first major film part as author Tobias Wolff in This Boy\'s Life (1993). At age 19, he received critical acclaim and his first Academy Award and Golden Globe Award nominations for his performance as a developmentally disabled boy in What\'s Eating Gilbert Grape (1993). He achieved international stardom with the romances Romeo + Juliet (1996) and Titanic (1997), the highest-grossing film at the time, after which he reduced his workload for a few years. In an attempt to shed his image of a romantic hero, DiCaprio sought roles in other genres, including crime drama in Catch Me If You Can and Gangs of New York (both 2002), which marked the first of his many successful collaborations with director Martin Scorsese.', 'tgRd2SFjZJhKEapzoYvArq5uWv51YVK0GcMCi47r.jpg', '2022-01-17 14:02:33', '2022-01-17 15:04:28'),
(57, 'Megan', 'Fox', 'is an American actress and model. She has made multiple appearances in major film franchises, most notably the Transformers franchise, as well as numerous magazines such as Maxim, Rolling Stone, and FHM.[2][3] She is the recipient of several accolades, including two Scream Awards and four Teen Choice Awards.\r\n\r\nFox made her acting debut in the family film Holiday in the Sun (2001), which was followed by numerous supporting roles in film and television, such as the teen musical comedy Confessions of a Teenage Drama Queen (2004), as well as a starring role in the ABC sitcom Hope & Faith (2004–2006). Her breakout role was as Mikaela Banes in the blockbuster action film Transformers (2007), which she reprised in its sequel Transformers: Revenge of the Fallen (2009). She also portrayed the titular character in the horror comedy Jennifer\'s Body (2009), starred as April O\'Neil in the superhero action film Teenage Mutant Ninja Turtles (2014) and its sequel Teenage Mutant Ninja Turtles: Out of the Shadows (2016), and starred as Reagan Lucas in the fifth and sixth seasons of the Fox sitcom New Girl (2016–2017).\r\nMegan Denise Fox was born on May 16, 1986[1][4] in Oak Ridge, Tennessee,[5][6] to parents Gloria Darlene (née Cisson) and Franklin Thomas Fox.[7] She spent her early childhood in nearby Rockwood.[8] Fox\'s father, a parole officer, and her mother divorced when Fox was three years old.[5] Her mother later remarried, and Fox and her sister[9] were raised by her mother and her stepfather, Tony Tonachio.[10][11][12] She was raised \"very strictly Pentecostal\", but later attended Catholic school for 12 years.[13][14] She said that the two were \"very strict\" and that she was not allowed to have a boyfriend[15] or invite friends to her house.[9] She lived with her mother until she made enough money to support herself.[15]', 'MvBwTP6FVQULYct9ZFIlnNkJQm4YQrCCuu3doDeu.jpg', '2022-01-17 14:03:19', '2022-01-17 15:04:40'),
(58, 'Nicole', 'Kidman', 'is an American-born Australian[1] actress and producer. She is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, a Screen Actors Guild Award, two Primetime Emmy Awards and six Golden Globe Awards. She was named by Time magazine as one of the 100 most influential people in the world in 2004 and 2018, and has been featured multiple times in annual rankings of the world\'s highest-paid actresses. In 2020, The New York Times ranked her among the greatest actors of the 21st century.\r\n\r\nKidman began her acting career in Australia with the 1983 films Bush Christmas and BMX Bandits. Her breakthrough came in 1989 with the thriller film Dead Calm and the miniseries Bangkok Hilton. In 1990, she achieved international success with the action film Days of Thunder. She subsequently went on to receive greater widespread recognition with lead roles in Far and Away (1992), Batman Forever (1995), To Die For (1995) and Eyes Wide Shut (1999). In 2003, she won the Academy Award for Best Actress for her portrayal of writer Virginia Woolf in the drama film The Hours (2002). She received additional Academy Award nominations for portraying a courtesan in the musical Moulin Rouge! (2001) and emotionally troubled mothers in the dramas Rabbit Hole (2010) and Lion (2016). Her other film credits include The Others (2001), Cold Mountain (2003), Dogville (2003), Birth (2004), Australia (2008), The Paperboy (2012), Paddington (2014), The Killing of a Sacred Deer (2017), Destroyer (2018), Aquaman (2018), Bombshell (2019) and Being the Ricardos (2021).', '78L6xLO24m9M3AE3sLlJLhchUh3YETdq5HeVxq9X.jpg', '2022-01-17 14:03:58', '2022-01-17 15:04:56'),
(59, 'Robert', 'Pattinson', 's an English actor. Starring in both big-budget and independent films, Pattinson has been ranked among the world\'s highest-paid actors. Time magazine named him one of the 100 most influential people in the world, and he was featured in the Forbes Celebrity 100 list.\r\n\r\nAfter starting to act in a London theatre club at age 15, Pattinson began his film career by playing Cedric Diggory in the fantasy film Harry Potter and the Goblet of Fire (2005). He gained worldwide recognition for portraying Edward Cullen in The Twilight Saga film series (2008–2012), which grossed over $3.3 billion worldwide. After starring in the romantic dramas Remember Me (2010) and Water for Elephants (2011), Pattinson received critical acclaim for his performances in independent films from auteur directors. He starred in David Cronenberg\'s thriller Cosmopolis (2012), David Michôd\'s dystopian western The Rover (2014), James Gray\'s adventure drama The Lost City of Z (2016), the Safdie Brothers\' crime drama Good Time (2017), Claire Denis\' science-fiction drama High Life (2018), and Robert Eggers\' psychological horror film The Lighthouse (2019). He returned to mainstream films with a leading role in Christopher Nolan\'s spy film Tenet (2020), and will star as the DC Comics superhero Batman in Matt Reeves\' film The Batman (2022).\r\n\r\nAside from acting, Pattinson plays music and has sung on several soundtracks for film. He supports several charities, including the GO Campaign and has been the face of Dior Homme fragrances since 2013.', 'sWqGIpwvy96rplY1D2W4khWuQxN4qM70lLhCzNO9.jpg', '2022-01-17 14:05:16', '2022-01-17 15:05:10'),
(60, 'Robert', 'Redford', '(born August 18, 1936) is an American actor, director, and activist. He is the recipient of various accolades, including an Academy Award from two nominations, a British Academy Film Award, two Golden Globe Awards, the Cecil B. DeMille Award, and the Presidential Medal of Freedom. In 2014, Time magazine named him one of the 100 most influential people in the world.[1][2]\r\n\r\nAppearing on stage in the late 1950s, Redford\'s television career began in 1960, including an appearance on The Twilight Zone in 1962. He earned an Emmy nomination as Best Supporting Actor for his performance in The Voice of Charlie Pont (1962). His greatest Broadway success was as the stuffy newly-wed husband of co-star Elizabeth Ashley\'s character in Neil Simon\'s Barefoot in the Park (1963). Redford made his film debut in War Hunt (1962). He starred with Natalie Wood in Inside Daisy Clover (1965) which won him a Golden Globe for the best new star. He starred alongside Paul Newman in Butch Cassidy and the Sundance Kid (1969), which was a huge success and made him a major star. He had a critical and box office hit with Jeremiah Johnson (1972), and in 1973 he had the greatest hit of his career, the blockbuster crime caper The Sting, a reunion with Paul Newman, for which he was nominated for an Academy Award; that same year, he also starred opposite Barbra Streisand in The Way We Were. The popular and acclaimed All the President\'s Men (1976) was a landmark film for Redford.', 'wg5lVlg1l9vbqQz8ilL2g1La3672eHS9URe1K9NU.jpg', '2022-01-17 14:06:16', '2022-01-17 15:05:35'),
(61, 'Selena', 'Gomez', 'is an American singer, actress, and producer. Born and raised in Texas, Gomez began her acting career on the children\'s television series Barney & Friends (2002–2004). In her teenage years, she rose to prominence for her lead role as Alex Russo in the Disney Channel television series Wizards of Waverly Place (2007–2012).\r\n\r\nAlongside her television career, Gomez appeared in the films Another Cinderella Story (2008), Princess Protection Program (2009), Wizards of Waverly Place: The Movie (2009), Ramona and Beezus (2010), Monte Carlo (2011), Spring Breakers (2012), Getaway (2013), The Fundamentals of Caring (2016), The Dead Don\'t Die (2019), and A Rainy Day in New York (2019). She voiced the character Mavis in the Hotel Transylvania film franchise (2012–2022). Gomez executive produced the Netflix television series 13 Reasons Why (2017–2020) and Living Undocumented (2019) through her production company, July Moonhead Productions. She also executive produces and stars in the HBO Max cooking series Selena + Chef (2020–present) and the Hulu mystery-comedy series Only Murders in the Building (2021–present). The latter earned Gomez critical praise, and a nomination for Best Actress in a Comedy series at the Critics\' Choice Television Awards.', 'kRm6Dr8e4yfoe6R11hv0U8lkYgw3PAhtgTzWyZJK.jpg', '2022-01-17 14:07:25', '2022-01-17 15:01:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_13_103354_create_celebrities_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Stone Jacobson I', 'mlind@example.com', '2022-01-15 14:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H87wEpuELBPAplR9dF8xUsCnoyt7G8n9TTm04bkLGa7CRoXmGHN6hYUPm9BD', '2022-01-15 14:58:58', '2022-01-15 14:58:58');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `celebrities`
--
ALTER TABLE `celebrities`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `celebrities`
--
ALTER TABLE `celebrities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
