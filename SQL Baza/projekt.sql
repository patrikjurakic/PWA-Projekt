-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 12:13 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `korisnicko_ime` varchar(255) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(4, 'Patrik', 'Jurakić', 'pjurakic', '$2y$10$1qjg4hy7Sk9eCDwTjL/0ve637g16iv4fPrTMlAN1kFvHXoR9PuAjC', 1),
(5, 'Pero', 'Perić', 'pero', '$2y$10$KiJ/J4NlxnVPAOvcMJeJleVkDNtyryiHhZaau1Rj6JuGaUyQuzsf6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lemonde`
--

CREATE TABLE `lemonde` (
  `id` int(11) NOT NULL,
  `naslov` varchar(255) NOT NULL,
  `sazetak` mediumtext NOT NULL,
  `kategorija` varchar(255) NOT NULL,
  `tekst` longtext NOT NULL,
  `slika` varchar(100) NOT NULL,
  `prikaz` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lemonde`
--

INSERT INTO `lemonde` (`id`, `naslov`, `sazetak`, `kategorija`, `tekst`, `slika`, `prikaz`) VALUES
(1, 'Sixers apologize to Russell Westbrook, ban fan indefinitely', 'The fan who threw popcorn at Westbrook will have his season tickets revoked.', 'sport', 'After an investigation into the incident that occurred at last night’s game, we have determined that the person involved will have his season ticket membership revoked, effectively immediately. In addition, he will be banned from all events at Wells Fargo Center indefinitely.\r\n\r\nWe apologize to Russell Westbrook and the Washington Wizards for being subjected to this type of unacceptable and disrespectful behavior. There is no place for it in our sport or arena.\r\n\r\n“The return of more NBA fans to our arenas has brought great excitement and energy to the start of the playoffs, but it is critical that we all show respect for players, officials and our fellow fans. An enhanced fan code of conduct will be vigorously enforced in order to ensure a safe and respectful environment for all involved.”     ', 'westbrook.jpg', 'on'),
(2, 'NBA statement on LeBron James and Health and Safety Protocols', 'NBA Chief Communications Officer Mike Bass issued the following statement:          ', 'sport', '“To clarify any remaining misconception, LeBron James briefly attended an outdoor event last week where participants were required to be vaccinated or return a negative test result. Under these circumstances and in consultation with medical experts, it was determined that his attendance did not create risks related to the spread of COVID-19 and therefore no quarantine was necessary. Over the course of this season, there have been numerous similar violations of the league’s Health and Safety Protocols, which were addressed with the players’ team in a similar fashion.\r\n\r\nUnder current NBA rules, vaccinated players are permitted to engage in outside activities including their individual commercial arrangements, such as sponsor appearances or ad shoots.”     ', 'lebron.jpg', 'on'),
(3, 'Chris Paul a full go for Game 3 vs. Lakers, Suns to monitor his health', 'Chris Paul', 'sport', 'Chris Paul is averaging just 6.5 points and 6.5 assists through the first two games of Phoenix’s first-round series with the Lakers.\r\n\r\nPhoenix’s first potential championship bid in over a decade received a severe blow in Game 1 when Chris Paul went down with a right shoulder contusion that has limited him ever since.\r\n\r\nAfter another 48 hours’ worth of rest and treatment, the 10-time All-Star will give it another go in Game 3 against the Lakers on Thursday (10 ET, TNT).\r\n\r\n“He’s gotten better over the last couple of days and he is a full go tonight,” said Suns coach Monty Williams.\r\n\r\nWilliams added he would “keep a close eye on him.” Paul played in just 22 minutes in Phoenix’s 109-102 Game 2 loss and was clearly limited, shooting 2-for-5 and committing three turnovers to five assists.\r\n\r\nThe Suns and Lakers entered Thursday tied 1-1 in their best-of-seven first-round series.         ', 'paul.jpg', 'on'),
(4, 'Biden to sign order', 'President Joe Biden will sign an executive order on Friday renewing a White House initiative charged with advancing \"equity, justice, and opportunity\" for Asian Americans, Native Hawaiians and Pacific Islanders, including coordinating a \"comprehensive\" federal response to the rise in anti-Asian violence and discrimination. ', 'politique', '\"... For far too long, systemic barriers to equity, justice, and opportunity have put the American dream out of reach for many AA and NHPI communities, and racism, nativism, and xenophobia against AA and NHPI communities continues to threaten safety and dignity of AA and NHPI families,\" the White House said in a fact sheet released Friday.\r\nOver the last year, the Asian American community has seen a reported surge in physical and verbal assaults and discrimination while erroneously being blamed for the Covid-19 pandemic. The new initiative builds on a commitment from Biden to advance racial equity and a memorandum signed early in his presidency stating that his administrations policy will be to condemn and denounce anti-Asian bias -- specifically amid the coronavirus pandemic.\r\nThe initiative, led out of the Department of Health and Human Services, aims to ensure the federal government is mitigating Covid-related anti-Asian bias, advancing health equity for AA and NHPI communities, and that they \"equitably recover\" from the dual crises caused by the Covid-19 pandemic and the anti-Asian attacks.        ', 'biden.jpg', 'on'),
(5, 'Jason Kidd on being an NBA head coach: ‘I would love to have another opportunity’', 'The Lakers assistant talks about his career hopes and the team’s title chances       ', 'sport', 'If Los Angeles Lakers assistant coach Jason Kidd could go back in time to talk to himself when he was an NBA head coach, he believes he would have said: “Just relax.”\r\n\r\n“Just relax and enjoy the growth of the team,” Kidd said. “The growth of the individual players. And not be so hard, and so wanting them to be perfect. …\r\n\r\n“The biggest thing I would say in Milwaukee or Brooklyn is the way the message is delivered could have been different. Not so hard. Not so rough. A little bit more fun to it. As a competitor, you get lost into, ‘What can I do to help them win?’ And that’s all they can hear, is that, ‘He just wants to win.’ Where’s the fun? Let’s build this thing and enjoy it. You play as a player for a championship and you coach for a championship. But there’s also different parts of different environments that you are trying to build in a culture.”\r\n\r\nKidd is one of the NBA’s greatest point guards of all time. Over his 19-year playing career, he finished with 12,091 assists, was a 10-time All-Star and won a championship with the Dallas Mavericks. He was inducted into the Basketball Hall of Fame in 2018.  \r\n\r\n<br>\r\n\r\nLearn from your mistakes. Nobody is perfect. Surround yourself with smarter people. Another thing I learned is to be able to be a good listener and filter the information that is given to you. Be able to use it or table it without saying, No, or coming off defensive. You can give me a great idea and I can say, Im not ready to use that. It might come off to an assistant coach like, ‘Dang, he never takes any of my opinions. Now I would say, I hear what you’re saying. I might want to do it, but just not right now.’ To you that goes, He heard me, we are not going to use it right now but we will at some point.\r\n\r\nOne of the biggest things Ive learned from Frank is he is a great listener and a great communicator. He hears you. He will let you know, Hey, not right now. Im not comfortable doing that. And that goes a long way instead of saying no or thats crazy.     ', 'jason.jpg', 'on'),
(6, 'How Jeremy Lin’s career mirrors the current Asian American movement', 'The point guard’s NBA legacy goes way beyond Linsanity       ', 'sport', 'I interviewed Jeremy Lin for the first time in 2013. It was the All-Star break in Houston, almost exactly one year after Linsanity. After we wrapped the interview, I mumbled something to him about loving everything he was doing for Asian culture. I couldn’t contain myself.\r\n\r\nI was 32 then, and still evolving in my own journey of self-discovery. It wasn’t the best example of professionalism, but Lin was my Jackie Robinson. I don’t say that to exaggerate or make false equivalencies, but I need to emphasize Lin’s impact on me and much of the Asian American community as a transcendent breaker of stereotypes.\r\n\r\nWhen I saw him, I couldn’t suppress a lifetime of marginalized representation. While I don’t remember exactly what I said, I do remember his reaction: politely acknowledging me, then walking away with this look of exhaustion on his face, as if to say, “Thanks, but I’m more than just my race.”\r\n\r\nThe expectation for one individual to represent an entire race is a common microaggression in communities of color and I was guilty of it, regardless of my intentions. It’s as if one’s entire existence is reduced to a single characteristic: appearance. That can be irritating in a work Zoom or classroom discussion, so imagine shouldering the hopes, expectations and projections of a representation-craved community of more than 23 million people in 50-plus ethnic groups with 100-plus different languages … all at the age of 23?\r\n\r\nThats been Lins life for the better part of a decade, where he’s been the only non-ethnically ambiguous Asian American player in the NBA universe (shouts to Filipino American Jordan Clarkson).   \r\n\r\n<br><br>\r\n\r\n“It wasn’t just that they were talking about him – it’s that it felt like they were talking about us,” Chen told The Undefeated via email. “It felt like with every shot, we were shattering another ceiling in a place no one expected us to occupy. That’s the type of inclusion we need – not just a dismantling of pernicious stereotypes, not just continued ascension in places we already thrive, but penetration in spaces that never welcomed us.”\r\n\r\nThere had been Asians and Asian Americans in the NBA before Lin (much respect to Wat Misaka, Raymond Townsend, Rex Walters), but Lin hit differently. He wasn’t a 7-foot-6 giant like Yao Ming. Lin was the neighborhood kid who shared some of the same experiences as many children of first-generation immigrants, an important distinction for filmmaker Brian Yang, who happened to be following Lin for a documentary when Linsanity blew up.   ', 'linn.jpg', 'on'),
(10, 'Griffin makes star impact in smaller role as Nets seize 1-0 lead on Bucks', 'Instead of jumping over cars, Blake Griffin dove for loose balls and provided the difference in Brooklyn series-opening victory.     ', 'sport', 'Years from now, when the story is told of Blake Griffin’s performance for the Brooklyn Nets in Game 1 of their Eastern Conference semifinal series against Milwaukee, the tale will get taller.\r\n\r\nSo let’s get this into the permanent record right now. No, Griffin hadn’t been retired from the NBA for his inability to perform when he joined the Nets in March, even if he did so on a veteran’s minimum contract. It wasn’t all three of Brooklyn’s current All-Stars who got hurt in the opening minute at Barclays Center (though losing one, James Harden, was ominous enough). And in fact, Griffin did not push himself off a hospital gurney after double hip-replacement surgery to beat the Bucks and light up the league and social media with his throwback game.\r\n\r\nWhat he did was impressive enough, scoring 18 points with a game-best 14 rebounds in 35 minutes. Griffin seemingly spent as much time scratching, rolling and clawing down on the floor as he did working upright Saturday. And when he did stand tall, he went 4-of-9 on 3-pointers, a defense-deflating rate for Milwaukee on a night its shooters were 6-of-30 on 3-pointers.\r\n\r\nThe six-time All-Star forward had such an impact in staking Brooklyn to its 1-0 series lead after a knock-around regular season that a little incredulity was understandable. Not need for hyperbole, though, just because some doubted when he left Detroit in March if the former slam dunk champ who leaped over a Kia could even jump anymore.\r\n\r\nGriffin wasn’t shelved, he wasn’t done. But he was gimpy and off the radar for a while. If he took people’s breath away with his play in the Nets’ 115-107 victory, that was only partly on them.\r\n\r\n“For two years, I didn’t hear much positivity, and probably rightfully so,” Griffin said after positing his first playoff double-double since 2016 with the Clippers. “But it’s pretty crazy how quickly it happens. I’m just thankful for this chance.”\r\n\r\nThe No. 1 draft pick out of Oklahoma in 2009 and Rookie of the Year in 2011 went to five straight All-Star games as a member of the Clippers, averaging 21.6 points and 9.3 rebounds over eight seasons. <br><br>\r\nTraded to Detroit halfway through 2017-18 – just months after signing a five-year, $173 million deal presumably to keep him in L.A. for his career – Griffin made one more All-Star appearance, served as a veteran influence and took his game outside and the Pistons to a 2019 playoff appearance while dealing with a meniscus tear in his left knee.   ', 'blake.jpg', 'on'),
(36, 'Trump backs Budd ', 'The former president endorsed Budd, one of three major Republicans running for an open seat, in a speech at the state GOP convention Saturday.', 'politique', 'Former President Donald Trump on Saturday endorsed GOP Rep. Ted Budd in the North Carolina Senate race, making a surprise pick in a key contest for Republicans aiming to flip control of the chamber next year.\r\n<br><br>\r\n\r\nTrumps endorsement came on stage as he addressed Republicans at the state partys convention in Greenville, N.C., the former presidents first major speech in months. He announced his support of Budd shortly after his daughter-in-law, Lara Trump, told the crowd that she would not run for Senate.\r\n\r\n<br><br>\r\nTrumps endorsement is a major boost for Budd, who is running against former Gov. Pat McCrory and former Rep. Mark Walker in the Senate primary. The three are running in the primary to replace GOP Sen. Richard Burr, who is not seeking another term.\r\n\r\nNorth Carolina is expected to be one of the most competitive Senate races in the country next year as Democrats defend their 50-50 Senate majority.\r\n\r\n\"I am giving him my complete and total endorsement. Were going to work with him. Were going to campaign with him,\" Trump said Saturday night, before adding a subtle dig at McCrory, who lost races for governor in 2008 and 2016. \"You cant pick people that have already lost two races and do not stand for our values.\"', 'trump.jpg', 'on'),
(37, 'FBI abandons demand for info', 'Developments in a child exploitation probe made a subpoena to USA Today unnecessary, the agency says.', 'politique', 'The FBI has dropped an effort to force the publisher of USA Today to turn over information that could disclose who read one of the newspapers online stories about a February shooting incident in Florida that left a suspect and two FBI agents dead, as well as three other agents wounded.\r\n\r\nThe subpoena issued to USA Todays parent company, Gannett, in April demanded internet addresses and similar details on readers of the story during a 35-minute window on the evening of the shooting at an apartment complex in Sunrise, Fla., near Fort Lauderdale.', 'fbi.jpg', 'on'),
(38, 'Facebook Trump trap', 'The tech giant may now have to make even more politically charged calls on Trump and other world leaders.', 'politique', 'Facebook has spent years inventing ways to dodge making judgments on posts by global leaders, with former President Donald Trump chief among them. Now that strategy is in peril.\r\n\r\nThe social media giant on Friday announced it may give Trump a way back onto its platforms after serving a two-year suspension, just in time for another potential White House run in 2024. That means that one way or another, Facebook will again have to make a politically hazardous call on whether Trump’s posts pose a threat to the U.S. in the run-up to a key election.\r\n\r\n<br><br>\r\nAnd the high-stakes decision-making doesn\'t end there. Facebook also unveiled a more hands-on approach for reviewing global leaders’ posts on Friday, where the company will no longer automatically give their rule-breaking posts a pass on the basis that they are newsworthy. That could usher in a deluge of controversies over its handling of political speech.\r\n\r\n“This is going to start an avalanche,” said Jon Schweppe, director of policy and government affairs at the right-leaning American Principles Project think tank.\r\n\r\n“It puts them in a really insane situation where everyone is going to be clamoring” for Trump and other politicians\' posts to be kept up or taken down, he added.\r\n\r\nIt wasn’t supposed to be this way. Facebook has long rejected the notion that it, or any private company, should be the arbiter of what government officials can and can’t say online. Since 2016, the social media giant has had a policy to keep up remarks by influential users — including politicians — that it deems newsworthy, even if they violate its content rules. Facebook has leaned on that policy to give a pass to politicians’ incendiary or misleading posts.\r\n\r\n', 'facebook.jpg', 'on'),
(41, 'Taxing the ultrarich', 'If the information was leaked by someone with access to IRS data, it would be one of the biggest breaches in the agency\'s history.', 'politique', 'The IRS has opened an investigation into apparently leaked tax documents showing that ultra-rich Americans like Amazon founder Jeff Bezos, Tesla CEO Elon Musk and business tycoon Warren Buffett paid very little or no taxes, while Democrats seized on the report to further their call for higher taxes on the wealthy.\r\n\r\nThe revelations by ProPublica will undoubtedly put a sharp focus on the debate in Congress over raising taxes on wealthy people and revive calls for a \"wealth tax\" that supporters say would capture a greater amount of the assets held by the rich.\r\n<br><br>\r\n\r\nHe didn’t quantify the scope of the apparent data breach, though.\r\n\r\nSenate Finance Chair Ron Wyden (D-Ore.) said the revelations shine a fresh spotlight on the wealthy not paying “their fair share” and said he’d release a proposal to change that — an apparent reference to his plan to tax investment gains annually.\r\n\r\nPrivacy concerns were top of mind for the committee’s top GOP member, Sen. Mike Crapo (R-Idaho). He called the tax leak very relevant to a Biden administration proposal to crack down on tax avoidance by expanding IRS access beyond tax filings by also requiring financial institutions turn over individuals’ and companies’ bank account information to the agency.\r\n\r\n“These are issues that are very significant and require resolution,” Crapo said.\r\n\r\nWyden also expressed concern about the leak. He called it “a massive, unauthorized disclosure” from an “unclear” source, but said it’s incumbent on the IRS to figure it out given the agency’s responsibility to protect taxpayer data.', 'elon.jpg', 'on'),
(42, 'Global challenges from China', 'Europe trip will meet with G-7 and NATO allies before a face-to-face meeting with Russian President Vladimir Putin.', 'politique', 'President Biden embarked on his first trip overseas since taking office Wednesday, a journey in which he will meet with G-7 and NATO allies to discuss ways to address the coronavirus pandemic and an increasingly aggressive China and Russia.\r\n\r\nBiden departed Joint Base Andrews in Maryland Wednesday morning is set to arrive in the United Kingdom Wednesday night local time. His first order of business will be a bilateral meeting with British Prime Minister Boris Johnson on Thursday, before joining G-7 leaders for the group\'s summit over the weekend.\r\n\r\n<br><br>\r\n\"This trip is about realizing America\'s renewed commitment to our allies and partners,\" Biden wrote in an op-ed previewing his trip in The Washington Post over the weekend. \"Whether it is ending the COVID-19 pandemic everywhere, meeting the demands of an accelerating climate crisis, or confronting the harmful activities of the governments of China and Russia, the United States must lead the world from a position of strength.\"\r\n\r\nThe trip is aimed at \"making clear to Putin and to China that Europe and the United States are tight,\" he told reporters before Air Force One departed Wednesday.\r\n\r\nOn China, the president is set to direct his focus on competitiveness in the marketplace, and the origins of the coronavirus pandemic. The president, last month, said U.S. intelligence officials had coalesced around two \"likely scenarios\" for the origin of the pandemic — zoonotic transmission or a leak from a laboratory in Wuhan. Biden gave the intelligence community 90 days for additional review to get to the bottom of how the pandemic began. ', 'china.jpg', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `lemonde`
--
ALTER TABLE `lemonde`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lemonde`
--
ALTER TABLE `lemonde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
