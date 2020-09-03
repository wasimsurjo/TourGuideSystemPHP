-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 05:42 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 1, 'wasim@gmail.com', '2019-07-17', '2019-07-31', 'Let\'s Go!', '2019-07-15 09:41:23', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'Cox\'s Bazar Package', 'Can You Please Tell Me The Details Of Your Package?', '2017-05-13 22:23:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, 'wasim@gmail.com', 'Booking Issues', 'I Can\'t Book A Ticket', '2019-07-15 09:41:43', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '																				<p align=\"justify\"><font size=\"2\"><strong><br></strong></font></p><p align=\"justify\"><font size=\"2\"><strong>Guide Sign Up!</strong></font></p><p align=\"justify\"><font size=\"2\"><strong>Guides Are Requested To Send Us A Form With Details From The Enquiry Section.. Also Email Your Legal Documents To ghurtenaobd@gmail.com.</strong></font></p><p align=\"justify\"><font size=\"2\"><strong><br></strong></font></p><p align=\"justify\"><font size=\"2\"><strong>\r\nThe Contract - After we have received your deposit or full payment (if applicable) and we have issued a confirmation invoice, a contract will exist between you and each of the suppliers, effective from the date printed on your invoice. The terms and conditions of each supplier you have booked with will apply to your booking. Once the contract(s) is made, the airlines, accommodation provider and any other supplier is responsible for providing you with what you have booked.\r\n<br><br>\r\nAgency - Travel Counsellors acts as a travel agent. We arrange travel services and sell travel related products on behalf of suppliers such as airlines, tour and cruise operators, car hirers and accommodation providers. In doing so Travel Counsellors gives no warranty nor makes any representation regarding the services to be supplied or the products purchased by you. Your booking will be subject to the terms and conditions applied by the provider of the service or products. You agree that if the travel services or products are not supplied in accordance with your booking your remedy lies with the service provider and not Travel Counsellors.\r\n<br><br>\r\nPrices - Every effort is made to ensure that the prices quoted to you are correct; however Travel Counsellors acts only as an agent and relies on information provided to us from the suppliers of the travel services and products. We will bring to your attention any change in price made prior to you completing your booking and paying the balance of the price. Please note some tour operators and travel service providers reserve the right to increase the price of your travel arrangements due to increases in airfares, hotel accommodation charges and currency fluctuations.\r\n<br><br>\r\nAirfare Conditions - Many airfares are subject to strict conditions regarding amendments, cancellations and refunds. In addition airlines impose taxes fees and charges. It is your responsibility to ensure the type of airfare you purchase is suitable for your needs.\r\n<br><br>\r\nAirline Taxes and Fuel Surcharges - All airfares are subject to taxes and charges levied by both government and the airlines themselves; in addition global fuel costs are constantly increasing. Airlines pass on the increase in taxes and fuel surcharges without notice and whilst we will endeavour to advise you of these charges in advance that may not always prove possible. Travel Counsellors reserves the right to pass on fuel and tax increases, levied by airlines, without notice.\r\n<br><br>\r\nAirline E-tickets - International and domestic airlines are replacing paper tickets with electronic tickets called e tickets. All passengers travelling on an e ticket will be required to produce photo identification at check in.\r\n<br><br>\r\nAirline Schedules - The airline on which you are booked may change its departure time. It is your responsibility to contact the airline to check there has been no change to the time of departure.\r\n<br><br>\r\nAlterations made by you - If you want to change any part of your booking, we will do all we can to help. However, the suppliers are under no obligation to make any change, although with reasonable notice (usually more than four weeks), changes may be possible. If a supplier is able to make a change, Travel Counsellors will charge an administration fee per booking as set out in the attached schedule of fees.\r\n<br><br>\r\nCancellation Fees - If you cancel your booking you may incur a cancellation charge. The amount of this charge will vary depending on when the cancellation is made and the terms and conditions of the supplier of travel services or product. If you are entitled to a refund please note Travel Counsellors is unable to provide you with funds until they are received from the supplier. Travel Counsellors will charge a cancellation fee per booking as set out in the attached schedule of fees.\r\n<br><br>\r\nLiability - As Travel Counsellors is only acting as an agent we have no liability in respect of the supply of any element of your booking, including any liability for illness, personal injury, death or loss of any kind, delay and inconvenience caused directly or indirectly by any provider of travel services or products or by other third parties unless caused by our negligence. Any claim for damages for injury, illness, loss or death must be brought against the relevant supplier of the travel services or products.\r\n<br><br>\r\nNothing in these terms and conditions shall be read as excluding, restricting or modifying rights under the Trade Practices Act and other legislation given to consumers in relation to the supply of goods and services.\r\n<br><br>\r\nForce Majeure - Travel Counsellors shall not be liable for any loss or damage incurred by you as a consequence of Travel Counsellors or any of the suppliers being unable to perform its obligations under your contract(s) due to the unusual or unforeseeable circumstances (a “force majeure event”) beyond the control of the party affected by the force majeure event.\r\n<br><br>\r\nTravel Insurance - Travel Counsellors strongly recommends that you take out comprehensive travel insurance at the time of paying a deposit. The policy should provide cover for loss of deposit, cancellation and additional expenses, medical expenses and repatriation and loss or damage to baggage and valuables. You are responsible for making any special or increased insurance arrangements which you deem are necessary.\r\n<br><br>\r\nService Fees - Travel Counsellors may at its discretion charge service fees on your booking. Our service charges are set out in the attached schedule of fees.\r\n<br><br>\r\nPayment by Credit Credit - card surcharges may apply to payments made by credit card. In the event you pay by credit card but the services are not provided by a third party provider of travel services or products you agree that you will not take steps to charge back your payment to Travel Counsellors.\r\n<br><br>\r\nPassport and Visas - It is your sole responsibility to ensure you have a valid passport at the time of travelling and that you hold all necessary visas and permits. All Australians must hold a valid passport for international travel. Some countries require you when entering to hold passport with at least six months validity. Australian permanent residents require a valid re-entry permit. Children are required to hold individual passports.\r\n<br><br>\r\nComplaints - We hope you will have no reason to complain but if you are unhappy with any aspect of the services provided you must report it immediately to the supplier, or contact Travel Counsellors. We shall attempt to resolve the matter immediately but if you remain dissatisfied you must write to us within 28 days from the end of your trip or holiday. Failure to complain at your destination may mean we will be unable to resolve the dispute after you return home.\r\n<br><br>\r\nData Protection - In order to process your booking we need to pass your details to the relevant suppliers. We will take all reasonable precautions to ensure the security of that information. We may also use the information you provide for marketing purposes and, if you do wish to receive any further information, please inform Travel Counsellors.\r\n<br><br>\r\nGeneral - Travel Counsellors reserves the right to alter these terms and conditions at any time.\r\n<br><br>\r\nGoverning Law - Your contract with Travel Counsellors is governed by the laws of Victoria and you agree to submit to the jurisdiction of the courts of Victoria to determine any dispute pertaining to the contract. </strong></font></p><strong>\r\n\r\n										</strong>\r\n										'),
(2, 'Privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br>\r\nWhile information is the cornerstone of our ability to provide superior service, our most important asset is our clients’ trust. Keeping client information secure, and using it only as our clients would want us to, is a top priority for all of us at Journey Travel & Tours. Here then, is our promise to our individual customers:\r\n<br><br>\r\nWe will safeguard, according to strict standards of security and confidentiality, any information our customers share with us.<br>\r\nWe will limit the collection and use of customer information to the minimum we require to deliver superior service to our customers, which includes advising our customers about our products, services and other opportunities, and to administer our business.<br>\r\nWe will permit only authorized employees, who are trained in the proper handling of customer information, to have access to that information. Employees who violate our Privacy Promise will be subject to our normal disciplinary process.\r\nWe will not reveal customer information to any external organization unless we have previously informed the customer in disclosures or agreements, or are required by law.<br>\r\nWe will always maintain control over the confidentiality of our customer information. We may, however, share customer information with reputable companies when a customer has expressed an interest in their service or product. Please note that this Privacy Policy does not apply to these other companys use of customer information.<br>\r\nWhenever we hire other organizations to provide support services, we will require them to conform to our privacy standards and to allow us to audit them for compliance.<br>\r\nWe will attempt to keep customer files complete, up-to-date, and accurate. We will tell our customers how and where to conveniently access their information (except when we’re prohibited by law) and how to notify us about errors which we will promptly correct.<br>\r\nInformation We Collect\r\n<br>\r\nGeneral:\r\n<br>\r\nWhen you register, and at other times, we may collect personally identifiable information from you that may include your name, address, telephone number, e-mail address, and facts about your computer. We do not, however, knowingly collect personal information from children under the age of thirteen. In addition, if a user is under 18, unless consent is obtained from your parent/guardian, you are not allowed to provide us with personal information.\r\n<br>\r\nWeb Site Usage Information:\r\n<br>\r\nWe automatically collect IP addresses and Web site usage information from you when you visit our Web site. This information helps us evaluate how our visitors and customers use and navigate our Web site on an aggregate basis, including the number and frequency of visitors and customers to each Web page, and the length of their visits.</span>'),
(3, 'AboutUs', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br>\r\nEverything is happening nowadays in a digital way. Whether it is about car booking or shopping. So why not travelling? We “Ghurte Nau” representing the most unique technology where you can book a guard for travelling. Normally people love travelling but also afraid of new places and sometimes they confused what should they see in a new place. So, we are giving you the local guards who can guard you and shows you the amazing things of your favourite place. It’s also as simple as online shopping or car booking. You have to choose a place where you want to visit and with that you can also choose guards who will give you all the services that you want. Everything will be set after your confirmation. You can only go and enjoy your travel because we believe in keeping memories. I you are thinking about price then just relax because our price is so much reasonable and we also give offers occasionally. We ensure your safety and try to make your travel the memorable one.<br>Here Are Our Features:<br><br>\r\n<b>Unique Offers</b><br>\r\nBest memory happens when you can travel with no worries. We always offer unique things to make our customer’s travel memorable. Our offers not only for the students but also for those people who love to travel. With reasonable price we can give you the best pleasure.\r\n<br>\r\n<b>Safety</b><br>\r\nWhether you are a professional traveler or not, ofcourse you will see the safety zone. And we are so much reliable for that because all of our guards are well trained. Moreover, we checked the background of both customer and guard before confirmation. You can also notify us if you have any doubt or objection about the service and within 2 hours we will try to solve that problem.\r\n<br>\r\n<b>Uniqueness</b><br>\r\nOur company is the first company of Bangladesh that gives this kind of service. We are authorized and we have proper TIN certificate. Our moto is to give people a safe and comfortable travel. Also with the latest technology we are observing each guard and customers for their safety.\r\n<br>\r\n<b>Equity</b><br>\r\nWe are also creating an environment of diversity where every guard and company stuffs are equal to us and we will try to make “Ghurte Nau” the best company for both our customers and employees.</span>'),
(11, 'Contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 20px; text-align: justify;\"><br><br><br> <u>Address:</u> <br><br>12 Madani Ave, Dhaka 1212.<br><br><br><br><br><u>\r\nHotline: <u><br><br> 01825053040<br>01623568978<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Cox\'s Bazar', 'Extreme Deals', 'Cox\'s Bazar', 2000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Day 1:                    (-/-/-)\r\n\r\nDepart from Dhaka by Regent Airways flight\r\nMeet and greet at Cox’s Bazar Airport\r\nAirport-Cox’s Bazar Hotel Transfer (Except Mermaid Eco & Beach Resort)\r\nCheck in at Cox’s Bazar Hotel\r\nFree at leisure & Enjoy the Beauty of Longest Sea Beach\r\nOvernight stay at Cox’s Bazar Hotel\r\nDay 2:                    (B/-/-)\r\n\r\nBreakfast at Hotel Restaurant\r\nFree at leisure & Enjoy the Beauty of Longest Sea Beach\r\nOvernight stay at Cox’s Bazar Hotel\r\nDay 3:                    (B/-/-)\r\n\r\nBreakfast at Hotel Restaurant\r\nCheck out from Cox’s Bazar Hotel\r\nCox’s Bazar Hotel-Airport Transfer (Except Mermaid Eco & Beach Resort)\r\nDeparture from Cox’s Bazar by Regent Airways flight\r\n \r\n\r\n**Additional night charge will be double for Single occupancy**\r\n\r\nTerms & Conditions Apply\r\nPackages are subject to availability\r\nThis Package price is not applicable in Blackout Period (Eid, New Year etc.)\r\nPackage Valid till 30 September, 2019', 'giant_9585.jpg', '2017-05-13 14:23:44', '2019-08-03 13:53:38'),
(2, 'The Sundarbans', 'Extreme Deals', 'Sundarbans', 8500, 'Old Dhaka City Tour Cruise on Paddle Wheel Steamer, Riverine Life of Bangladesh, Food & Travel Fare Included', 'Day-01: Meet & Transfer to hotel, PM old Dhaka city tour\r\nPick up from airport & transfer to hotel. Overnight at Dhaka.\r\n\r\nDay-02: Dhaka City Tour, Board in to the Paddle wheel Rocket steamer towards Morolganj\r\nMorning we’ll offer a wonderful Dhaka City Tour included with the visit of interesting sites like National assembly building, the most distinctive building in Asia and the wonderful architectural accomplishment of famous architect Luis I Kahn of USA, Lalbag Fort built in 1678 during Mughol Dynasty and the Famous Dhakeshweri Mandir (Hindu Temple), Curzon Hall, Shahid Minar, Star Mosque, Majestic Pink Palace (Ahsan Manjil). After arrival at Sadorghat accommodate the Rocket steamer & start cruise at 18:30 hrs. The famous paddle wheel steamer (now converted from steam to marine diesel engine) on ward to Mongla Port under Bagerhat. Night pass in the 1st class AC cabin on the boat. Overnight at steamer.\r\n\r\nDay-03: Full day cruise by Paddle wheel steamer to Morolganj\r\nCruise through the mighty river Meghna including other Chanel and river for 16-17hrs. This cruise will give your wonderful experience of riverine life. Arrive Morolganj around 4 pm and transfer to Khulna (2 hrs drive). En-route visit the World Heritage Site Shat Gambud Mosque and surroundings archaeological site. Checked in to the hotel and Overnight Khulna.\r\n\r\nDay-04: Full day trip to Sundarbans, Fly back Dhaka \r\nMorning transfer to Mongla (36 km) and board in to the tourist boat (fiber boat) towards Sundarbans mangrove forest through the Passur River and visit the Karamjal panoramic tourist Resort and salt water crocodiles arboretum. You can walk through a wooden path deep inside the forest (1/2 km) to observe the forest vegetation and the wildlife like spotted deer, Monkeys wildfowl and beautiful birds. We will spend whole day by cruising different rivers and canals up to Harbaria forest point to feel the forest from very close with a rare chance to see a tiger and the fishermen. Return to Mongla around 4 pm, transfer to Jessore airport to avail the evening flight towards Dhaka. Upon arrival Dhaka transfer to hotel and overnight.\r\n\r\nDay-05: Shopping trip & departure transfer\r\nMorning shopping trip till departure transfer. Visit the most popular shopping centres and exotic Bazars and take a shower of masses. The shops we offer are Arong – a wonderful handicraft shop, Sopura silk – most popular silk cloth brand in Bangladesh, antique market – where you will find different product and products made of brass metal, Westic – a very popular garments shop to the foreigners specially.\r\n\r\nPlease note that the itinerary stated above is correct as our planned intentions for the tour. However adverse weather conditions and other local considerations can necessitate some modifications of the itinerary during the course of the tour; any changes will be made to make the best of the time and weather conditions available to us.\r\n\r\nAbove itinerary can be customize according to the guest interest and requirements. Please contact with us for more details.', 'sundarban-day-tour-paddle-steamer-crouse.jpg', '2017-05-13 15:24:26', '2019-08-03 13:55:10'),
(3, 'Shakti Peeths', 'Extreme Deals', 'Multiple Locations', 8000, 'Dhakeshwari Kali Temple, Panam city, Jayanti kali Temple, Shri Hatta Kali Temple, Chattala Kali Temple, Moinamoti', 'Day 01: Receive & Welcome, Transfer to Hotel\r\nArrival at Dhaka airport. Receive name with placard and transfer to hotel for overnight.\r\n\r\nDay 02: Visit of Shakti Peeth Dhakeshawari & Dhaka Sightseeing\r\nVisit of Dhakeshwari Kali Temple, Afterwards Dhaka sightseeing including with Visit of Lalbag fort, Dhaka University, Curzon Hall, Pink palace etc. Overnight Dhaka.\r\n\r\nDay 03: Visit of Shakti Peeth Chattala Kali Temple & Panam City Sightseeing\r\nMorning drive to Chittagong. En-route visit Sonargaon Panam city. After lunch proceed towards Shakti Peeth Chattala Kali temple (Chandranath Temple). Overnight Chittagong.\r\n\r\nDay 04: Chittagong & Moinamoti Sightseeing\r\nChittagong Sightseeing. After lunch proceed to Comilla. Visit Moinamotti Shalban Bihara. Overnight Comilla.\r\n\r\nDay 05: Visit of Shakti Peeth Shri Hatta Kali Temple\r\nMorning drive to Sylhet. Upon arrival visit Shakti Peeth Shri Hatta Kali temple. Overnight Sylhet.\r\n\r\nDay 06: Visit of Shakti Peeth Jayanti Kali Temple\r\nEarly morning drive to Kanaighat to visit Shakti Peeth Jayanti Kali temple. Afterwards drive back to Dhaka and overnight.\r\n\r\nDay 07: Departure Transfer\r\nOn time Departure transfer to Dhaka airport.', 'Shakti-Peeths-Tour-in-Bangladesh.jpg', '2017-05-13 16:00:58', '2019-08-03 13:56:22'),
(4, 'Birds Of Bangladesh', 'Ghurte Nao Special', 'Multiple Locations', 7500, 'Featured Birds: Western hoolock gibbon Capped langur Pig-tailed macaque Oriental Pied Hornbill Hair Crested Drongo White-rumped Shama Black-Crested Laughingthrush Puff throated Babbler Red Junglefowl Red Headed Trogon Green billed Malkhoa Crested Serpent ', 'Day 01: Arrival & Transfer hotel, Birding Trip at Botanical Garden\r\nReceive and met by our zoologist guide at Dhaka Zia International Airport. Transfer to hotel. After check in and fresh up if time permits we’ll offer birding trip with birding guide at botanical Garden the best birding site at Dhaka and known for its gorgeous plants. This afternoon excursion will provide a great overview of the birds here as well as possibly showcasing a couple of very special species such as Asian Pied Starling , Chestnut-tailed Starling, Rufous Treepie, Bronzed Drongo, Black- hooded Oriole, Great Tit , Orange-headed Thrush, Black-rumped Flameback , Fulvous-breasted Woodpecker, Rufous Woodpecker. Overnight at Dhaka\r\n\r\nBangladesh Bird Watching Tour\r\n\r\nDay 02: Srimangal, Kalachara Forest\r\nMorning drive to Srimangal (200 km, 4 hrs). Check in to the resort. After fresh up and lunch followed by a birding trip to Kalachara forest and local tribal villages. You will be taken around forest, tea gardens and water ways for focusing on birds such as Asian barred owlet, Spotted owlet, Red Juggle fowl, Green bee eater, Chestnut headed bee eater, Coppersmith barbet, Blue throated barbet, Hair- crested drongo, Grater racked tailed drongo, Black baza, Oriental honey buzzard, Hill mayna, Rose ringed parakeet, Red breasted parakeet, Grey bush chat, Black crested bulbul. Overnight Srimongal.\r\n\r\nDay 03: Srimangal, Lowachara Forest\r\nWe are in the east of the country and close to the border with the Indian state of Tripura. This region is full of wildlife hidden in its deep rainforests. We will aim to find birds like Red junglefowl, Oriental pied hornbill, Green billed malkoha, Crested serpent eagle, Shikra, Abbots babler, White-browed Scimitar Babbler, Changeable hawk Eagle, Yellow footed green pigeon, Black backed forktail, Small minivet, Ashy minivet, Scarlet minivet, Oriental scops owl, Grey- headed parakeet, Plum-headed parakeet, Blossom-headed parakeet, Red-breasted parakeet, Vernal hanging parrot, Purple sunbird, Purple ramped sunbird, Purple throated sunbird, Little spider hunter. You can find the very rare western hoolock gibbon which are more regularly seen here than anywhere else (an estimate of 49 individuals living in the park was made in 2006). As well as the gibbons, orange-bellied Himalayan squirrels, Indian muntjac, pig-tailed macaques and rhesus macaques are commonly seen. After dark for a short spotlighting walk to see if there are any fishing cats, slow loris, masked civets or other nocturnal animals around. Overnight stay at resort.\r\n\r\nBangladesh Bird Watching Tour\r\n\r\nDay 04: Srimangal, Satchari National Park\r\nMorning transfer Satchari National Park, the format of the visit is similar to Lowacherra National Park but we will focus on Puff throated babler, Pin striped tit babler, Golden fronted leap bird, Oriental dollar bird, Oriental pied hornbill, Yellow footed green pigeon, Ashy headed green pigeon, Thick-billed green pigeon, Orange-breasted green pigeon, White throated bulbul, Black headed bulbul, Black crested bulbul, Red whiskered bulbul, Purple throated sunbird, Purple ramped sunbird, Ruby-cheeked sunbird, Crimson sunbird, Grey- headed parakeet, Plum-headed parakeet, Blossom-headed parakeet, Red-breasted parakeet, Vernal hanging parrot, Oriental white eye, White rumped shama. Other than birds you’ll also find Phayres leaf monkeys and capped langur here. The capped langur is a beautiful golden monkey and are a treat to find whilst Phayres leaf monkeys are incredibly rare and difficult to find. There are also pig-tailed macaques, rhesus macaques, Indian muntjacs, wild boar, fishing cats. Return Srimongal and after dark for a short spotlighting walk. Overnight at Resort \r\n\r\nDay 05: Baikka Beel and Return back to Dhaka\r\nThis day we’ll explore the wet land of Srimangal. 06.00 am drive to wetland Sanctuary - Baikka Beel for bird watching. Spending the time at watch tower will give you wonderful chance for bird watching and photography. This wonderful wet land sanctuary is the living place of numerous birds and fishes. From the time you enter the wet land area you will be engrossed by the sweet chirping of various birds such as Lesser Whistling-Duck, Comb Duck, Cotton Pygmy-Goose, Gadwall, Falcated Duck, Eurasian Wigeon, Mallard, Indian Spot-billed Duck, Northern Shoveler, Northern Pintail, Garganey, Purple swamp hen, Bronze winged jacana, Pheasant tailed jacana, Eurasian Wryneck, White Wagtail, White-browed Wagtail, Citrine Wagtail, Grey Wagtail, Paddy field Pipit, Striated grass etc. Travel back to Dhaka (200 km, 5 hrs). Overnight Dhaka.\r\n\r\nBangladesh Bird Watching Tour\r\n\r\n \r\n\r\nDay 06: Departure Transfer\r\nOn time departure transfer to airport for onward destination.\r\n\r\nPlease note that the itinerary stated above is correct as our planned intentions for the tour. However adverse weather conditions and other local considerations can necessitate some modifications of the itinerary during the course of the tour; any changes will be made to make the best of the time and weather conditions available to us.', 'Bangladesh_Bird_Watching_Tours.jpg', '2017-05-13 22:39:37', '2019-08-03 13:56:37'),
(5, 'Wildlife Of Bangladesh', 'Ghurte Nao Special', 'Multiple Locations', 4000, '3 nights on our chartered boat, Up to 8 primate species, Tiger tracking on foot', 'Day 1: Arrival, Birding Trip at Botanical Garden \r\nReceive and met by our zoologist guide at Dhaka Zia International Airport. Transfer to hotel. After check in and fresh up if time permits we’ll offer guided birding trip at botanical Garden which is known for its gorgeous plant but beautiful birds . It’s a great place for bird watching.\r\n\r\n \r\n\r\nDay 2: Srimangal\r\n07.00 am drive to Srimangal (200 km, 4 hrs). Check in to the hotel. After fresh up and lunch followed by a birding trip to Kalachara forest and local tribal villages. Overnight stay at at Resort.\r\n\r\n \r\n\r\nDay 3: Srimangal\r\nThe next three days will be spent in the heart of rural and wildlife of Bangladesh. We are in the east of the country and close to the border with the Indian state of Tripura. This region is full of wildlife hidden in its deep rainforests; however due to deforestation, poaching and a growing human population most if not all of these animals are in serious danger. We will aim to find some of the most impressive and rarest over the next three days and try to highlight their plight. Depending on the local conditions the order we visit the different parks here is changeable; but we will aim to visit Lowacharra National Park today. Once in the park we will have guided walks into the forest to try and find the very rare western hoolock gibbon which are more regularly seen here than anywhere else (an estimate of 49 individuals living in the park was made in 2006). As well as the gibbons, orange-bellied Himalayan squirrels, Indian muntjac, pig-tailed macaques and rhesus macaques are commonly seen. If the authorities permit us we will come back after dark for a short spotlighting walk to see if there are any fishing cats, slow loris, masked civets or other nocturnal animals around. Overnight stay at resort.\r\n\r\n \r\n\r\nDay 4: Srimangal \r\nThis day we’ll explore the wet land of Srimangal. 06.00 am drive to wetland Sanctuary - Baikka Beel for bird watching. Spending the time at watch tower will give you wonderful chance for bird watching and photography. This wonderful wet land sanctuary is the living place of numerous birds and fishes. From the time you enter the wet land area you will be engrossed by the sweet chirping of various birds. Lesser whistling ducks, purple swamp hen, common moorhen, marsh harriers, teals, darter, pallas’s fish eagle, egret, herons and many other birds are seen here. After fresh up and lunch followed by a trip to Tea gardens forest area and local villages. Overnight stay at hotel.\r\n\r\n \r\n\r\nDay 5: Srimangal \r\nAfter breakfast transfer Satchari National Park, the format of the visit is similar to Lowacherra National Park but we will focus on finding Phayres leaf monkeys and capped langurs here. The capped langur is a beautiful golden monkey and are a treat to find whilst Phayres leaf monkeys are incredibly rare and difficult to find. There are also pig-tailed macaques, rhesus macaques, Indian muntjacs, wild boar, fishing cats and many more species of birds (pygmy woodpeckers, red-headed tragoons, red jungle fowl, puff-throated babblers and oriental pied hornbills), reptiles and amphibians. We will have lunch at a local restaurant or back at our accommodation. Overnight stay at hotel.\r\n\r\n \r\n\r\nDay 6: Dhaka \r\nTravel back to Dhaka (200 km, 5 hrs). Lunch at local restaurant, we will have the rest of the afternoon and evening at your leisure. Overnight stay at hotel.\r\n\r\n \r\n\r\nDay 7: Sundarbans \r\nToday we embark on our adventure trip into the heart of the largest mangrove forest in the world and a national park home to the largest population of wild tigers left in the world! Over 200-450 have been estimated to live in the park and we will try and track one down…on foot! and this means a transfer in our vehicle from Dhaka to Mongla or Khulna. If our boat is moored at Khulna we will have the added experience of crossing the Padma River (the life blood of this burgeoning country) at one of its busiest points. Once we are on our boat we will unpack and start our journey towards the Bay of Bengal. Along the way we will see the hustle and bustle of Bangladesh begin to fade away as the towns turn to villages which in turn become shacks and then nothing but trees as far as the eye can see. There is a wealth of people who use the water ways here and its brilliant to see the local people using fishing and harvesting techniques many hundreds of years old. As well as the people and boats we will keep an eye out for brahminy kites and grey-headed fish eagles soaring above and best of all the highly endangered Gangetic river dolphins which briefly break the surface to blow. We will stop at the Dhangmari forest office to gain permission to enter and meet our armed escorts (which are mandatory for visiting the park). Our evening meal will be on board and we will spend the night onboard as well.\r\n\r\n \r\n\r\nDay 8: Sundrbans \r\nToday we will continue our journey from Dhangmari to Kachikhali forest station (7-8 hours cruising). Here we will spend the night surrounded by mangrove forests, virgin sea beaches and a view out into the Bay of Bengal. Tigers are regularly spotted here and it’s not uncommon to see them prowling the beach at night or early morning as well as herds of spotted deer and family groups of wild boar. We will spend an hour to two in the evening with a spotlight to try and find some tigers.\r\n\r\n \r\n\r\nDay 9: Sundarbans \r\nEarly morning before sunrise there will be the option to have an hour or so spotlighting to see if there is a tiger having a drink at the rivers edge or even swimming across the river; after this we will use small country boats to travel into the smaller creeks and streams of the mangrove forest and look for drinking animals like chital, tigers, wild boar, rhesus macaques as well as the local bird life such as white-throated kingfishers, black-capped kingfishers, rudy king fisher green bee-eaters, little herons and the very rare masked fin-foot. This trip will last an hour or two and after we will have breakfast back on the boat. We then set off to Katka Game Sanctuary (1-2 hours) and on arrival will leave the boat and have a hike through the jungle where we usually find fresh tiger prints and hope to see on walking through the dense vegetation. We will spend some time on the beach here and relax in one of the most wild and remote areas in the world. Lunch will be served on the boat and in the afternoon we will explore some of the area around the local forest station and see if we can find more evidence of tigers here. We usually have a BBQ tonight for our evening meal with locally caught fish the main treat. As yesterday there will be spotlighting after dark. We will once again spend the night on the boat.\r\n\r\n \r\n\r\nDay 10: Dhaka \r\nEarly in the morning there will be spotlighting offered to look to tigers before dawn. Then after breakfast we will begin our journey back to Mongla / Khulna where we have a good chance of spotting large estuarine crocodiles basking if the sun is out. Along with the crocs we will look for dolphins, monkeys, birds and monitor lizards all the way back to civilisation. Our lunch will be served onboard before we disembark and head back to Dhaka for our last night in Bangladesh. Our evening meal will be at the accommodation.\r\n\r\n \r\n\r\nDay 11: Departure transfer \r\nOn time departure transfer to airport for onward destination.', 'wildlife-tour-Bangladesh.png', '2017-05-13 22:42:10', '2019-08-03 13:57:20'),
(6, 'Sonargaon Tour in Weekend', 'Extreme Deals', 'Dhaka', 6000, 'All Feature Fare Included. No Hidden Charges', 'Cost includes:\r\n- 1 night twin share accommodation (Deluxe room) at Royal Resort with breakfast in Sonargaon\r\n- Ac private transport for all transfer & sightseeing\r\n- 1 hr Gymnasium, 1 hr swimming pool complimentary\r\n- 2 hrs cruise by wooden country boat\r\n- Sightseeing with English speaking guide\r\n- All vat, taxes and service charge.\r\n\r\nCost excludes: Meals, entry fees of the monuments, tips, hard & soft drinks, laundry and expenses of personal matter.', 'royal-resort.jpg', '2017-05-14 08:01:08', '2019-08-03 13:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Wasim', '1825053040', 'wasimsurjo@gmail.com', 'wasim', '2017-05-10 10:38:17', '2019-07-15 09:27:44'),
(2, 'Ananna', '1737578964', 'ananna@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2019-07-15 07:06:11'),
(13, 'Wasim Mahmud Surjo', '1636731450', 'wasim@gmail.com', 'a5f37a6bb9c82536fb9581768dca5958', '2019-07-15 09:40:38', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
