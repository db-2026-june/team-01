-- ================================================================
-- SQL DML TEMPLATE (TOPIC 09)
-- ================================================================
-- WHAT SHOULD BE ADDED HERE:
-- 1) INSERT scripts for all required tables in your database.
-- 2) At least 10 records per table with meaningful, realistic values.
-- 3) UPDATE / DELETE scripts where they are relevant to business logic.
-- 4) If UPDATE / DELETE are not relevant for a table, add a short note
--    in documentation explaining why.
-- 5) Comments by section so the script is easy to read and run.
--
-- SCRIPT GOALS:
-- - Populate the database with usable test data.
-- - Validate constraints through realistic DML scenarios.
-- - Support the core functionality of your application.
--
-- RECOMMENDED ORDER:
-- 1) Reference data (lookups/dictionaries)
-- 2) Core entities
-- 3) Transactional data
-- 4) Optional UPDATE / DELETE checks
--
-- IMPORTANT:
-- - Use anonymized or privacy-safe sample data where possible.
-- - The script must execute in PostgreSQL.
-- - Submit this as one SQL file.
-- ================================================================

-- Add your DML below this line

INSERT INTO FitServe.user_info (
  registration_date,
  first_name,
  last_name,
  date_of_birth,
  phone_number,
  sex,
  preferred_pronouns,
  address
)
VALUES
  (TIMESTAMP '2023-01-18 12:55:33', 'Артем', 'Мельник', DATE '1991-05-15', '+3800967389545', 'Male', 'він/його', 'Україна, м. Київ, вул. Героїв України, буд. 52, кв. 146'),
  (TIMESTAMP '2023-11-21 15:35:20', 'Іванна', 'Лисенко', DATE '2005-11-05', '+3800972925420', 'Female', 'вона/її', 'Україна, м. Одеса, вул. Миру, буд. 98'),
  (TIMESTAMP '2024-12-23 14:50:30', 'Любов', 'Тимошенко', DATE '1993-05-28', '+3800999557975', 'Female', NULL, 'Україна, м. Запоріжжя, вул. Польова, буд. 13, кв. 117'),
  (TIMESTAMP '2026-01-10 13:55:26', 'Дарина', 'Мороз', DATE '1988-03-06', '+3800999676854', 'Female', 'вона/її', 'Україна, м. Кременчук, вул. Князя Романа, буд. 141, кв. 84'),
  (TIMESTAMP '2024-02-14 17:35:15', 'Віктор', 'Романенко', DATE '1991-12-25', '+3800936151486', 'Male', 'він/його', 'Україна, м. Хмельницький, вул. Наукова, буд. 39, кв. 197'),
  (TIMESTAMP '2023-06-03 17:35:08', 'Микола', 'Савченко', DATE '1994-05-10', '+3800991740602', 'Male', 'він/його', 'Україна, м. Чернівці, просп. Свободи, буд. 10, кв. 218'),
  (TIMESTAMP '2025-06-24 17:10:39', 'Олег', 'Павленко', DATE '2000-05-10', '+3800684535746', 'Male', 'він/його', 'Україна, м. Житомир, вул. Лесі Українки, буд. 83, кв. 131'),
  (TIMESTAMP '2026-05-09 14:20:13', 'Маркіян', 'Сидоренко', DATE '1958-03-28', '+3800667002663', 'Male', 'він/його', 'Україна, м. Житомир, вул. Героїв України, буд. 39'),
  (TIMESTAMP '2023-05-08 19:00:15', 'Вікторія', 'Федоренко', DATE '1959-03-26', '+3800962303492', 'Female', 'вона/її', 'Україна, м. Кропивницький, вул. Михайла Грушевського, буд. 94'),
  (TIMESTAMP '2025-02-02 14:40:41', 'Соломія', 'Василенко', DATE '1990-05-21', '+3800924460305', 'Female', NULL, 'Україна, м. Кропивницький, вул. Князя Романа, буд. 37, кв. 62'),
  (TIMESTAMP '2024-06-04 09:35:05', 'Оксана', 'Іващенко', DATE '2004-11-16', '+3800972339893', 'Female', 'вона/її', 'Україна, м. Дрогобич, вул. Михайла Грушевського, буд. 80, кв. 129'),
  (TIMESTAMP '2026-06-13 19:00:47', 'Валерія', 'Мельничук', DATE '1984-02-25', '+3800738505584', 'Female', 'вона/її', 'Україна, м. Луцьк, вул. Спортивна, буд. 56, кв. 239'),
  (TIMESTAMP '2024-12-20 15:15:23', 'Валя', 'Петренко', DATE '1956-07-21', '+3800919455227', 'Other', NULL, 'Україна, м. Дрогобич, вул. Польова, буд. 117, кв. 55'),
  (TIMESTAMP '2026-06-01 12:30:11', 'Соломія', 'Шевченко', DATE '1985-01-18', '+3800734865358', 'Female', 'вона/її', 'Україна, м. Кременчук, вул. Лесі Українки, буд. 53'),
  (TIMESTAMP '2024-08-27 13:05:30', 'Микола', 'Шевченко', DATE '2002-12-07', '+3800391394962', 'Male', 'він/його', 'Україна, м. Львів, вул. Володимира Великого, буд. 109, кв. 99'),
  (TIMESTAMP '2025-04-17 17:05:23', 'Яна', 'Федоренко', DATE '1964-10-21', '+3800987030762', 'Female', 'вона/її', 'Україна, м. Ужгород, просп. Перемоги, буд. 66, кв. 220'),
  (TIMESTAMP '2024-08-21 11:45:26', 'Дмитро', 'Бондар', DATE '1976-04-30', '+3800963880119', 'Male', 'він/його', 'Україна, м. Чернівці, вул. Лісова, буд. 56, кв. 81'),
  (TIMESTAMP '2024-08-24 08:35:27', 'Андрій', 'Романенко', DATE '1991-12-05', '+3800946946708', 'Male', 'він/його', 'Україна, м. Біла Церква, просп. Свободи, буд. 76, кв. 120'),
  (TIMESTAMP '2025-10-21 09:15:15', 'Міка', 'Даниленко', DATE '1998-02-09', '+3800943270992', 'Other', 'вони/їх', 'Україна, м. Кременчук, вул. Соборна, буд. 122, кв. 121'),
  (TIMESTAMP '2023-02-07 13:00:38', 'Ярослав', 'Костенко', DATE '1972-02-16', '+3800689084168', 'Male', 'він/його', 'Україна, м. Хмельницький, вул. Василя Стуса, буд. 18, кв. 14'),
  (TIMESTAMP '2023-01-07 18:25:18', 'Михайло', 'Савченко', DATE '1959-09-21', '+3800509446104', 'Male', 'він/його', 'Україна, м. Полтава, вул. Михайла Грушевського, буд. 135, кв. 177'),
  (TIMESTAMP '2024-12-28 10:30:06', 'Наталія', 'Мороз', DATE '1969-09-04', '+3800932540809', 'Female', 'вона/її', 'Україна, м. Чернігів, вул. Соборна, буд. 88'),
  (TIMESTAMP '2023-07-06 17:35:58', 'Богдан', 'Мельник', DATE '2000-11-07', '+3800506935274', 'Male', 'він/його', 'Україна, м. Київ, просп. Свободи, буд. 29, кв. 141'),
  (TIMESTAMP '2024-01-27 14:35:00', 'Сергій', 'Данилюк', DATE '1981-10-06', '+3800972630169', 'Male', 'він/його', 'Україна, м. Чернігів, просп. Свободи, буд. 112'),
  (TIMESTAMP '2026-06-06 13:35:30', 'Надія', 'Олійник', DATE '1999-07-28', '+3800947669434', 'Female', 'вона/її', 'Україна, м. Дніпро, вул. Князя Романа, буд. 119, кв. 46'),
  (TIMESTAMP '2024-05-24 10:30:16', 'Олег', 'Козак', DATE '2004-09-20', '+3800506214062', 'Male', NULL, 'Україна, м. Рівне, вул. Паркова, буд. 72, кв. 11'),
  (TIMESTAMP '2024-02-07 17:20:18', 'Василь', 'Бондаренко', DATE '1991-06-01', '+3800992858596', 'Male', 'він/його', 'Україна, м. Одеса, вул. Івана Франка, буд. 100, кв. 201'),
  (TIMESTAMP '2024-04-27 13:40:00', 'Яна', 'Мельничук', DATE '1993-10-16', '+3800997095973', 'Female', 'вона/її', 'Україна, м. Київ, вул. Польова, буд. 141, кв. 209'),
  (TIMESTAMP '2023-04-07 13:50:16', 'Степан', 'Павленко', DATE '1989-04-26', '+3800977067304', 'Male', 'він/його', 'Україна, м. Кременчук, вул. Василя Стуса, буд. 71, кв. 105'),
  (TIMESTAMP '2026-01-20 08:20:15', 'Інна', 'Мороз', DATE '1967-01-20', '+3800965695449', 'Female', 'вона/її', 'Україна, м. Суми, вул. Спортивна, буд. 116, кв. 77'),
  (TIMESTAMP '2024-05-25 10:10:58', 'Інна', 'Шевченко', DATE '1992-04-08', '+3800914889787', 'Female', 'вона/її', 'Україна, м. Луцьк, вул. Володимира Великого, буд. 76'),
  (TIMESTAMP '2023-02-27 13:50:18', 'Максим', 'Савченко', DATE '1964-07-27', '+3800945170132', 'Male', NULL, 'Україна, м. Київ, вул. Польова, буд. 19'),
  (TIMESTAMP '2026-01-29 17:40:32', 'Ірина', 'Литвин', DATE '2008-06-15', '+3800999884118', 'Female', 'вона/її', 'Україна, м. Стрий, вул. Молодіжна, буд. 77, кв. 41'),
  (TIMESTAMP '2024-04-02 10:55:39', 'Оксана', 'Руденко', DATE '1995-06-23', '+3800683414080', 'Female', 'вона/її', 'Україна, м. Стрий, вул. Володимира Великого, буд. 67'),
  (TIMESTAMP '2026-07-22 09:15:21', 'Владислав', 'Савченко', DATE '2006-07-05', '+3800931902625', 'Male', 'він/його', 'Україна, м. Хмельницький, вул. Лесі Українки, буд. 63'),
  (TIMESTAMP '2023-03-27 08:00:41', 'Остап', 'Сидоренко', DATE '2001-08-18', '+3800932053950', 'Male', 'він/його', 'Україна, м. Харків, просп. Перемоги, буд. 109, кв. 42'),
  (TIMESTAMP '2026-05-05 10:50:48', 'Сергій', 'Паламарчук', DATE '1959-11-14', '+3800734998404', 'Male', 'він/його', 'Україна, м. Біла Церква, вул. Паркова, буд. 91, кв. 5'),
  (TIMESTAMP '2025-01-27 11:30:23', 'Анастасія', 'Мельничук', DATE '1969-07-31', '+3800931878695', 'Female', 'вона/її', 'Україна, м. Суми, вул. Молодіжна, буд. 105, кв. 94'),
  (TIMESTAMP '2024-10-15 12:10:47', 'Тетяна', 'Олійник', DATE '1992-01-16', '+3800944960252', 'Female', NULL, 'Україна, м. Харків, вул. Набережна, буд. 58, кв. 34'),
  (TIMESTAMP '2026-06-24 14:10:39', 'Лілія', 'Данилюк', DATE '1974-05-14', '+3800997422015', 'Female', 'вона/її', 'Україна, м. Стрий, вул. Олександра Довженка, буд. 36, кв. 189'),
  (TIMESTAMP '2024-09-18 10:45:03', 'Михайло', 'Даниленко', DATE '1988-06-15', '+3800737647360', 'Male', 'він/його', 'Україна, м. Одеса, вул. Спортивна, буд. 58'),
  (TIMESTAMP '2023-08-26 17:05:35', 'Аліна', 'Ковальчук', DATE '1955-03-25', '+3800738851112', 'Female', 'вона/її', 'Україна, м. Рівне, вул. Садова, буд. 122, кв. 176'),
  (TIMESTAMP '2026-03-21 09:25:21', 'Вікторія', 'Гриценко', DATE '1971-05-18', '+3800736066436', 'Female', 'вона/її', 'Україна, м. Луцьк, вул. Лісова, буд. 20, кв. 107'),
  (TIMESTAMP '2024-12-29 10:45:19', 'Женя', 'Бойко', DATE '1997-12-19', '+3800925283767', 'Other', NULL, 'Україна, м. Біла Церква, вул. Паркова, буд. 18, кв. 253'),
  (TIMESTAMP '2025-11-06 11:15:50', 'Олександр', 'Кулик', DATE '1979-09-16', '+3800682987283', 'Male', 'він/його', 'Україна, м. Львів, вул. Молодіжна, буд. 10, кв. 42'),
  (TIMESTAMP '2024-06-28 20:00:58', 'Софія', 'Мельник', DATE '1974-11-05', '+3800941635188', 'Female', NULL, 'Україна, м. Тернопіль, вул. Шевченка, буд. 28'),
  (TIMESTAMP '2025-06-13 18:10:19', 'Яна', 'Василенко', DATE '1957-02-28', '+3800995311970', 'Female', NULL, 'Україна, м. Кропивницький, вул. Лесі Українки, буд. 30, кв. 247'),
  (TIMESTAMP '2025-12-02 15:25:43', 'Оксана', 'Ковальчук', DATE '1970-02-10', '+3800959796493', 'Female', 'вона/її', 'Україна, м. Чернігів, вул. Івана Франка, буд. 91, кв. 13'),
  (TIMESTAMP '2023-07-31 20:25:38', 'Маркіян', 'Ткаченко', DATE '1981-07-02', '+3800631370416', 'Male', 'він/його', 'Україна, м. Харків, вул. Князя Романа, буд. 120, кв. 21'),
  (TIMESTAMP '2024-07-13 17:10:01', 'Дарина', 'Бондаренко', DATE '1976-09-25', '+3800921524074', 'Female', 'вона/її', 'Україна, м. Львів, вул. Садова, буд. 66, кв. 65'),
  (TIMESTAMP '2023-01-11 14:05:05', 'Владислав', 'Мороз', DATE '1980-08-10', '+3800998544909', 'Male', 'він/його', 'Україна, м. Дніпро, вул. Центральна, буд. 79, кв. 185'),
  (TIMESTAMP '2024-12-17 18:35:46', 'Надія', 'Василенко', DATE '1970-12-20', '+3800674963963', 'Female', 'вона/її', 'Україна, м. Мукачево, вул. Наукова, буд. 140, кв. 259'),
  (TIMESTAMP '2023-11-27 16:40:43', 'Михайло', 'Литвин', DATE '1997-12-12', '+3800638541120', 'Male', NULL, 'Україна, м. Одеса, вул. Набережна, буд. 68'),
  (TIMESTAMP '2026-04-26 15:05:40', 'Любов', 'Коваль', DATE '1959-05-07', '+3800391771135', 'Female', NULL, 'Україна, м. Рівне, вул. Незалежності, буд. 92, кв. 211'),
  (TIMESTAMP '2025-09-01 09:50:25', 'Андрій', 'Коваленко', DATE '2005-06-29', '+3800938815146', 'Male', 'він/його', 'Україна, м. Луцьк, просп. Свободи, буд. 36, кв. 149'),
  (TIMESTAMP '2025-11-21 12:50:54', 'Євген', 'Марчук', DATE '1956-05-03', '+3800939345669', 'Male', 'він/його', 'Україна, м. Івано-Франківськ, вул. Садова, буд. 53, кв. 233'),
  (TIMESTAMP '2025-12-22 16:45:42', 'Інна', 'Марчук', DATE '1966-01-13', '+3800636124301', 'Female', NULL, 'Україна, м. Хмельницький, вул. Князя Романа, буд. 74'),
  (TIMESTAMP '2024-08-23 08:15:13', 'Тарас', 'Олійник', DATE '2001-03-12', '+3800939921889', 'Male', 'він/його', 'Україна, м. Біла Церква, вул. Соборна, буд. 143, кв. 12'),
  (TIMESTAMP '2024-03-26 19:50:54', 'Олег', 'Сидоренко', DATE '1979-02-03', '+3800994185990', 'Male', 'він/його', 'Україна, м. Івано-Франківськ, вул. Сонячна, буд. 145, кв. 247'),
  (TIMESTAMP '2024-06-12 17:20:44', 'Зоряна', 'Савчук', DATE '1987-04-16', '+3800987702079', 'Female', 'вона/її', 'Україна, м. Суми, вул. Зелена, буд. 138, кв. 23'),
  (TIMESTAMP '2026-03-07 19:05:26', 'Наталія', 'Сидоренко', DATE '1987-07-23', '+3800931344012', 'Female', 'вона/її', 'Україна, м. Кременчук, вул. Михайла Грушевського, буд. 107'),
  (TIMESTAMP '2023-08-20 14:35:12', 'Катерина', 'Коваль', DATE '1986-04-28', '+3800956629524', 'Female', 'вона/її', 'Україна, м. Кропивницький, просп. Свободи, буд. 67, кв. 58'),
  (TIMESTAMP '2025-05-29 09:25:49', 'Василь', 'Бондар', DATE '2009-08-01', '+3800677299683', 'Male', 'він/його', 'Україна, м. Вінниця, вул. Садова, буд. 91, кв. 120'),
  (TIMESTAMP '2025-08-09 10:35:34', 'Максим', 'Павленко', DATE '1981-03-15', '+3800993392067', 'Male', NULL, 'Україна, м. Чернігів, вул. Спортивна, буд. 77, кв. 191'),
  (TIMESTAMP '2024-07-10 11:10:01', 'Ірина', 'Костенко', DATE '1979-07-18', '+3800995913904', 'Female', 'вона/її', 'Україна, м. Житомир, вул. Центральна, буд. 27'),
  (TIMESTAMP '2023-09-03 10:40:21', 'Аліна', 'Кравченко', DATE '1989-07-04', '+3800928257946', 'Female', 'вона/її', 'Україна, м. Біла Церква, просп. Свободи, буд. 101, кв. 207'),
  (TIMESTAMP '2025-06-08 13:40:00', 'Артем', 'Шевченко', DATE '1980-05-08', '+3800987318617', 'Male', 'він/його', 'Україна, м. Дрогобич, вул. Шевченка, буд. 8'),
  (TIMESTAMP '2024-08-27 08:30:39', 'Дарина', 'Гнатюк', DATE '1999-04-22', '+3800734469904', 'Female', NULL, 'Україна, м. Одеса, вул. Соборна, буд. 17, кв. 162'),
  (TIMESTAMP '2023-01-17 19:00:53', 'Тетяна', 'Савченко', DATE '2005-10-12', '+3800923340061', 'Female', NULL, 'Україна, м. Мукачево, вул. Незалежності, буд. 89, кв. 15'),
  (TIMESTAMP '2023-03-12 16:00:50', 'Тетяна', 'Федоренко', DATE '1957-09-13', '+3800972343314', 'Female', NULL, 'Україна, м. Івано-Франківськ, вул. Миру, буд. 18, кв. 205'),
  (TIMESTAMP '2025-09-03 16:55:37', 'Владислав', 'Романюк', DATE '1983-02-06', '+3800667393025', 'Male', 'він/його', 'Україна, м. Дніпро, вул. Спортивна, буд. 45, кв. 48'),
  (TIMESTAMP '2026-03-02 09:10:11', 'Анастасія', 'Сидоренко', DATE '1997-06-15', '+3800972384909', 'Female', 'вона/її', 'Україна, м. Івано-Франківськ, вул. Шевченка, буд. 52'),
  (TIMESTAMP '2024-04-25 13:05:15', 'Богдан', 'Руденко', DATE '1977-09-18', '+3800993790347', 'Male', 'він/його', 'Україна, м. Дрогобич, вул. Зелена, буд. 25'),
  (TIMESTAMP '2026-05-10 08:15:20', 'Роман', 'Козак', DATE '1988-08-25', '+3800685988868', 'Male', 'він/його', 'Україна, м. Кременчук, вул. Лесі Українки, буд. 39'),
  (TIMESTAMP '2024-01-07 13:05:42', 'Сергій', 'Поліщук', DATE '2003-07-11', '+3800926572295', 'Male', 'він/його', 'Україна, м. Київ, вул. Садова, буд. 105, кв. 26'),
  (TIMESTAMP '2025-08-03 11:10:18', 'Тарас', 'Гнатюк', DATE '1956-08-07', '+3800927803054', 'Male', 'він/його', 'Україна, м. Луцьк, вул. Незалежності, буд. 31'),
  (TIMESTAMP '2025-01-25 20:55:34', 'Любов', 'Гнатюк', DATE '1990-06-01', '+3800985598651', 'Female', NULL, 'Україна, м. Львів, вул. Володимира Великого, буд. 53, кв. 98'),
  (TIMESTAMP '2023-11-07 08:20:30', 'Дмитро', 'Ткачук', DATE '1970-10-27', '+3800666226540', 'Male', NULL, 'Україна, м. Львів, вул. Миру, буд. 102, кв. 15'),
  (TIMESTAMP '2024-05-01 12:15:47', 'Нікі', 'Мельник', DATE '1976-09-20', '+3800929072944', 'Other', 'вони/їх', 'Україна, м. Полтава, вул. Центральна, буд. 76, кв. 6'),
  (TIMESTAMP '2024-07-10 09:55:40', 'Юлія', 'Дорошенко', DATE '2005-08-08', '+3800669325814', 'Female', NULL, 'Україна, м. Київ, вул. Олександра Довженка, буд. 85'),
  (TIMESTAMP '2023-11-01 13:25:29', 'Назар', 'Данилюк', DATE '2007-07-28', '+3800504979696', 'Male', 'він/його', 'Україна, м. Біла Церква, вул. Шевченка, буд. 44'),
  (TIMESTAMP '2024-08-20 19:00:04', 'Діана', 'Кравчук', DATE '2004-11-02', '+3800922393373', 'Female', NULL, 'Україна, м. Полтава, вул. Зелена, буд. 28, кв. 162'),
  (TIMESTAMP '2023-02-05 20:20:39', 'Вероніка', 'Козак', DATE '1976-09-23', '+3800677114204', 'Female', NULL, 'Україна, м. Чернівці, просп. Перемоги, буд. 80, кв. 178'),
  (TIMESTAMP '2023-08-25 17:50:32', 'Арсен', 'Ткачук', DATE '1995-08-19', '+3800911990459', 'Male', NULL, 'Україна, м. Полтава, вул. Сонячна, буд. 13'),
  (TIMESTAMP '2024-12-03 09:00:05', 'Назар', 'Дорошенко', DATE '1997-04-21', '+3800966680805', 'Male', 'він/його', 'Україна, м. Луцьк, вул. Спортивна, буд. 139'),
  (TIMESTAMP '2025-09-07 13:45:26', 'Інна', 'Левченко', DATE '1966-12-23', '+3800391440303', 'Female', 'вона/її', 'Україна, м. Хмельницький, вул. Князя Романа, буд. 23, кв. 136'),
  (TIMESTAMP '2024-09-07 10:30:24', 'Андрій', 'Марченко', DATE '1986-12-09', '+3800664549684', 'Male', NULL, 'Україна, м. Мукачево, вул. Польова, буд. 14, кв. 102'),
  (TIMESTAMP '2025-02-08 14:40:16', 'Любов', 'Федоренко', DATE '2000-01-19', '+3800996202632', 'Female', 'вона/її', 'Україна, м. Ужгород, вул. Лісова, буд. 80, кв. 92'),
  (TIMESTAMP '2024-09-28 09:30:41', 'Роман', 'Романенко', DATE '1996-09-05', '+3800993439748', 'Male', 'він/його', 'Україна, м. Київ, вул. Олександра Довженка, буд. 102'),
  (TIMESTAMP '2023-01-01 20:25:07', 'Артем', 'Захарченко', DATE '1998-07-26', '+3800687889372', 'Male', 'він/його', 'Україна, м. Харків, вул. Володимира Великого, буд. 98'),
  (TIMESTAMP '2026-06-15 18:55:30', 'Сергій', 'Павленко', DATE '1995-05-21', '+3800931569317', 'Male', 'він/його', 'Україна, м. Вінниця, вул. Набережна, буд. 49, кв. 2'),
  (TIMESTAMP '2025-08-23 18:10:54', 'Леслі', 'Ковальчук', DATE '2009-08-27', '+3800951288616', 'Other', 'вони/їх', 'Україна, м. Харків, просп. Перемоги, буд. 8, кв. 104'),
  (TIMESTAMP '2025-12-14 20:20:51', 'Роман', 'Ткаченко', DATE '1961-07-29', '+3800958325879', 'Male', 'він/його', 'Україна, м. Кременчук, вул. Київська, буд. 89, кв. 108'),
  (TIMESTAMP '2024-08-14 12:40:29', 'Сергій', 'Руденко', DATE '1977-10-06', '+3800391584934', 'Male', 'він/його', 'Україна, м. Полтава, вул. Василя Стуса, буд. 83'),
  (TIMESTAMP '2025-05-21 12:35:00', 'Міка', 'Ткачук', DATE '1979-06-28', '+3800981104363', 'Other', 'вони/їх', 'Україна, м. Вінниця, вул. Володимира Великого, буд. 76'),
  (TIMESTAMP '2024-07-24 09:40:43', 'Дарина', 'Кулик', DATE '1975-10-30', '+3800674518315', 'Female', NULL, 'Україна, м. Вінниця, вул. Героїв України, буд. 42, кв. 200'),
  (TIMESTAMP '2023-08-21 17:30:13', 'Іван', 'Литвин', DATE '1973-07-02', '+3800731058480', 'Male', NULL, 'Україна, м. Чернівці, вул. Івана Франка, буд. 139, кв. 77'),
  (TIMESTAMP '2025-11-18 13:10:55', 'Вікторія', 'Захарченко', DATE '1981-07-01', '+3800953808486', 'Female', NULL, 'Україна, м. Ужгород, просп. Свободи, буд. 42, кв. 206'),
  (TIMESTAMP '2026-03-28 10:30:05', 'Вероніка', 'Паламарчук', DATE '1963-10-12', '+3800664814317', 'Female', 'вона/її', 'Україна, м. Мукачево, вул. Набережна, буд. 26'),
  (TIMESTAMP '2026-01-10 10:30:14', 'Ольга', 'Литвин', DATE '1971-08-18', '+3800685345111', 'Female', 'вона/її', 'Україна, м. Полтава, вул. Лісова, буд. 90, кв. 105');


-- 1. Athlete accounts: 80 records linked to user_info_id 1–80
INSERT INTO FitServe.users (
  user_id,
  role,
  login,
  password_hash,
  user_info_id
)
VALUES
  (1, 'Athlete', 'artem.mel.nik001', '$argon2id$v=19$m=19456,t=2,p=1$FBuibyAAM/z82IJxEg2jeg$dU+MTVg1RNxVyIt/Ox2gU2nuYxXdCSaLJ2vlO5jOFHI', 1),
  (2, 'Athlete', 'ivanna.lisenko002', '$argon2id$v=19$m=19456,t=2,p=1$W5kXjoknVeBJZ4eYOZKvqA$eG8xyPQh2qaShPZ2jb0vnqao4eeNWAOC98C16e4brR8', 2),
  (3, 'Athlete', 'liubov.timoshenko003', '$argon2id$v=19$m=19456,t=2,p=1$o5KUivE5KaEIKyXcyNSX7A$Ci8EtcUPlUPwF1kBC9Ro9ir5Piaxs9xIF0d4Wjjg1vA', 3),
  (4, 'Athlete', 'darina.moroz004', '$argon2id$v=19$m=19456,t=2,p=1$q20/K/3tb4joa1dqrUMg5w$u0oppLRmmEoPgjMS7/nBsq2EgF6OL0i+4vnD7QpQynQ', 4),
  (5, 'Athlete', 'viktor.romanenko005', '$argon2id$v=19$m=19456,t=2,p=1$LEtoifVSQSUv2qYfoIemeQ$Y7oS4vrli0+Tw67fDzIhU+0uYImITVm+lPwJUJzIoDI', 5),
  (6, 'Athlete', 'mikola.savchenko006', '$argon2id$v=19$m=19456,t=2,p=1$JcdXGVIXs2sS78mrY2j3DA$G4/ceQKDfOw8i4m6YEoDkWq/KWzijVm3abf/dMaIovk', 6),
  (7, 'Athlete', 'oleg.pavlenko007', '$argon2id$v=19$m=19456,t=2,p=1$Aj5ZZhEAUPFVMrosMN4rJQ$tulzoVGUZMw6TZ5Nw2jq/JzBqVV7/bRbjApHJQnrAyc', 7),
  (8, 'Athlete', 'markiian.sidorenko008', '$argon2id$v=19$m=19456,t=2,p=1$3JBldtWocemGYya0gfVYOQ$FTSWJfHxG3V6HWnJiSdxouHW1keWDu7HXSmo+9TNvWY', 8),
  (9, 'Athlete', 'viktoriia.fedorenko009', '$argon2id$v=19$m=19456,t=2,p=1$7Hi5as5ObGxznzzgriRYaw$QuS4IJDuTD4r2q3yV3EmfklEpEByWEPf6Tj6EJxGOVI', 9),
  (10, 'Athlete', 'solomiia.vasilenko010', '$argon2id$v=19$m=19456,t=2,p=1$h2TRSkDukaQZi7wKaPF3mg$2cl1uLXbtmSBNfGxoDAjkhkBrkHN//1loU46jr7EMfU', 10),
  (11, 'Athlete', 'oksana.ivashchenko011', '$argon2id$v=19$m=19456,t=2,p=1$C2pAy7LESwe6synf54MDLA$JxQBF58zZlyu/q+pXaBK+BYL4iSICo62FVqLzXs5vMc', 11),
  (12, 'Athlete', 'valeriia.mel.nichuk012', '$argon2id$v=19$m=19456,t=2,p=1$5crLxyda7Yd90EbVYvfYIA$WWAGnJi7AY0XG9x43dA+CAXTkjVb+yBPBMeyRvWR8Yo', 12),
  (13, 'Athlete', 'valia.petrenko013', '$argon2id$v=19$m=19456,t=2,p=1$+W7s40t06kzkECt2B1O3vg$R8OqnG1YK4r7OMuOJUPeiM6M+3xu1qEUmvg7fAkuEas', 13),
  (14, 'Athlete', 'solomiia.shevchenko014', '$argon2id$v=19$m=19456,t=2,p=1$ZZEaMIHTPALOboBbzs4oEA$BAZbYn/cs7OuhwOEsU11z9o1Re3swqRDnZZoUrKA2bQ', 14),
  (15, 'Athlete', 'mikola.shevchenko015', '$argon2id$v=19$m=19456,t=2,p=1$ReZ/Vil887xrq4S2LjMkHw$eSQvlwTBsa6QiW7uoG2M6dO8BbF3/dbJtA82KLj6XIw', 15),
  (16, 'Athlete', 'iana.fedorenko016', '$argon2id$v=19$m=19456,t=2,p=1$SJ3WICyHiE8bOGLV3AYV2w$l8KTg852zWOBoxZpT2RvqVggAUXZ6YIBSWqxG+m/LXY', 16),
  (17, 'Athlete', 'dmitro.bondar017', '$argon2id$v=19$m=19456,t=2,p=1$TCFPpxdlRC6rgbozarlGng$GRnxhKwOtTkh7m4ClXzfuETSrPmt6p9oJ4pZpAaH/pg', 17),
  (18, 'Athlete', 'andrii.romanenko018', '$argon2id$v=19$m=19456,t=2,p=1$cIjMORXmYkJbteSWLcnh1Q$04Mt+OA5QTnQPvErGGMyghV8FSP13SU4fZFssZkUZzc', 18),
  (19, 'Athlete', 'mika.danilenko019', '$argon2id$v=19$m=19456,t=2,p=1$+ZxdJHqo2PKwIi63167N/g$3RIDT13MIqozhh4WCMV7CWhiTf1AwKkpxkCMdl/ISkA', 19),
  (20, 'Athlete', 'iaroslav.kostenko020', '$argon2id$v=19$m=19456,t=2,p=1$NBDM6q2OrF+lY7qGvxandQ$jBN8gySgMI4XEHDori9bsOTUd68eTQm+oj7LAYdvcd4', 20),
  (21, 'Athlete', 'mikhailo.savchenko021', '$argon2id$v=19$m=19456,t=2,p=1$UrjadQfpF4jfoG6e7jmLdw$B5sGL+Og9knnPXHqtEx/sv1I62ByX6btmcRhW3y57P4', 21),
  (22, 'Athlete', 'nataliia.moroz022', '$argon2id$v=19$m=19456,t=2,p=1$mCNEj4fSkBNEJZT0W84WKA$sQYLbvGjkRno1EKJ+rxYXeFy9YFCQParW20LufARQrc', 22),
  (23, 'Athlete', 'bogdan.mel.nik023', '$argon2id$v=19$m=19456,t=2,p=1$KjbshaO6b8GSlfUhiK8IUw$hnI09XuO2VBcrCxWR2rEEACI4Afp5bkw54gobESKNdQ', 23),
  (24, 'Athlete', 'sergii.daniliuk024', '$argon2id$v=19$m=19456,t=2,p=1$cA8nQraWYus0Ss9ZReDgNg$2kjI7P4uCJ9MVdK+G65d7B2cQ4vnT9B96G6kilT0W+k', 24),
  (25, 'Athlete', 'nadiia.oliinik025', '$argon2id$v=19$m=19456,t=2,p=1$y+LRcnx4qofr79M4Pj8xdQ$GBepaXa7A0AueaNZxdJWfS5wy9Pj/L+9moIiNd75OQg', 25),
  (26, 'Athlete', 'oleg.kozak026', '$argon2id$v=19$m=19456,t=2,p=1$f7RBni0My3yFi8GJmRaA4g$9QKppHljUdISdE1BO1Z4yTOQy8V+fAGsjOMsnIElk5w', 26),
  (27, 'Athlete', 'vasil.bondarenko027', '$argon2id$v=19$m=19456,t=2,p=1$vH4outI8OLdejE7Gm5M8Tw$PkIJK1bSmlMjuMjeuyV/l1OUOXDviIilk5SpABruzs8', 27),
  (28, 'Athlete', 'iana.mel.nichuk028', '$argon2id$v=19$m=19456,t=2,p=1$fJm1Z+wDMGeFox4ScOkynw$AOzDiDndbtpL2MYgx7VbCoqZLLZ1z1OW2B2XPzWuNnY', 28),
  (29, 'Athlete', 'stepan.pavlenko029', '$argon2id$v=19$m=19456,t=2,p=1$6nXQorvdZuV1kXC6HxWBeg$ixJG0qS04ODcNUUEW8etAnAmZMnspVS2AJxKwitehKA', 29),
  (30, 'Athlete', 'inna.moroz030', '$argon2id$v=19$m=19456,t=2,p=1$WcI5Y8acFhFBK86hFjEd3w$Dfbn2/zujPfwAcXTgiTQNpJbmqUpkEmWsgU3XDb+384', 30),
  (31, 'Athlete', 'inna.shevchenko031', '$argon2id$v=19$m=19456,t=2,p=1$i21U/pfnaeveDgyCnqSNCw$HA0G7fNmw5NxSglrtCI06gZgmUPwqVOQz4gPnJLKWzs', 31),
  (32, 'Athlete', 'maksim.savchenko032', '$argon2id$v=19$m=19456,t=2,p=1$v568VxlIz6zVgjylL8v8rw$qRctP9v9hZ9YkEGtlb7doD/TfbMC8FvGnlM9a83F+fo', 32),
  (33, 'Athlete', 'irina.litvin033', '$argon2id$v=19$m=19456,t=2,p=1$JDIPvhYEpGnDushXch3JkQ$c5SI8gF3DejcpEEYXo49UM2fSfLC+8mjrg5BXOVdiis', 33),
  (34, 'Athlete', 'oksana.rudenko034', '$argon2id$v=19$m=19456,t=2,p=1$6WVKN5qVPTuD+8DgkZXvKw$qqgBZSZLQ7w0HPLExC2DF72jAX42Vs92mi6K3le+QnM', 34),
  (35, 'Athlete', 'vladislav.savchenko035', '$argon2id$v=19$m=19456,t=2,p=1$+IB4CVLA/hPY4SFQXqoVYg$55IMOjEGqv6QV6yCtwxYIQEcdMOVaNkJJHoxtMD3b1Y', 35),
  (36, 'Athlete', 'ostap.sidorenko036', '$argon2id$v=19$m=19456,t=2,p=1$NPHUxmgsBZMqgQbKNTLbXA$5Ywzx5dkYvKRVUihUGJmijt2xA9A+TiKMZxNw7/BgiQ', 36),
  (37, 'Athlete', 'sergii.palamarchuk037', '$argon2id$v=19$m=19456,t=2,p=1$mJJ6ZDas0hZ6E+oU2Y9kyg$pk0KChGF8ZouG80g/TgO0YgIF8ERoBi67d9W0Qn8bwQ', 37),
  (38, 'Athlete', 'anastasiia.mel.nichuk038', '$argon2id$v=19$m=19456,t=2,p=1$zv9g/jdLT0G5BEhDDJ7K8g$8uf13q1KjGM25tpfaD3yJ440D7txlJ4oXwHcdBsguek', 38),
  (39, 'Athlete', 'tetiana.oliinik039', '$argon2id$v=19$m=19456,t=2,p=1$xQaXZO1Mq+WkUezPh9B2WA$YDSgDQ+M/8aRtLyxQJ71VZT0uti1siknQe1QweCmVHw', 39),
  (40, 'Athlete', 'liliia.daniliuk040', '$argon2id$v=19$m=19456,t=2,p=1$4afOxwM0B7kOokYvhTy7Vg$nWFqJKblbyqMJYIHF0uejS/jw86dHc0cZc0OHv6YXBY', 40),
  (41, 'Athlete', 'mikhailo.danilenko041', '$argon2id$v=19$m=19456,t=2,p=1$sTGJT6qYrOioPBPEFwv2PQ$ljmZwY/YiK5V/YvrJiQ8Tgbb+bi6BZHl7qwPao4mXEY', 41),
  (42, 'Athlete', 'alina.koval.chuk042', '$argon2id$v=19$m=19456,t=2,p=1$Kfl8QwhME1yx9pcVWRAhOQ$ckBlCCXE+A8z779moG22ZX2PsoQGwJKXg5jQNqkKqhs', 42),
  (43, 'Athlete', 'viktoriia.gritsenko043', '$argon2id$v=19$m=19456,t=2,p=1$qIx4fLRXSPDo0wDow/pRug$OeXg7bi5V1NE3HV+iWwrK7IbLVgnASjy1sm8yltngBE', 43),
  (44, 'Athlete', 'zhenia.boiko044', '$argon2id$v=19$m=19456,t=2,p=1$ajuMqxMLZe5HKR0dYeshlA$Nk/iKADdFURBh/WreU0+6STayfWPyNsGDaFL5Oz4hBs', 44),
  (45, 'Athlete', 'oleksandr.kulik045', '$argon2id$v=19$m=19456,t=2,p=1$fWReuMzrIIDPKB3b7Ptf1A$I9/GEbI9APyEtB3Rf8YBr/GmT3Ror7J8liJgABH3R1o', 45),
  (46, 'Athlete', 'sofiia.mel.nik046', '$argon2id$v=19$m=19456,t=2,p=1$CLrOSS3nF/yt5FwiP3ppvA$Nk1JWlGfZvJ9PlhvUFqIjgksf48FtZcIDA8D6mDotVE', 46),
  (47, 'Athlete', 'iana.vasilenko047', '$argon2id$v=19$m=19456,t=2,p=1$U/QzjtpNOCJxN+Ny9r1MEg$hHSjDBV7C1e2n8n2povxcls6U7bI8a4GXH4IzY9Zbfc', 47),
  (48, 'Athlete', 'oksana.koval.chuk048', '$argon2id$v=19$m=19456,t=2,p=1$OmZpmdU8cGMwfJO1qwjWbA$srMABRM+JOv140oPmJSkN8HpePcoJw5EOw6uxBz6OT4', 48),
  (49, 'Athlete', 'markiian.tkachenko049', '$argon2id$v=19$m=19456,t=2,p=1$dmi5q4iwDW5Qy1GRXacQWA$A44b+4XverdCUM9OaIeS2U3jNKpxVvRbzOyrSEq5TVk', 49),
  (50, 'Athlete', 'darina.bondarenko050', '$argon2id$v=19$m=19456,t=2,p=1$jnrdtg6vpWsw0957qi/p+Q$EjiP81DTJGW6HC9qQJT6SuOjziLWANjinulunn2kMbY', 50),
  (51, 'Athlete', 'vladislav.moroz051', '$argon2id$v=19$m=19456,t=2,p=1$AtBMVVFOrP53FD65pG9IYw$aClOl6B3+Ob4mu81/H0v9kJmWQNNe52Bj/H1APguerg', 51),
  (52, 'Athlete', 'nadiia.vasilenko052', '$argon2id$v=19$m=19456,t=2,p=1$gMfeETWVJnD9npC1f1Mcyg$RuBqLQZSAEFeWK44oo1BvZgAE+HGhazkLqulHvCO93U', 52),
  (53, 'Athlete', 'mikhailo.litvin053', '$argon2id$v=19$m=19456,t=2,p=1$dXjxpFRb8Q8/LG+iB3cugQ$bWHPeFfsZIt9hkmyphU/BLKJw1+ivF6+nFSFqUSXPdk', 53),
  (54, 'Athlete', 'liubov.koval054', '$argon2id$v=19$m=19456,t=2,p=1$K2Qzpc06yQXnbET2h2DClQ$G3+ymUph+PXIDI7+jlfD3N1padD4qSjFBLwpxFd0kfQ', 54),
  (55, 'Athlete', 'andrii.kovalenko055', '$argon2id$v=19$m=19456,t=2,p=1$JLc1JjejRykPeV+WP3JQvg$75sFOmtmh4Z5Drk7m40/FZMTRr9w3fvLh189+35cq3o', 55),
  (56, 'Athlete', 'ievgen.marchuk056', '$argon2id$v=19$m=19456,t=2,p=1$SbrfhnHrzBmy8ZwSnU1F2g$JtQ7Hbs9Juj3T0Oz1fqiO9UHK47c9mrwp9Sq2NAILKg', 56),
  (57, 'Athlete', 'inna.marchuk057', '$argon2id$v=19$m=19456,t=2,p=1$jAeECwNrENWYte8heE6FZg$tgNn5qSmRYrvkyHOMbFYRyWvrw0blp9+GSxI2+bEbug', 57),
  (58, 'Athlete', 'taras.oliinik058', '$argon2id$v=19$m=19456,t=2,p=1$zLW8opU1Xw4xFwtifumLDw$VfSeT5jr6tbGmZJIxtTYLa+GcWG6Pk5QN9tkOwsOam4', 58),
  (59, 'Athlete', 'oleg.sidorenko059', '$argon2id$v=19$m=19456,t=2,p=1$nJMEdicjYeStcslvyTjbwQ$tKHR7OYgKFXaHYDF4mcJywomATKPXZ8jd/Jg45y3l88', 59),
  (60, 'Athlete', 'zoriana.savchuk060', '$argon2id$v=19$m=19456,t=2,p=1$F5Gwtn8UO72/1spwJgM8xA$MdMipeMci9GmYWBeb6t+NZXJFOjeD0C09buC6KaLIpc', 60),
  (61, 'Athlete', 'nataliia.sidorenko061', '$argon2id$v=19$m=19456,t=2,p=1$/M2xDNv9S69FdMjLsolBjg$ZHzqNbujHiSnkJl5leYszDQfG8/i1g+g2tUCQYuAS9w', 61),
  (62, 'Athlete', 'katerina.koval062', '$argon2id$v=19$m=19456,t=2,p=1$8Ygq7B1FVu/PXBP+2g6WEA$baiyKb0rVHGhu7NLt7KT5hsgnHx4xsWue/tOZ9XKPI8', 62),
  (63, 'Athlete', 'vasil.bondar063', '$argon2id$v=19$m=19456,t=2,p=1$eKjgoBdEf7YTmLM60ML7ng$FfAJsVx8dGIDVnL7N5J44h/aYKlqrUvygZgf31AbqGM', 63),
  (64, 'Athlete', 'maksim.pavlenko064', '$argon2id$v=19$m=19456,t=2,p=1$EIvxvpyyz2eXcsk+XbEkHQ$24R2yznkNkMwdd06MGcd46IUb8zutaXmXOMzR2iQLcI', 64),
  (65, 'Athlete', 'irina.kostenko065', '$argon2id$v=19$m=19456,t=2,p=1$BsKyAVbCVtHaqVetJLDNLQ$luYF9MQjy8rlt7YG5LaixXfMfwF0aO7pVjhs6QMXPxw', 65),
  (66, 'Athlete', 'alina.kravchenko066', '$argon2id$v=19$m=19456,t=2,p=1$3v9APZRj7hYf1gfSPfFNFg$0PodA1AR8WpSTD4uLB146fiUxa1S7Dnqruv4OWQRc1o', 66),
  (67, 'Athlete', 'artem.shevchenko067', '$argon2id$v=19$m=19456,t=2,p=1$UDftX0E3TcLBUC3pnLKdZw$s6SSJlQslsaqknDr1ml3fdVOYHepwVKSUMJUW+mlQLo', 67),
  (68, 'Athlete', 'darina.gnatiuk068', '$argon2id$v=19$m=19456,t=2,p=1$9G3uaDUv1q7qCBvEZEJm5g$qpzHgioOxh+7xoczxJhbhJFzD7nfGhWYIcUnQc8hjSA', 68),
  (69, 'Athlete', 'tetiana.savchenko069', '$argon2id$v=19$m=19456,t=2,p=1$fmSEcd1Qca/pDNBjkT/hLw$PIOu1cuWYH2SK51+CkVg0x7xdsNTBjkPY0VQDH+43LU', 69),
  (70, 'Athlete', 'tetiana.fedorenko070', '$argon2id$v=19$m=19456,t=2,p=1$4NmVIumelNWnH+hp8ofzhA$HxTXCGLvrTtdiMsAzjkZ0vQzK5T7HI2Ce8HV7kDK3XU', 70),
  (71, 'Athlete', 'vladislav.romaniuk071', '$argon2id$v=19$m=19456,t=2,p=1$jxICT/SHWFhG+HNLP5K85g$fv04hDBjiVNwaW3cHc8E/kfVVIpUf1K0LvMTW5FhRP0', 71),
  (72, 'Athlete', 'anastasiia.sidorenko072', '$argon2id$v=19$m=19456,t=2,p=1$a1xFZEW3Awa9hrpW4oL0Ww$TGLOrqgSckrLYxypVqdkvc/cPcrw3EDvGrtlYXMZ5oc', 72),
  (73, 'Athlete', 'bogdan.rudenko073', '$argon2id$v=19$m=19456,t=2,p=1$D9fqlszlp1XT3oHSYci6YA$hvtzuwtwTV+FV4mx/9RWr1iT+yOgEXwsFyvstpACfyI', 73),
  (74, 'Athlete', 'roman.kozak074', '$argon2id$v=19$m=19456,t=2,p=1$IXWGpAP7epn9xGrr00mI9A$y81dsYGFXbH5el4j+3NCETDWnkq5j6n4KiLD/sYyAg8', 74),
  (75, 'Athlete', 'sergii.polishchuk075', '$argon2id$v=19$m=19456,t=2,p=1$XpEjJoGsFDW1Tp+lLNAR+w$jAH0gfV/YGKL9KAvlPOahG2oJkUjweJn3cwioqnHNm8', 75),
  (76, 'Athlete', 'taras.gnatiuk076', '$argon2id$v=19$m=19456,t=2,p=1$MdduhTwSGYPCtdv8HWimkQ$Qt1wAUhNEoQgoUFlie2rBXKVykuwWxCJJbmWXq929TQ', 76),
  (77, 'Athlete', 'liubov.gnatiuk077', '$argon2id$v=19$m=19456,t=2,p=1$bsVJVeYPRYCE9ItCjqV9uw$fSIH92s7xw9iEdvTcAAkUSuwtTSB/AKBgMHUByiY8iE', 77),
  (78, 'Athlete', 'dmitro.tkachuk078', '$argon2id$v=19$m=19456,t=2,p=1$NYMtNGOtIwdjOvCEJqAjhQ$kj3IOk8WxiCXpsD1YYoTCORTmbNnanCjkEko9rZYxNo', 78),
  (79, 'Athlete', 'niki.mel.nik079', '$argon2id$v=19$m=19456,t=2,p=1$r5Aqle/DmVTsIjBk+KuxeQ$4Wp0iJjKrsXqch5drh9DeNbLTswXi5XXtCQGOTY583U', 79),
  (80, 'Athlete', 'iuliia.doroshenko080', '$argon2id$v=19$m=19456,t=2,p=1$nAJ60j8HDr3bkFCWkXlVBw$r+FUvniL41dPUtB7V+6oX6DmkUGA+tzC2oIy46sr1/Q', 80);


-- 2. Trainer accounts: 20 records linked to user_info_id 81–100
INSERT INTO FitServe.users (
  user_id,
  role,
  login,
  password_hash,
  user_info_id
)
VALUES
  (81, 'Trainer', 'trainer.nazar.daniliuk081', '$argon2id$v=19$m=19456,t=2,p=1$EH1MthN0Wh9D+g/+wbnD/Q$rMHQVc0tXIHqaSwP3qik59JJZtQ+4N9QKPdNtd/V7/o', 81),
  (82, 'Trainer', 'trainer.diana.kravchuk082', '$argon2id$v=19$m=19456,t=2,p=1$/sXUScVWT6vfcHVYg7xRmw$T5fAJZM2ZBPcHg0aUTmCkX83XQJiH0CKBJa0jSqtXO4', 82),
  (83, 'Trainer', 'trainer.veronika.kozak083', '$argon2id$v=19$m=19456,t=2,p=1$j/Yi4PdERkfdR/M7AU/Kxg$Y9L18e86KdVxCV7nHHHirv6cMp6HAioToPkW5RIelYI', 83),
  (84, 'Trainer', 'trainer.arsen.tkachuk084', '$argon2id$v=19$m=19456,t=2,p=1$T5LrSPfzc9E3deSLqtDV1A$akgZG5yB9ZrTaN37vLLlA8MvT1PpElrD+isPCH4l7Pw', 84),
  (85, 'Trainer', 'trainer.nazar.doroshenko085', '$argon2id$v=19$m=19456,t=2,p=1$Y/2MV8NCK1jfY3hdgyL+0Q$eoIK9pioiYxdIP6OSwbVxFMqn5la+ZjXkEGp+G4H5kQ', 85),
  (86, 'Trainer', 'trainer.inna.levchenko086', '$argon2id$v=19$m=19456,t=2,p=1$11k1DJdv2eRTXYapcG3ogw$PSCUQZqFof77LD32nl5fgwtQuElxUx4rtFjTmB3O8xc', 86),
  (87, 'Trainer', 'trainer.andrii.marchenko087', '$argon2id$v=19$m=19456,t=2,p=1$k8mMnlEwIFc3S8aMqu1ZUA$lken2+EhvP52yeTsakjv0/BXaY/Dni3HvviBJOo3xFs', 87),
  (88, 'Trainer', 'trainer.liubov.fedorenko088', '$argon2id$v=19$m=19456,t=2,p=1$nOHoLq8/OVl9uV0K8D7mgg$Ym0FCJhW9DeltcontvrgIiLi2aeXX5OU7gBB9q/d8Xo', 88),
  (89, 'Trainer', 'trainer.roman.romanenko089', '$argon2id$v=19$m=19456,t=2,p=1$LjFl7+3lzGv+kAPYfoROuQ$1U00vzxEAYTAb7bC6fR58/KzE2d5l9Yncfy5UWp6I9o', 89),
  (90, 'Trainer', 'trainer.artem.zakharchenko090', '$argon2id$v=19$m=19456,t=2,p=1$eF1NAXX6qvA5YDJ70bMWOA$/CscnysfiHgzT7BGnOi13f4nN2iUiNlc8dxt5icdyuo', 90),
  (91, 'Trainer', 'trainer.sergii.pavlenko091', '$argon2id$v=19$m=19456,t=2,p=1$sU/oeomoeTkAHsus5dOKDQ$H6bF5diMebgtxJGrQ/ljMtpVzSZhXajLw1xoVVpV5j8', 91),
  (92, 'Trainer', 'trainer.lesli.koval.chuk092', '$argon2id$v=19$m=19456,t=2,p=1$8NLbFx2uXXLDINUqgCX1wQ$fV0nhf3a6QLg0nea5j7XVANbT4cb6Gltl90qQQhuuSs', 92),
  (93, 'Trainer', 'trainer.roman.tkachenko093', '$argon2id$v=19$m=19456,t=2,p=1$bSstSpMx4G+X/UG0Od/pkQ$oG+8fmqFR0pRMw8ipBeB+KnO6qyLC5DiZcX8dUtjuEg', 93),
  (94, 'Trainer', 'trainer.sergii.rudenko094', '$argon2id$v=19$m=19456,t=2,p=1$d9HYf9FxvbYnVIstdvuG8A$rol/t+a+89qPiGewzJ+DbKM0yf355T2Sau8hOxSsNNw', 94),
  (95, 'Trainer', 'trainer.mika.tkachuk095', '$argon2id$v=19$m=19456,t=2,p=1$odVYJONo9Z5n0sgCBJoryg$n/JnLcWn3xGf7bClroMpRPjbx53IRbhohF5yzSiZMeg', 95),
  (96, 'Trainer', 'trainer.darina.kulik096', '$argon2id$v=19$m=19456,t=2,p=1$S6XthLk0oSqB8dmHIx1itg$EWDDjexzCMNJB1g0K+htejKQiIBtynij9YD+/dONvC8', 96),
  (97, 'Trainer', 'trainer.ivan.litvin097', '$argon2id$v=19$m=19456,t=2,p=1$kuW4ZeNBtP1TePPdg0gPJg$JRYeLbfKHt5IuHJ2u5g5UDAWhnp1CUKkb1YcOdgEF28', 97),
  (98, 'Trainer', 'trainer.viktoriia.zakharchenko098', '$argon2id$v=19$m=19456,t=2,p=1$AKXDwsC4QmNDY5pJOwFqZQ$fYWHxtnSbzvFdGIjJEcbZn5iwSphSSUkpgCNPlySVmI', 98),
  (99, 'Trainer', 'trainer.veronika.palamarchuk099', '$argon2id$v=19$m=19456,t=2,p=1$Gmbg5WObBxWXeubBLj+Kvg$5KqrcrVGjBc4zmCrl+l/8+CLjZGtoYkYAoJvTiG3aYM', 99),
  (100, 'Trainer', 'trainer.ol.ga.litvin100', '$argon2id$v=19$m=19456,t=2,p=1$1eDCstGDr5XQmGJuFOZwAg$fLsqcxD+7w4PuDyIV7z+RwRidkxCDlV13neUN+TWfCg', 100);


  -- 3. Additional Athlete roles for five trainers
INSERT INTO FitServe.users (
  user_id,
  role,
  login,
  password_hash,
  user_info_id
)
VALUES
  (101, 'Athlete', 'athlete.diana.kravchuk082', '$argon2id$v=19$m=19456,t=2,p=1$iCg3cgw9J74YS5MpKeqP7A$M0op5Fkm+UekuGun+TyHZmGFsCa5wIP3mugVeywHhwY', 82),
  (102, 'Athlete', 'athlete.nazar.doroshenko085', '$argon2id$v=19$m=19456,t=2,p=1$ZZA0gT9FPMBCgBcb9/j1uA$U4EOI2Z/Ckrm4kq/WkmDSoV/0tjxo3et+FohEnq3k+A', 85),
  (103, 'Athlete', 'athlete.roman.romanenko089', '$argon2id$v=19$m=19456,t=2,p=1$xbT2kU9JhfuLChjN2lOo/w$QI1Rq58dYueOIOz6mldI9RPSqFu237rJPVK2oyRhILg', 89),
  (104, 'Athlete', 'athlete.sergii.rudenko094', '$argon2id$v=19$m=19456,t=2,p=1$kBF9e4ees7HUxcLE69ECUg$EXSV77t6/4JPk06ZfhO2IgWmm+4DRBTxEmT38zF0S9Q', 94),
  (105, 'Athlete', 'athlete.viktoriia.zakharchenko098', '$argon2id$v=19$m=19456,t=2,p=1$zee7awE1N+JmAUFT/71nyw$QTCpzuq3NI5dsLyLt6wPMlJezXxSZlIBX7hk/kEuXyo', 98);


-- 4. Administrator account without a user_info record
INSERT INTO FitServe.users (
  user_id,
  role,
  login,
  password_hash,
  user_info_id
)
VALUES
  (106, 'Administrator', 'fitserve.admin', '$argon2id$v=19$m=19456,t=2,p=1$LCS5Oz/F32PIyyFm/DnK5w$tS+RM5w6/jK454w/LzAkOYugjdaVLHQcn1iEdqT9DL0', NULL);


-----------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO FitServe.athletes (
  goals,
  user_id
)
VALUES
  ('Підготувати організм до активного туристичного сезону. Прагне краще відновлюватися після силових тренувань. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці.', 1),
  ('Зміцнити м’язи спини та покращити поставу. Прагне краще відновлюватися після силових тренувань. Бажана частота тренувань: 3 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Важливо уникати різкого збільшення робочої ваги.', 2),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Додатково планує відвідувати групові заняття з йоги один раз на тиждень. Оптимальний графік: 3 силові тренування на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів.', 3),
  ('Підтримувати стабільну вагу та регулярно тренуватися протягом року. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 4),
  ('Підтримувати стабільну вагу та регулярно тренуватися протягом року. Планує додати розтягування після кожного тренування. Оптимальний графік: 3 силові тренування на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 5),
  ('Підготувати організм до активного туристичного сезону. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 3 рази на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Важливо уникати різкого збільшення робочої ваги.', 6),
  ('Покращити мобільність суглобів і загальну гнучкість. Хоче контролювати прогрес за допомогою щомісячних вимірювань. Бажана частота тренувань: 4 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Важливо уникати різкого збільшення робочої ваги.', 7),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Планує поступово збільшити кількість тренувань до трьох на тиждень. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Необхідно контролювати відновлення та уникати надмірної втоми.', 8),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Прагне тренуватися без перевантаження та дотримуватися поступової прогресії. Бажана частота тренувань: 2 рази на тиждень. Результат планується оцінювати кожні 8 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 9),
  ('Зменшити відсоток жирової тканини та покращити загальну фізичну форму. Хоче опанувати правильну техніку базових вправ із тренером. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Результат планується оцінювати кожні 8 тижнів. Необхідно контролювати відновлення та уникати надмірної втоми.', 10),
  ('Повернутися до регулярних тренувань після тривалої перерви. Хоче контролювати прогрес за допомогою щомісячних вимірювань. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 11),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Прагне тренуватися без перевантаження та дотримуватися поступової прогресії. Бажана частота тренувань: 4 рази на тиждень. Результат планується оцінювати кожні 8 тижнів. Важливо уникати різкого збільшення робочої ваги.', 12),
  ('Підготувати організм до активного туристичного сезону. Планує додати розтягування після кожного тренування. Оптимальний графік: 3 силові тренування на тиждень. Орієнтовний термін досягнення основного результату — 3 місяці.', 13),
  ('Покращити мобільність суглобів і загальну гнучкість. Хоче контролювати прогрес за допомогою щомісячних вимірювань. Бажана частота тренувань: 4 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів.', 14),
  ('Розвинути загальну витривалість і швидше відновлюватися після навантажень. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 2 рази на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 15),
  ('Підтримувати стабільну вагу та регулярно тренуватися протягом року. Має намір покращити режим сну та відновлення між тренуваннями. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Мета розрахована на поступову роботу протягом 6 місяців. Потрібно приділяти особливу увагу розминці та техніці.', 16),
  ('Покращити координацію, баланс і контроль рухів. Планує поступово збільшити кількість тренувань до трьох на тиждень. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 17),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Хоче покращити харчові звички без суворих дієт. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Першу оцінку прогресу заплановано через 6 тижнів.', 18),
  ('Зменшити дискомфорт у попереку завдяки зміцненню м’язів тулуба. Планує поступово збільшити кількість тренувань до трьох на тиждень. Бажана частота тренувань: 4 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів.', 19),
  ('Підготуватися до аматорського забігу на 10 км. Планує поступово збільшити кількість тренувань до трьох на тиждень. Бажана частота тренувань: 3 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів.', 20),
  ('Підвищити витривалість і комфортно пробігати дистанцію 5 км. Планує поступово збільшити кількість тренувань до трьох на тиждень. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Необхідно контролювати відновлення та уникати надмірної втоми.', 21),
  ('Підвищити силові результати у базових вправах. Додатково планує відвідувати групові заняття з йоги один раз на тиждень. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Мета розрахована на поступову роботу протягом 6 місяців. Важливо уникати різкого збільшення робочої ваги.', 22),
  ('Покращити мобільність суглобів і загальну гнучкість. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 4 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 23),
  ('Покращити форму рук, плечей і верхньої частини спини. Хоче підвищити впевненість у роботі з тренажерами. Бажана частота тренувань: 3 рази на тиждень. Результат планується оцінювати кожні 8 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 24),
  ('Покращити функціональну підготовку для активного повсякденного життя. Хоче підвищити впевненість у роботі з тренажерами. Оптимальний графік: 3 силові тренування на тиждень. Результат планується оцінювати кожні 8 тижнів.', 25),
  ('Зміцнити м’язи спини та покращити поставу. Прагне підвищити щоденну активність і більше ходити пішки. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Необхідно контролювати відновлення та уникати надмірної втоми.', 26),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Планує поступово збільшити кількість тренувань до трьох на тиждень. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Результат планується оцінювати кожні 8 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 27),
  ('Покращити координацію, баланс і контроль рухів. Прагне тренуватися без перевантаження та дотримуватися поступової прогресії. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів.', 28),
  ('Покращити силу ніг і витривалість нижньої частини тіла. Хоче покращити харчові звички без суворих дієт. Бажана частота тренувань: 3 рази на тиждень. Орієнтовний термін досягнення основного результату — 3 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 29),
  ('Зміцнити м’язи кора та покращити стабільність корпусу. Хоче опанувати правильну техніку базових вправ із тренером. Оптимальний графік: 3 силові тренування на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Необхідно контролювати відновлення та уникати надмірної втоми.', 30),
  ('Зменшити дискомфорт у попереку завдяки зміцненню м’язів тулуба. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Результат планується оцінювати кожні 8 тижнів. Важливо уникати різкого збільшення робочої ваги.', 31),
  ('Підтримувати стабільну вагу та регулярно тренуватися протягом року. Додатково планує відвідувати групові заняття з йоги один раз на тиждень. Бажана частота тренувань: 4 рази на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 32),
  ('Розвинути загальну витривалість і швидше відновлюватися після навантажень. Прагне досягти результату без болю та надмірної втоми. Бажана частота тренувань: 3 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 33),
  ('Покращити силу ніг і витривалість нижньої частини тіла. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Бажана частота тренувань: 4 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Потрібно приділяти особливу увагу розминці та техніці.', 34),
  ('Підготувати організм до активного туристичного сезону. Має намір покращити режим сну та відновлення між тренуваннями. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Мета розрахована на поступову роботу протягом 6 місяців.', 35),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Планує додати розтягування після кожного тренування. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 36),
  ('Покращити мобільність суглобів і загальну гнучкість. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 2 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 37),
  ('Покращити мобільність суглобів і загальну гнучкість. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці.', 38),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує поступово збільшити кількість тренувань до трьох на тиждень. Бажана частота тренувань: 4 рази на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 39),
  ('Покращити функціональну підготовку для активного повсякденного життя. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Мета розрахована на поступову роботу протягом 6 місяців.', 40),
  ('Сформувати стабільну звичку тренуватися щонайменше тричі на тиждень. Хоче підвищити впевненість у роботі з тренажерами. Оптимальний графік: 3 силові тренування на тиждень. Проміжний контроль результатів заплановано через 2 місяці.', 41),
  ('Підготуватися до аматорського забігу на 10 км. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Необхідно контролювати відновлення та уникати надмірної втоми.', 42),
  ('Повернутися до регулярних тренувань після тривалої перерви. Має намір покращити режим сну та відновлення між тренуваннями. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці.', 43),
  ('Сформувати стабільну звичку тренуватися щонайменше тричі на тиждень. Прагне досягти результату без болю та надмірної втоми. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Важливо уникати різкого збільшення робочої ваги.', 44),
  ('Зміцнити м’язи спини та покращити поставу. Хоче опанувати правильну техніку базових вправ із тренером. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Мета розрахована на поступову роботу протягом 6 місяців.', 45),
  ('Підвищити витривалість і комфортно пробігати дистанцію 5 км. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 4 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці.', 46),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Прагне краще відновлюватися після силових тренувань. Бажана частота тренувань: 2 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Необхідно контролювати відновлення та уникати надмірної втоми.', 47),
  ('Підвищити витривалість і комфортно пробігати дистанцію 5 км. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 48),
  ('Повернутися до регулярних тренувань після тривалої перерви. Прагне краще відновлюватися після силових тренувань. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Результат планується оцінювати кожні 8 тижнів. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 49),
  ('Розвинути загальну витривалість і швидше відновлюватися після навантажень. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 50),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує відстежувати регулярність занять і не пропускати тренування. Бажана частота тренувань: 3 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Необхідно контролювати відновлення та уникати надмірної втоми.', 51),
  ('Покращити мобільність суглобів і загальну гнучкість. Планує відстежувати регулярність занять і не пропускати тренування. Бажана частота тренувань: 2 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців.', 52),
  ('Зменшити відсоток жирової тканини та покращити загальну фізичну форму. Хоче покращити харчові звички без суворих дієт. Бажана частота тренувань: 4 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 53),
  ('Зміцнити м’язи спини та покращити поставу. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 2 рази на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Необхідно контролювати відновлення та уникати надмірної втоми.', 54),
  ('Підвищити витривалість і комфортно пробігати дистанцію 5 км. Хоче покращити харчові звички без суворих дієт. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 55),
  ('Сформувати стабільну звичку тренуватися щонайменше тричі на тиждень. Має намір покращити режим сну та відновлення між тренуваннями. Бажана частота тренувань: 2 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців. Необхідно контролювати відновлення та уникати надмірної втоми.', 56),
  ('Покращити функціональну підготовку для активного повсякденного життя. Прагне краще відновлюватися після силових тренувань. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Мета розрахована на поступову роботу протягом 6 місяців.', 57),
  ('Підготуватися до аматорського забігу на 10 км. Планує відстежувати регулярність занять і не пропускати тренування. Оптимальний графік: 3 силові тренування на тиждень. Результат планується оцінювати кожні 8 тижнів. Необхідно контролювати відновлення та уникати надмірної втоми.', 58),
  ('Покращити функціональну підготовку для активного повсякденного життя. Планує поєднувати силові тренування з помірним кардіо. Бажана частота тренувань: 2 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 59),
  ('Покращити функціональну підготовку для активного повсякденного життя. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 3 рази на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів.', 60),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 3 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Важливо уникати різкого збільшення робочої ваги.', 61),
  ('Покращити координацію, баланс і контроль рухів. Хоче покращити харчові звички без суворих дієт. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Результат планується оцінювати кожні 8 тижнів.', 62),
  ('Збільшити м’язову витривалість та покращити техніку виконання вправ. Хоче покращити харчові звички без суворих дієт. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Орієнтовний термін досягнення основного результату — 3 місяці. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 63),
  ('Сформувати стабільну звичку тренуватися щонайменше тричі на тиждень. Має намір покращити режим сну та відновлення між тренуваннями. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Важливо уникати різкого збільшення робочої ваги.', 64),
  ('Покращити силу ніг і витривалість нижньої частини тіла. Планує додати розтягування після кожного тренування. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Орієнтовний термін досягнення основного результату — 3 місяці. Важливо уникати різкого збільшення робочої ваги.', 65),
  ('Збільшити м’язову витривалість та покращити техніку виконання вправ. Хоче опанувати правильну техніку базових вправ із тренером. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Орієнтовний термін досягнення основного результату — 3 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 66),
  ('Покращити функціональну підготовку для активного повсякденного життя. Хоче контролювати прогрес за допомогою щомісячних вимірювань. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Орієнтовний термін досягнення основного результату — 3 місяці.', 67),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Хоче уникати різких змін ваги та зберігати довгостроковий результат. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Важливо уникати різкого збільшення робочої ваги.', 68),
  ('Сформувати стабільну звичку тренуватися щонайменше тричі на тиждень. Хоче контролювати прогрес за допомогою щомісячних вимірювань. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Результат планується оцінювати кожні 8 тижнів.', 69),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Прагне підвищити щоденну активність і більше ходити пішки. Оптимальний графік: 3 силові тренування на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 70),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Планує додати розтягування після кожного тренування. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Проміжний контроль результатів заплановано через 2 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 71),
  ('Покращити функціональну підготовку для активного повсякденного життя. Планує відстежувати регулярність занять і не пропускати тренування. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Результат планується оцінювати кожні 8 тижнів.', 72),
  ('Зміцнити м’язи спини та покращити поставу. Прагне підвищити щоденну активність і більше ходити пішки. Бажана частота тренувань: 3 рази на тиждень. Основний цикл роботи розрахований приблизно на 4 місяці. Важливо уникати різкого збільшення робочої ваги.', 73),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує поступово збільшити кількість тренувань до трьох на тиждень. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 74),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує поєднувати силові тренування з помірним кардіо. Бажана частота тренувань: 2 рази на тиждень. Результат планується оцінювати кожні 8 тижнів.', 75),
  ('Зменшити відсоток жирової тканини та покращити загальну фізичну форму. Прагне тренуватися без перевантаження та дотримуватися поступової прогресії. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Результат планується оцінювати кожні 8 тижнів. Потрібно приділяти особливу увагу розминці та техніці.', 76),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Прагне підвищити щоденну активність і більше ходити пішки. Оптимальний графік: 2 силові та 1 кардіотренування на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Навантаження слід збільшувати поступово з урахуванням самопочуття.', 77),
  ('Поступово знизити вагу без різких обмежень і перевантажень. Прагне досягти результату без болю та надмірної втоми. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Потрібно приділяти особливу увагу розминці та техніці.', 78),
  ('Набрати м’язову масу з поступовим збільшенням силових показників. Додатково планує відвідувати групові заняття з йоги один раз на тиждень. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Першу оцінку прогресу заплановано через 6 тижнів. Необхідно контролювати відновлення та уникати надмірної втоми.', 79),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує додати розтягування після кожного тренування. Оптимальний графік: 3 силові тренування на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 80),
  ('Покращити координацію, баланс і контроль рухів. Хоче підвищити впевненість у роботі з тренажерами. Бажана частота тренувань: 2 рази на тиждень. Першу оцінку прогресу заплановано через 6 тижнів. Важливо уникати різкого збільшення робочої ваги.', 101),
  ('Покращити функціональну підготовку для активного повсякденного життя. Прагне тренуватися без перевантаження та дотримуватися поступової прогресії. Планує тренуватися 3–4 рази на тиждень залежно від навантаження. Першу оцінку прогресу заплановано через 6 тижнів. Бажано починати з помірної інтенсивності та поступово її підвищувати.', 102),
  ('Покращити форму рук, плечей і верхньої частини спини. Планує поєднувати силові тренування з помірним кардіо. Оптимальний графік: 2 тренування у залі та 1 групове заняття на тиждень. Проміжний контроль результатів заплановано через 2 місяці. Важливо уникати різкого збільшення робочої ваги.', 103),
  ('Зміцнити м’язи кора та покращити стабільність корпусу. Прагне підвищити щоденну активність і більше ходити пішки. Оптимальний графік: 3 силові тренування на тиждень. Головний пріоритет — стабільність протягом найближчих 12 тижнів. Важливо уникати різкого збільшення робочої ваги.', 104),
  ('Зменшити відсоток жирової тканини та покращити загальну фізичну форму. Хоче опанувати правильну техніку базових вправ із тренером. Бажана частота тренувань: 2 рази на тиждень. Мета розрахована на поступову роботу протягом 6 місяців.', 105);


INSERT INTO FitServe.interest_rate (
  trainer_share_rate,
  trainer_rate
)
VALUES
  (30.00, 'Bronze'),
  (35.00, 'Bronze'),
  (40.00, 'Silver'),
  (45.00, 'Silver'),
  (50.00, 'Gold'),
  (55.00, 'Gold'),
  (60.00, 'Platinum'),
  (65.00, 'Platinum'),
  (70.00, 'Diamond'),
  (75.00, 'Diamond');


INSERT INTO FitServe.trainers (
  contract_type,
  user_id,
  interest_rate_id
)
VALUES
  ('salaried', 81, NULL),
  ('both', 82, 1),
  ('individual', 83, 4),
  ('salaried', 84, NULL),
  ('both', 85, 2),
  ('individual', 86, 5),
  ('salaried', 87, NULL),
  ('individual', 88, 6),
  ('both', 89, 3),
  ('salaried', 90, NULL),
  ('individual', 91, 7),
  ('salaried', 92, NULL),
  ('individual', 93, 8),
  ('salaried', 94, NULL),
  ('individual', 95, 9),
  ('salaried', 96, NULL),
  ('individual', 97, 10),
  ('salaried', 98, NULL),
  ('salaried', 99, NULL),
  ('salaried', 100, NULL);


INSERT INTO FitServe.trainer_specialization (
  trainer_specialization_id,
  specialization_name,
  trainer_id
)
VALUES
  (1, 'Силовий тренінг', 1),
  (2, 'Функціональний тренінг', 1),
  (3, 'Зниження ваги та корекція складу тіла', 1),
  (4, 'Хатха-йога', 2),
  (5, 'Пілатес', 2),
  (6, 'Кросфіт', 3),
  (7, 'HIIT-тренування', 3),
  (8, 'Мобільність і рухливість суглобів', 3),
  (9, 'Відновлювальний фітнес', 3),
  (10, 'Фітнес-бокс', 5),
  (11, 'Бігові тренування', 7),
  (12, 'Кардіовитривалість', 7),
  (13, 'Загальна атлетична підготовка', 7),
  (14, 'Бодибілдинг', 8),
  (15, 'Основи спортивного харчування', 8),
  (16, 'Стретчинг', 11),
  (17, 'Корекція постави', 11),
  (18, 'Групові фітнес-програми', 14),
  (19, 'Сайклінг', 14),
  (20, 'TRX-тренування', 14),
  (21, 'Фітнес для людей старшого віку', 18);


INSERT INTO FitServe.certifications (
  certification_link,
  receiving_date,
  trainer_specialization_id
)
VALUES
  ('https://certificates.example/issa/cpt-ua-0001', DATE '2022-03-18', 1),
  ('https://certificates.example/yoga-alliance/ryt200-0002', DATE '2021-09-04', 4),
  ('https://certificates.example/crossfit/level-1-0003', DATE '2023-02-11', 6),
  ('https://certificates.example/boxing-fitness/coach-0004', DATE '2020-11-26', 10),
  ('https://certificates.example/world-athletics/running-coach-0005', DATE '2024-05-15', 11),
  ('https://certificates.example/nsca/strength-coach-0006', DATE '2022-08-20', 14),
  ('https://certificates.example/stretching-academy/instructor-0007', DATE '2023-06-09', 16),
  ('https://certificates.example/posture-school/correction-0008', DATE '2024-01-27', 17),
  ('https://certificates.example/ace/group-fitness-0009', DATE '2021-12-14', 18),
  ('https://certificates.example/afaa/group-exercise-0010', DATE '2023-10-03', 18);


