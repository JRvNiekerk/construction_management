USE ConstructionDB
GO
INSERT INTO Location (streetAddress, city, province, postalCode) 
VALUES  ('1567 Ireland St', 'White River', 'Mpumalanga', '1254'),
        ('1126 South St', 'Medunsa', 'North West', '0204'),
        ('781 Oranje St', ' Bethlehem', 'Free State', '9703'),
        ('401 Rus St', 'Paarl', 'Western Cape', '7622'),
        ('398 Zigzag Rd', 'Johannesburg', 'Gauteng', '2009'),
        ('1418 Visser St', 'Bloemfontein', 'Free State', '9364'),
        ('771 Station Road', 'Ladysmith', 'KwaZulu-Natal', '3370'),
        ('1114 Dikbas Road', 'Marble Hall', 'Mpumalanga', '0458'),
        ('610 Roger St', 'Magadla', 'Eastern Cape', '4751'),
        ('449 Oost St', 'Sekhukhune', 'Limpopo', '1127'),
        ('801 Fox St', 'Stilfontein', 'North West', '2552'),
        ('1729 Gleemoor Rd', 'Pomfret', 'North West', '8625'),
        ('635 Morgan Rd', 'Ceza', 'KwaZulu-Natal', '3871'),
        ('1993 Morgan Rd', 'Richards Bay', 'KwaZulu-Natal', '3902'),
        ('897 Protea St', 'Port Elizabeth', 'Eastern Cape', '6045');
GO

INSERT INTO Contractor (contractorName, contractorSurname) 
VALUES  ('Karita', 'Sheahan'),
        ('Hali', 'Ridler'),
        ('Leupold', 'Ricca'),
        ('Adan', 'Pakenham'),
        ('Elliot', 'Merida'),
        ('Dena', 'Tures'),
        ('Em', 'Glendining'),
        ('Emlyn', 'Sandercroft'),
        ('Cosimo', 'Wodham'),
        ('Avrom', 'Spere'),
        ('Meara', 'Oiseau'),
        ('Ingunna', 'Glendza');
GO
INSERT INTO Client (clientName, clientSurname, clientMobile, clientEmailAdress, companyName) 
VALUES  ('Amie', 'Lally', '331-774-6108', 'alally0@spotify.com', 'Janyx'),
        ('Torrance', 'Whiteson', '677-724-0263', 'twhiteson1@kickstarter.com', 'Twitterlist'),
        ('Dona', 'Kearns', '672-624-1950', 'dkearns2@geocities.com', 'Dynava'),
        ('Lynne', 'Ballintime', '382-984-1618', 'lballintime3@si.edu', 'Meetz'),
        ('Brok', 'Spalding', '963-986-9267', 'bspalding4@quantcast.com', 'Skinte'),
        ('Alexandros', 'Warfield', '533-831-9740', 'awarfield5@github.com', 'Vinder'),
        ('Celina', 'Yurkiewicz', '982-307-7747', 'cyurkiewicz6@posterous.com', 'Aibox'),
        ('Terry', 'Lardge', '686-737-7382', 'tlardge7@drupal.org', 'Twitterbridge'),
        ('Angele', 'Anders', '493-893-4983', 'aanders8@un.org', null),
        ('Lisabeth', 'Bond', '744-221-3643', 'lbond9@sourceforge.net', 'Lazz'),
        ('Valentine', 'Furby', '697-981-0846', 'vfurbya@tiny.cc', 'Buzzdog'),
        ('Lanna', 'Bouchier', '246-955-5140', 'lbouchierb@hhs.gov', null),
        ('Pearl', 'Bachellier', '561-195-9302', 'pbachellierc@clickbank.net', 'Tagopia'),
        ('Mignonne', 'Fynes', '243-679-3802', 'mfynesd@tumblr.com', 'Dynazzy'),
        ('Baldwin', 'Twatt', '460-119-7672', 'btwatte@apple.com', null),
        ('Edita', 'McCosker', '357-478-6378', 'emccoskerf@a8.net', null),
        ('Laurens', 'Littlechild', '738-869-2885', 'llittlechildg@independent.co.uk', 'Fatz'),
        ('Janina', 'Dominichelli', '238-210-9084', 'jdominichellih@twitter.com', 'Realcube'),
        ('Ingeborg', 'Patient', '854-506-6898', 'ipatienti@fda.gov', 'Linktype'),
        ('Stefa', 'Schumacher', '392-679-5733', 'sschumacherj@uol.com.br', 'Vidoo'),
        ('Bea', 'Cicchelli', '924-804-0675', 'bcicchellik@europa.eu', 'Thoughtmix'),
        ('Remy', 'Gallemore', '128-697-9702', 'rgallemorel@comsenz.com', 'Jaxbean'),
        ('Marne', 'Bicker', '129-109-1259', 'mbickerm@japanpost.jp', 'Divavu'),
        ('Perice', 'Birtchnell', '288-341-9653', 'pbirtchnelln@state.gov', 'Brainsphere'),
        ('Berk', 'Culp', '385-416-9351', 'bculpo@bloglines.com', 'Demimbu'),
        ('Claudian', 'Kwietek', '937-538-4763', 'ckwietekp@biblegateway.com', 'Vidoo'),
        ('Kaja', 'Kiraly', '944-975-6802', 'kkiralyq@fastcompany.com', 'LiveZ'),
        ('Tallulah', 'Arnaudot', '969-926-0213', 'tarnaudotr@vinaora.com', 'Oyoloo'),
        ('Korney', 'Desouza', '660-609-1614', 'kdesouzas@flickr.com', 'Skimia'),
        ('Christy', 'Butson', '233-581-2902', 'cbutsont@furl.net', 'Kanoodle');
GO
INSERT INTO Project (projectName, projectStatus, projectBudget, projectStartDate, projectEndDate, locationID, clientID, contractorID) 
VALUES  ('Jelutong', 'In_Progress', 3792670.97, '2023-02-07', '2025-12-25', 4002, 1025, 2005),
        ('Arrowhead Vine', 'Approved', 8087083.88, '2024-06-23', '2026-11-10', 4012, 1007, 2007),
        ('Sanddune Wallflower', 'In_Progress', 4868656.71, '2022-04-01', '2023-07-19', 4012, 1021, 2006),
        ('Sessile Pterygoneurum Moss', 'In_Progress', 204169.47, '2023-04-30', '2025-06-14', 4014, 1012, 2001),
        ('Chondrodendron', 'In_Progress', 2931146.43, '2022-11-21', '2025-02-03', 4009, 1007, 2006),
        ('Big Bend Beardtongue', 'Pending', 4061863.25, '2022-09-12', '2025-01-16', 4002, 1017, 2002),
        ('Ovateleaf Flatsedge', 'In_Progress', 2337422.27, '2023-02-06', '2025-12-24', 4005, 1020, 2003),
        ('Creosote Bush', 'In_Progress', 6328300.74, '2024-04-23', '2024-11-22', 4001, 1026, 2002),
        ('Giant Blue Eyed Mary', 'In_Progress', 5454780.03, '2022-01-23', '2023-05-02', 4001, 1015, 2004),
        ('California Helianthella', 'Declined', 731280.21, '2023-01-02', '2024-02-24', 4015, 1003, 2012),
        ('Splashzone Moss', 'In_Progress', 9417190.38, '2023-12-02', '2026-05-14', 4014, 1013, 2005),
        ('New England Blackberry', 'In_Progress', 4112069.31, '2022-07-25', '2023-03-13', 4005, 1012, 2011),
        ('Nodding Strap Airplant', 'Pending', 1791902.52, '2022-01-02', '2025-01-11', 4013, 1012, 2009),
        ('Catillaria Lichen', 'In_Progress', 569724.06, '2023-05-18', '2024-03-31', 4004, 1025, 2009),
        ('Fringed Spineflower', 'Approved', 2766578.22, '2022-10-24', '2024-07-01', 4005, 1027, 2005),
        ('American Golden Saxifrage', 'Approved', 2896358.20, '2024-02-24', '2026-10-23', 4008, 1021, 2012),
        ('Maricao Cimun', 'In_Progress', 1927245.49, '2023-07-29', '2025-07-19', 4004, 1018, 2009),
        ('Smooth Woodyaster', 'In_Progress', 7429638.78, '2024-04-16', '2025-07-07', 4010, 1028, 2005),
        ('Narcissus Anemone', 'In_Progress', 6448653.61, '2022-09-23', '2023-04-04', 4011, 1021, 2011),
        ('Laurel', 'In_Progress', 9442278.36, '2022-10-18', '2025-02-23', 4004, 1030, 2005),
        ('Rattan''s Sandmat', 'In_Progress', 2192111.58, '2024-11-20', '2025-08-24', 4005, 1008, 2005),
        ('Palmer''s Mariposa Lily', 'Completed', 6021935.77, '2023-07-07', '2024-04-09', 4005, 1019, 2011),
        ('Oregon False Goldenaster', 'Completed', 154452.30, '2024-12-13', '2026-02-08', 4008, 1006, 2010),
        ('Schott''s Century Plant', 'In_Progress', 326992.24, '2022-03-15', '2023-12-05', 4007, 1015, 2012),
        ('Arizona Adder''s-mouth Orchid', 'In_Progress', 7976741.01, '2023-03-21', '2026-03-16', 4010, 1013, 2007),
        ('Hybrid Willow', 'Approved', 2377016.87, '2022-02-26', '2022-10-02', 4013, 1026, 2002),
        ('Hairy Bugseed', 'In_Progress', 3346518.94, '2024-05-01', '2026-08-08', 4012, 1008, 2006),
        ('Ragged Rockflower', 'In_Progress', 4278964.32, '2024-10-23', '2024-12-04', 4015, 1013, 2011),
        ('Globular Maiden Fern', 'In_Progress', 7541333.27, '2023-12-07', '2026-11-12', 4009, 1012, 2011),
        ('Turpentine Wavewing', 'In_Progress', 1651316.66, '2024-07-23', '2026-11-04', 4001, 1019, 2007),
        ('Rock Buckthorn', 'In_Progress', 9357292.03, '2022-04-17', '2024-08-10', 4011, 1023, 2007),
        ('Spinytooth Clover', 'Pending', 9661489.96, '2022-07-17', '2025-03-12', 4003, 1020, 2003),
        ('Fosberg''s Starviolet', 'In_Progress', 2332882.12, '2022-08-06', '2023-12-16', 4013, 1024, 2003),
        ('Broadleaf Noddingcaps', 'In_Progress', 4235716.61, '2024-02-16', '2025-11-13', 4006, 1006, 2005),
        ('Elaeagnus Willow', 'Declined', 3437895.52, '2022-01-09', '2024-02-13', 4015, 1004, 2002);
GO

INSERT INTO Supplier(supplierName, supplierDescription, locationID)
VALUES
	('InnoZ','Construction is a fascinating area of the building industry, but it can also be an extremely time-consuming and expensive one.',4081),
	('Babblestorm', 'You''ve much more than just bricks and mortar on your hands. When constructing your house you have numerous choices to make, and that''s even truer when you''re building your garden.', 4048),
	('Thoughtstorm', '16 colourful and easy-to-use construction materials which are used for making everything from a simple path to a beautiful and intricate garden.', 4060),
	('Babbleopia', 'Construction is a manly occupation. Whether you''re a do-it-yourself type or prefer to hire a professional, this is a great guide for getting started.', 4058),
	('Yamia', 'Learn landscaping techniques to build a beautiful garden or patio with just a few simple tools, tiles, and bricks.', 4013),
	('Skynoodle', 'Construction is a vital part of any project. This shop provides a comprehensive materials to the basics of laying bricks and building a house.', 4014),
	('Buzzster', 'You can build almost anything you can imagine with the right tools and materials. This book shows you how.', 4090),
	('Thoughtbeat', 'How to build a deck with wood and tiles. Find out about the different types of wood, how to make things secure, and which tiles you can use.', 4075),
	('Meetz', 'A construction site is a messy, dirty place, but the work that goes into a building can be even more so. A lot of the materials you''ll need to build a home or office will come from the construction site, which means there''s a lot to think about before you sign on the dotted', 4077),
	('Snaptags', 'Build the ultimate backyard or patio garden with the help of this handy guide. It brings together everything you can get about building a landscaping project from start to finish.', 4029),
	('Jaxnation', 'You''ve much more than just bricks and mortar on your hands. When constructing your house you have numerous choices to make, and that''s even truer when you''re building your garden.', 4061),
	('Topicstorm', 'Construction is an important part of any project. Understanding the best way to lay bricks and use materials can make or break a job.', 4074),
	('Camido', 'Here are some interesting construction projects from around the world. See how these structures were built and the materials used.', 4001);
GO

INSERT INTO Invoice (projectID)
VALUES 
	(6007),
	(6007),
	(6018),
	(6002),
	(6007),
	(6002),
	(6002),
	(6002),
	(6018),
	(6011),
	(6002),
	(6011),
	(6011),
	(6002),
	(6020),
	(6032),
	(6027),
	(6023);
GO

INSERT INTO Role (name) 
VALUES 
		('Engineer'),
		('Architect'),
		('Foreman'),
		('Electrician'),
		('Surveyor'),
		('Inspector'),
		('Manager'),
		('Bricklayer'),
		('Carpenter'),
		('Plumber'),
		('Painter'),
		('Tiler'),
		('Welder'),
		('Fitter'),
		('Roofer'),
		('Scaffolder'),
		('Stonemason'),
		('Pipefitter'),
		('Operator'),
		('Driver'),
		('Technician');
GO

INSERT INTO Engineer (engineerName, engineerSurname, type, projectID)
VALUES
		('Harman','Stuckey', 'INFRASTRUCTURE',6004),
		('Rory','Cockayme', 'INFRASTRUCTURE',6032),
		('Erek','Balcon', 'GEOTECHNICAL',6011),
		('Iorgo','Crighton', 'GEOTECHNICAL',6001),
		('Cammy','Guidera', 'TRANSPORTATION',6001),
		('Normy','Hadenton', 'ENVIRONMENTAL',6004),
		('Mirabelle','Shurville', 'ENVIRONMENTAL',6025),
		('Palm','Himpson', 'INFRASTRUCTURE',6027),
		('Shell','Shade', 'GEOTECHNICAL',6030),
		('Owen','Ching', 'TRANSPORTATION',6031),
		('Debee','Fleming', 'ENVIRONMENTAL',6031),
		('Tory','Eddolls', 'GEOTECHNICAL',6023),
		('Wayne','Fayter', 'INFRASTRUCTURE',6023),
		('Glennis','Pirozzi', 'INFRASTRUCTURE',6033),
		('Bobbee','Lambotin', 'ENVIRONMENTAL',6022),
		('Wiley','Peat', 'INFRASTRUCTURE',6007),
		('Elysee','Sturman', 'ENVIRONMENTAL',6004),
		('Vinita','Jaume', 'TRANSPORTATION',6005),
		('Terrye','Riche', 'INFRASTRUCTURE',6021),
		('Clara','McGeagh', 'ENVIRONMENTAL',6028),
		('Rodie','Rudkin', 'ENVIRONMENTAL',6029),
		('Leola','Speares', 'INFRASTRUCTURE',6029),
		('Nanice','Jovicic', 'INFRASTRUCTURE',6003),
		('Cherlyn','Ioan', 'GEOTECHNICAL',6006),
		('Octavia','Lingwood', 'INFRASTRUCTURE',6006),
		('Peyton','Maestrini', 'TRANSPORTATION',6009),
		('Mei','Maloney', 'INFRASTRUCTURE',6035),
		('Freeland','Jardin', 'ENVIRONMENTAL',6002),
		('Theadora','Nelthrop', 'GEOTECHNICAL',6001),
		('Eward','Hartshorne', 'INFRASTRUCTURE',6028),
		('Hubey','Scrafton', 'ENVIRONMENTAL',6027),
		('Beitris','Pearl', 'ENVIRONMENTAL',6021),
		('Avie','Daubney', 'GEOTECHNICAL',6009),
		('Karlotta','Andrivot', 'ENVIRONMENTAL',6012),
		('Feodora','Febvre', 'STRUCTURAL',6013),
		('Haily','Tollet', 'STRUCTURAL',6015),
		('Vaughan','Fitchen', 'ENVIRONMENTAL',6012),
		('Lianne','Girardy', 'GEOTECHNICAL',6017),
		('Clarabelle','Seymark', 'TRANSPORTATION',6026),
		('Mariana','Pockey', 'INFRASTRUCTURE',6023),
		('Mil','Parlett', 'TRANSPORTATION',6017),
		('Sallyann','Lowman', 'GEOTECHNICAL',6004),
		('Seward','Allright', 'INFRASTRUCTURE',6005),
		('Buddy','Beckenham', 'STRUCTURAL',6009),
		('Constancy','Yedall', 'INFRASTRUCTURE',6010),
		('Issie','Klosges', 'ENVIRONMENTAL',6014),
		('Estella','Wallis', 'STRUCTURAL',6035),
		('Guthry','Dayment', 'TRANSPORTATION',6030),
		('Tim','Skingley', 'INFRASTRUCTURE',6033),
		('Denys','Querrard', 'GEOTECHNICAL',6032),
		('Ashely','Scurrah', 'ENVIRONMENTAL',6031),
		('Laurie','Divisek', 'INFRASTRUCTURE',6027),
		('Waldemar','Dennitts', 'STRUCTURAL',6032),
		('Biron','Segges', 'ENVIRONMENTAL',6029),
		('Cross','Megany', 'TRANSPORTATION',6028),
		('Travis','Kundert', 'ENVIRONMENTAL',6007),
		('Brigham','Braemer', 'GEOTECHNICAL',6005),
		('Freddy','Fairbairn', 'GEOTECHNICAL',6003),
		('Arline','Scottini', 'STRUCTURAL',6001),
		('Jo-anne','Auten', 'INFRASTRUCTURE',6006);
GO

INSERT INTO Permit(permitName, permitDescription, permitDocumentLink, approverName, projectID)
VALUES
		('Building', 'Shows prospective clients that the compamy is qualified to handle the job and in compliance with local building regulations', '/documents/permits/BuildingPermit.pdf', 'Gert Sibande Municipality', 6001),
		('Confined Spaces', 'Ensures workers are equipped to work in confined spaces and reduce the potential of injury', '/documents/permits/ConfinedSpacesPermit.pdf', 'Site Manager', 6035),
		('Restricted Access', 'Prevents workers from entering restricted areas of the site that could be dangerous site zones', '/documents/permits/RestrictedAccessPermit.pdf', 'Site Manager', 6020),
		('Roof Access', 'Reduces the chances of unqualified workers making their way to the rooftops', '/documents/permits/RoofAccessPermit.pdf', 'Site Manager', 6007),
		('Occupancy', 'Signifies that project is compliant to the province building code', '/documents/permits/OccupancyPermit.pdf', 'Goven Mbeki Municipality', 6028),
		('Electrical', 'Ensures that all electrical connections are secure and not dangerours', '/documents/permits/ElectricalPermit.pdf', 'Eskom', 6031),
		('Sanitary', 'Ensures that the work place and its workers fulfills cleanliness standards', '/documents/permits/SabitaryPermit.pdf', 6002);
GO