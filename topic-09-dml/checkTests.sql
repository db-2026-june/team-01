-- ============================================================================
-- Очікувані коди помилок:
--   23514 — CHECK;
--   23505 — PRIMARY KEY або UNIQUE;
--   23503 — FOREIGN KEY;
--   23502 — NOT NULL;
--   22P02 — неправильне значення ENUM.
-- ============================================================================
-- ГРУПА 1. CHECK-ОБМЕЖЕННЯ
-- ============================================================================

-- ТЕСТ 1
-- Очікуваний CHECK: chk_achievements_target_positive
-- Причина: target_value має бути більшим за 0.
INSERT INTO FitServe.achievements (
  achievement_id, name, category, tier, description, target_value
)
VALUES (
  900001, 'Тест нульової цілі', 'Constraint Test', 'Bronze',
  'Цей запис навмисно порушує CHECK для target_value.', 0
);


-- ТЕСТ 2
-- Очікуваний CHECK: chk_athlete_achievement_date_not_future
-- Причина: дата отримання ачівки не може бути в майбутньому.
INSERT INTO FitServe.athlete_achievement (
  athlete_achievement_id, achievement_id, athlete_id, date, current_state
)
VALUES (
  900001, 67, 7, CURRENT_TIMESTAMP + INTERVAL '1 day', 1
);


-- ТЕСТ 3
-- Очікуваний CHECK: chk_athlete_achievement_state_nonnegative
-- Причина: current_state не може бути від'ємним.
INSERT INTO FitServe.athlete_achievement (
  athlete_achievement_id, achievement_id, athlete_id, date, current_state
)
VALUES (
  900002, 66, 7, CURRENT_TIMESTAMP, -1
);


-- ТЕСТ 4
-- Очікуваний CHECK: chk_body_metrics_weight_range
-- Причина: вага має перебувати в межах від 40.0 до 200.0 кг.
INSERT INTO FitServe.body_metrics (
  metric_id, date, weight, athlete_id
)
VALUES (
  900001, CURRENT_DATE, 39.9, 3
);


-- ТЕСТ 5
-- Очікуваний CHECK: chk_nutrition_carbs
-- Причина: carbs_weight має бути меншим за 1000 г.
INSERT INTO FitServe.nutrition (
  nutrition_id, date, calories, carbs_weight, fat_weight, athlete_id
)
VALUES (
  900001, CURRENT_DATE, 2200, 1000, 70, 7
);


-- ТЕСТ 6
-- Очікуваний CHECK: chk_protein_weight
-- Причина: вага білкового продукту має бути більшою за 0.
INSERT INTO FitServe.protein (
  protein_id, weight, type, nutrition_id
)
VALUES (
  900001, 0, 'Тестовий продукт', 1
);


-- ТЕСТ 7
-- Очікуваний CHECK: chk_pack_subscription_date_order
-- Причина: end_date не може бути ранішою за start_date.
INSERT INTO FitServe.pack_subscription (
  pack_subscription_id, start_date, end_date, athlete_id, pack_id
)
VALUES (
  900001, DATE '2026-08-10', DATE '2026-08-09', 7, 1
);


-- ТЕСТ 8
-- Очікуваний CHECK: chk_user_info_minimum_age
-- Причина: на дату реєстрації користувачеві лише 10 років, а мінімальний вік — 14 років.
INSERT INTO FitServe.user_info (
  user_info_id,
  registration_date,
  first_name,
  last_name,
  date_of_birth,
  phone_number,
  sex,
  preferred_pronouns,
  address
)
VALUES (
  910001,
  CURRENT_TIMESTAMP,
  'Тест',
  'Обмеження',
  (CURRENT_DATE - INTERVAL '10 years')::date,
  '+380000910001',
  'Other',
  NULL,
  'Тестова адреса'
);


-- ТЕСТ 9
-- Очікуваний CHECK: chk_interest_rate_share_range
-- Причина: частка виплати тренеру не може перевищувати 100%.
INSERT INTO FitServe.interest_rate (
  interest_rate_id,
  trainer_share_rate,
  trainer_rate
)
VALUES (
  910001,
  101.00,
  'Bronze'
);


-- ТЕСТ 10
-- Очікуваний CHECK: chk_body_metrics_date_not_future
-- Причина: дата вимірювання показників тіла не може бути в майбутньому.
INSERT INTO FitServe.body_metrics (
  metric_id,
  date,
  weight,
  athlete_id
)
VALUES (
  910001,
  CURRENT_DATE + 1,
  70.0,
  3
);


-- ТЕСТ 11
-- Очікуваний CHECK: chk_nutrition_calories_nonnegative
-- Причина: кількість калорій не може бути від'ємною.
INSERT INTO FitServe.nutrition (
  nutrition_id,
  date,
  calories,
  carbs_weight,
  fat_weight,
  athlete_id
)
VALUES (
  910001,
  CURRENT_DATE,
  -1,
  200,
  70,
  7
);


-- ТЕСТ 12
-- Очікуваний CHECK: chk_nutrition_fat
-- Причина: fat_weight має бути меншим за 1000 грамів.
INSERT INTO FitServe.nutrition (
  nutrition_id,
  date,
  calories,
  carbs_weight,
  fat_weight,
  athlete_id
)
VALUES (
  910002,
  CURRENT_DATE,
  2200,
  250,
  1000,
  7
);


-- ТЕСТ 13
-- Очікуваний CHECK: chk_studios_capacity
-- Причина: місткість студії має бути більшою за 0 та меншою за 500.
-- Використовуємо UPDATE, щоб тест не порушував UNIQUE для назви студії.
UPDATE FitServe.studios
SET max_capacity = 0
WHERE studio_id = 1;


-- ТЕСТ 14
-- Очікуваний CHECK: chk_studio_type_activity_not_blank
-- Причина: назва активності не може складатися лише з пробілів.
INSERT INTO FitServe.studio_type (
  studio_type_id,
  activity_name,
  studio_id
)
VALUES (
  910001,
  '   ',
  1
);


-- ТЕСТ 15
-- Очікуваний CHECK: chk_session_end_after_start
-- Причина: сесія не може завершуватися раніше, ніж вона почалася.
INSERT INTO FitServe.session (
  session_id,
  time_start,
  time_end,
  booking,
  studio_id
)
VALUES (
  910001,
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP - INTERVAL '1 hour',
  'planned',
  NULL
);


-- ТЕСТ 16
-- Очікуваний CHECK: chk_session_max_duration
-- Причина: тривалість сесії не може перевищувати 3 години.
INSERT INTO FitServe.session (
  session_id,
  time_start,
  time_end,
  booking,
  studio_id
)
VALUES (
  910002,
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP + INTERVAL '4 hours',
  'planned',
  NULL
);


-- ТЕСТ 17
-- Очікуваний CHECK: chk_pack_subscription_start_limit
-- Причина: підписка не може починатися більш ніж через один рік від поточної дати.
INSERT INTO FitServe.pack_subscription (
  pack_subscription_id,
  start_date,
  end_date,
  athlete_id,
  pack_id
)
VALUES (
  910001,
  (CURRENT_DATE + INTERVAL '1 year 1 day')::date,
  (CURRENT_DATE + INTERVAL '1 year 1 month')::date,
  7,
  1
);


-- ТЕСТ 18
-- Очікуваний CHECK: chk_promocodes_quantity_nonnegative
-- Причина: доступна кількість промокодів не може бути від'ємною.
INSERT INTO FitServe.promocodes (
  promocode_id,
  code,
  quantity,
  is_active
)
VALUES (
  910001,
  'NEG_QTY_TEST',
  -1,
  true
);


-- ТЕСТ 19
-- Очікуваний CHECK: chk_payment_price_positive
-- Причина: ціна платежу має бути більшою за 0.
INSERT INTO FitServe.payment (
  payment_id,
  price,
  payment_method,
  payment_date,
  amount_paid,
  payment_status,
  pack_subscription_id,
  promocode_id
)
VALUES (
  910001,
  0.00,
  'card',
  CURRENT_TIMESTAMP,
  NULL,
  'unpaid',
  11,
  NULL
);


-- ТЕСТ 20
-- Очікуваний CHECK: chk_payment_amount_positive
-- Причина: заповнене значення amount_paid має бути більшим за 0.
INSERT INTO FitServe.payment (
  payment_id,
  price,
  payment_method,
  payment_date,
  amount_paid,
  payment_status,
  pack_subscription_id,
  promocode_id
)
VALUES (
  910002,
  100.00,
  'card',
  CURRENT_TIMESTAMP,
  0.00,
  'in_process',
  11,
  NULL
);


-- ТЕСТ 21
-- Очікуваний CHECK: chk_discounts_date_order
-- Причина: дата завершення знижки має бути пізнішою за дату її початку.
INSERT INTO FitServe.discounts (
  discount_id,
  discount_name,
  description,
  start_date,
  end_date
)
VALUES (
  910001,
  'Тест неправильних дат',
  'Цей запис навмисно порушує порядок дат знижки.',
  CURRENT_DATE,
  CURRENT_DATE
);

-- ============================================================================
-- ГРУПА 2. PRIMARY KEY
-- ============================================================================

-- ТЕСТ 22
-- Очікуваний результат: ERROR 23505, constraint "packs_pkey".
-- Причина: pack_id = 1 уже існує, тому праймері ключ повторюється.
INSERT INTO FitServe.packs (
  pack_id, pack_name, pack_type, is_active
)
VALUES (
  1, 'Тест дублювання праймері ключа', 'test', false
);


-- ============================================================================
-- ГРУПА 3. UNIQUE-ОБМЕЖЕННЯ
-- ============================================================================

-- ТЕСТ 23 — простий UNIQUE
-- Очікуваний результат: ERROR 23505, constraint "user_info_phone_number_key".
-- Причина: два користувачі не можуть мати однаковий номер телефону.
UPDATE FitServe.user_info AS target
SET phone_number = source.phone_number
FROM FitServe.user_info AS source
WHERE target.user_info_id = 2
  AND source.user_info_id = 1;


-- ТЕСТ 24 — UNIQUE для зв'язку one-to-one
-- Очікуваний результат: ERROR 23505, constraint "trainers_user_id_key".
-- Причина: один user_id не може належати двом тренерам.
UPDATE FitServe.trainers AS target
SET user_id = source.user_id
FROM FitServe.trainers AS source
WHERE target.trainer_id = 2
  AND source.trainer_id = 1;


-- ТЕСТ 25 — композитний UNIQUE
-- Очікуваний результат: ERROR 23505,
-- constraint "payment_discount_discount_id_payment_id_key".
-- Причина: ту саму знижку не можна двічі додати до одного платежу.
UPDATE FitServe.payment_discount AS target
SET discount_id = source.discount_id,
    payment_id = source.payment_id
FROM FitServe.payment_discount AS source
WHERE target.payment_discount_id = 2
  AND source.payment_discount_id = 1;


-- ============================================================================
-- ГРУПА 4. FOREIGN KEY
-- ============================================================================

-- ТЕСТ 26
-- Очікуваний результат: ERROR 23503,
-- constraint "fk_athlete_session_athlete".
-- Причина: до сесії не можна додати неіснуючого атлета.
UPDATE FitServe.athlete_session
SET athlete_id = 999999
WHERE athlete_session_id = 1;


-- ============================================================================
-- ГРУПА 5. NOT NULL
-- ============================================================================

-- ТЕСТ 27
-- Очікуваний результат: ERROR 23502 для поля users.login.
-- Причина: логін є обов'язковим і не може бути NULL.
UPDATE FitServe.users
SET login = NULL
WHERE user_id = 1;


-- ============================================================================
-- ГРУПА 6. ENUM
-- ============================================================================

-- ТЕСТ 28
-- Очікуваний результат: ERROR 22P02 для ENUM FitServe.studio_name_enum.
-- Причина: значення crossfit відсутнє серед визначених назв студій.
UPDATE FitServe.studios
SET studio_name = 'crossfit'
WHERE studio_id = 1;
