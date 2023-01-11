INSERT INTO ill (first_name, last_name, age, phone_number, email)
VALUES ('Kim', 'Sign', 25, '585-360-0248', 'ksign0@live.com'),
       ('Geralda', 'Minchenton', 62, '169-565-4340', 'gminchenton1@independent.co.uk'),
       ('Richmound', 'Aliberti', 34, '974-275-9376', 'raliberti2@howstuffworks.com'),
       ('Blake', 'Roycraft', 27, '940-508-7584', 'broycraft3@wordpress.org'),
       ('Corbin', 'Bartalucci', 54, '780-712-9750', 'cbartalucci4@thetimes.co.uk'),
       ('Dion', 'Robertson', 67, '194-168-4969', 'drobertson5@pen.io'),
       ('Isacco', 'Berndtssen', 71, '842-402-0371', 'iberndtssen6@forbes.com'),
       ('Carroll', 'Ilyas', 32, '102-572-6664', 'cilyas7@senate.gov'),
       ('Rosabella', 'Callar', 47, '769-128-0115', 'rcallar8@fotki.com'),
       ('Jacinthe', 'Towson', 39, '712-906-4582', 'jtowson9@hao123.com'),
       ('Iona', 'Widdall', 21, '297-703-3413', 'iwiddalla@mashable.com'),
       ('Elsy', 'Boni', 17, '418-206-3044', 'ebonib@utexas.edu'),
       ('Salmon', 'Valti', 30, '625-908-7528', 'svaltic@alibaba.com'),
       ('Dianne', 'Reddyhoff', 14, '322-381-0325', 'dreddyhoffd@springer.com'),
       ('Skyler', 'Aron', 28, '922-179-8774', 'sarone@godaddy.com');

INSERT INTO recipe (ill_id, diagnosis_code, application_date, drug_name, drug_amount)
VALUES (1, 'V430', '2022-02-23', 'Triamcinolone Acetonide', 2),
       (2, 'M2142', '2022-03-04', 'Alka-Seltzer Plus Cold and Cough Formula', 4),
       (3, 'T25511', '2022-08-24', 'equaline childrens ibuprofen oral suspension', 1),
       (6, 'T2156XD', '2022-03-08', 'Cold Spot', 3),
       (5, 'S66595S', '2022-12-03', 'Health Smart Lavender Baby Petroleum', 5),
       (8, 'M211', '2022-02-16', 'DAILY MOISTURIZING', 5),
       (7, 'T25491D', '2022-09-01', 'cefuroxime axetil', 3),
       (1, 'S82123G', '2022-08-12', 'Quinapril Hydrochloride', 2),
       (10, 'S36593A', '2022-09-03', 'Neutrogena Healthy Skin Makeup', 2),
       (11, 'T48204D', '2022-09-28', 'AMERICAN BEECH POLLEN', 4),
       (2, 'T85615', '2022-09-15', 'Naproxen', 4),
       (14, 'S52336P', '2022-03-01', 'Bacitracin Zinc', 1),
       (4, 'S62368', '2022-12-23', 'Coricidin HBP Cough and Cold', 4),
       (9, 'T84621S', '2022-11-02', 'XtraCare Foam Antibacterial Hand Wash', 4),
       (15, 'T34539D', '2022-06-20', 'ATORVASTATIN CALCIUM', 1),
       (12, 'M84612G', '2022-03-07', 'Liver Drainage', 1),
       (13, 'V530', '2022-02-03', 'Smart Sense Sleep Aid', 4),
       (7, 'Z91040', '2022-11-18', 'Humco Strong Iodine Tincture', 3),
       (11, 'M5184', '2022-05-08', 'Cuprum Aceticum 3', 1),
       (6, 'S60341D', '2022-12-26', 'Phentermine Hydrochloride', 5);

INSERT INTO drugstore (address, contact_number, pharmacy_name)
VALUE ('766 Lakeland Drive Ste A Jackson MS 39216 US', '(601) 368-3442', 'AHF Pharmacy - Jackson');

INSERT INTO receptionist (drugstore_id, first_name, surname, phone_number, birth_date)
VALUES (1, 'Dew', 'Jefford', '849-210-7280', '1984-11-07'),
       (1, 'Maddie', 'Armatidge', '215-705-9845', '1982-03-13'),
       (1, 'Bibby', 'Lamacraft', '612-115-7090', '1979-05-17'),
       (1, 'Brander', 'Pinnion', '302-203-1522', '1989-09-28');

INSERT INTO given_orders (recipe_id, receptionist_id, delivery_date)
VALUES (1, 1, '2022-12-17'),
       (6, 2, '2022-09-26'),
       (7, 3, '2022-10-07'),
       (2, 1, '2022-03-15'),
       (10, 2, '2021-09-24'),
       (11 , 4, '2021-09-19'),
       (9, 2, '2021-12-26'),
       (5, 3, '2021-02-18'),
       (15, 4, '2021-06-17'),
       (4, 1, '2022-09-07'),
       (8, 2, '2021-04-05'),
       (13, 3, '2022-05-02');

INSERT INTO prepared_drugs (drugstore_id, drug_name, price, critical_minimum)
VALUES (1, 'Triamcinolone Acetonide',182.83,2),
       (1, 'Alka-Seltzer Plus Cold and Cough Formula',321.53,4),
       (1, 'equaline childrens ibuprofen oral suspension',43.71,2),
       (1, 'Cold Spot',171.23,3),
       (1, 'DAILY MOISTURIZING',157.81,4),
       (1, 'Tramadol Hydrochloride',133.42,4),
       (1, 'CLARINS Broad Spectrum SPF 15 Everlasting Foundation Tint 103',49.08,4),
       (1, 'Derma-Smoothe/FS',182.99,4),
       (1, 'Cyclopentolate Hydrochloride',340.82,1),
       (1, 'Carbidopa and Levodopa',458.42,4),
       (1, 'LOSARTAN POTASSIUM',413.12,4),
       (1, 'Alprazolam',490.97,5),
       (1, 'Perphenazine',400.27,4),
       (1, 'Coricidin HBP Cough and Cold',30.92,1),
       (1, 'Phentermine Hydrochloride',432.97,2);

INSERT INTO drug_application (drug_id, order_time, drug_amount)
VALUES (1, '2022-06-15 18:07:01',8),
       (7, '2022-09-06 17:14:23',15),
       (6, '2022-02-06 10:01:47',9),
       (15, '2022-07-27 14:22:49',11),
       (5, '2022-02-02 17:33:46',12),
       (3, '2023-01-07 00:54:03',12),
       (4, '2022-11-03 22:18:55',13),
       (10, '2022-07-17 03:42:41',14),
       (11, '2022-11-01 20:26:20',9),
       (12, '2022-12-24 05:08:27',8);

INSERT INTO handmade_drugs (drugstore_id, drug_name, drug_form, price)
VALUES (1, 'Rosehip tincture', 'tincture', 12.50),
       (1, 'Soup gel', 'grout', 5.25),
       (1, 'Eucalyptus balm', 'salve', 10.75),
       (1, 'Hematogen', 'mixture', 7.77),
       (1, 'Aldenol', 'powder', 10.33),
       (1, 'Concatenol', 'grout', 70.44),
       (1, 'Pontenol', 'salve', 50.55);

INSERT INTO technology_directory (drug_id, components)
VALUES (1, 'dried rosehips, orange juice, honey, lemon juice, grated orange zest'),
       (2, 'sodium salts of fatty acids of palm, coconut, sunflower oils, natural fats, water, sodium chloride, antioxidant'),
       (3, 'eucalyptus oil, corn oil, solid fat, yellow wax'),
       (4, 'acetylsalicylic acid, powdered cellulose, corn starch'),
       (5, 'cetostearyl alcohol, macrogolglycerol cocoate, propylene glycol, purified water'),
       (6, 'ascorbic acid, sucrose, starch syrup'),
       (7, 'microcrystalline cellulose, croscarmellose sodium, anhydrous colloidal silicon dioxide, corn starch, magnesium stearate.')