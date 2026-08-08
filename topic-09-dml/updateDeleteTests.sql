-- ============================================================================
-- ГРУПА 7. ON UPDATE / ON DELETE
-- ============================================================================
--
-- Успішні тести CASCADE та SET NULL виконуються всередині транзакції.
-- Після перевірки виконується ROLLBACK, тому початкові DML-дані не змінюються.
--
-- Тести RESTRICT навмисно завершуються помилкою 23503 (FOREIGN KEY).
-- Їх краще запускати окремо, як і інші негативні constraint-тести.
-- ============================================================================


-- ============================================================================
-- ON UPDATE CASCADE
-- ============================================================================

-- ТЕСТ 29 — ON UPDATE CASCADE: session -> athlete_session, trainer_session
-- Очікуваний результат:
--   session_id = 1 змінюється на 910101;
--   відповідні FK у athlete_session і trainer_session автоматично
--   змінюються на 910101.
BEGIN;

UPDATE FitServe.session
SET session_id = 910101
WHERE session_id = 1;

SELECT
  athlete_session_id,
  session_id,
  athlete_id
FROM FitServe.athlete_session
WHERE session_id = 910101
ORDER BY athlete_session_id;

SELECT
  trainer_session_id,
  trainer_id,
  session_id
FROM FitServe.trainer_session
WHERE session_id = 910101
ORDER BY trainer_session_id;

ROLLBACK;


-- ТЕСТ 30 — ON UPDATE CASCADE: user_info -> users
-- Очікуваний результат:
--   user_info_id = 1 змінюється на 910001;
--   FitServe.users.user_info_id автоматично також стає 910001.
BEGIN;

UPDATE FitServe.user_info
SET user_info_id = 910001
WHERE user_info_id = 1;

SELECT
  user_id,
  role,
  user_info_id
FROM FitServe.users
WHERE user_info_id = 910001;

ROLLBACK;


-- ============================================================================
-- ON DELETE CASCADE
-- ============================================================================

-- ТЕСТ 31 — ON DELETE CASCADE: session -> athlete_session, trainer_session
-- Очікуваний результат:
--   після видалення session_id = 1 усі зв'язки цієї сесії
--   в athlete_session і trainer_session також видаляються.
BEGIN;

SELECT COUNT(*) AS athlete_links_before
FROM FitServe.athlete_session
WHERE session_id = 1;

SELECT COUNT(*) AS trainer_links_before
FROM FitServe.trainer_session
WHERE session_id = 1;

DELETE FROM FitServe.session
WHERE session_id = 1;

SELECT COUNT(*) AS athlete_links_after
FROM FitServe.athlete_session
WHERE session_id = 1;

SELECT COUNT(*) AS trainer_links_after
FROM FitServe.trainer_session
WHERE session_id = 1;

ROLLBACK;


-- ТЕСТ 32 — ON DELETE CASCADE: equipment -> warranty, pack_equipment
-- Очікуваний результат:
--   після видалення equipment_id = 1:
--   * warranty для equipment_id = 1 видаляється;
--   * записи pack_equipment для equipment_id = 1 видаляються.
BEGIN;

SELECT COUNT(*) AS warranty_before
FROM FitServe.warranty
WHERE equipment_id = 1;

SELECT COUNT(*) AS pack_equipment_before
FROM FitServe.pack_equipment
WHERE equipment_id = 1;

DELETE FROM FitServe.equipment
WHERE equipment_id = 1;

SELECT COUNT(*) AS warranty_after
FROM FitServe.warranty
WHERE equipment_id = 1;

SELECT COUNT(*) AS pack_equipment_after
FROM FitServe.pack_equipment
WHERE equipment_id = 1;

ROLLBACK;


-- ============================================================================
-- ON DELETE SET NULL
-- ============================================================================

-- ТЕСТ 33 — ON DELETE SET NULL: interest_rate -> trainers
-- Передумова:
--   trainer_id = 2 використовує interest_rate_id = 1.
-- Очікуваний результат:
--   після видалення interest_rate_id = 1
--   у trainer_id = 2 поле interest_rate_id автоматично стає NULL.
BEGIN;

SELECT
  trainer_id,
  contract_type,
  interest_rate_id
FROM FitServe.trainers
WHERE trainer_id = 2;

DELETE FROM FitServe.interest_rate
WHERE interest_rate_id = 1;

SELECT
  trainer_id,
  contract_type,
  interest_rate_id
FROM FitServe.trainers
WHERE trainer_id = 2;

ROLLBACK;


-- ТЕСТ 34 — ON DELETE SET NULL: promocodes -> payment
-- Передумова:
--   payment_id = 1 використовує promocode_id = 1.
-- Очікуваний результат:
--   після видалення promocode_id = 1
--   у payment_id = 1 поле promocode_id автоматично стає NULL.
BEGIN;

SELECT
  payment_id,
  promocode_id
FROM FitServe.payment
WHERE payment_id = 1;

DELETE FROM FitServe.promocodes
WHERE promocode_id = 1;

SELECT
  payment_id,
  promocode_id
FROM FitServe.payment
WHERE payment_id = 1;

ROLLBACK;


-- ============================================================================
-- ON DELETE RESTRICT
-- ============================================================================

-- ТЕСТ 35 — ON DELETE RESTRICT: user_info -> users
-- Очікуваний результат:
--   ERROR 23503, constraint "fk_users_user_info".
-- Причина:
--   user_info_id = 1 використовується в FitServe.users,
--   тому батьківський запис видалити не можна.
DELETE FROM FitServe.user_info
WHERE user_info_id = 1;


-- ТЕСТ 36 — ON DELETE RESTRICT: packs -> pack_subscription
-- Очікуваний результат:
--   ERROR 23503, constraint "fk_pack_subscription_pack".
-- Причина:
--   pack_id = 1 використовується в FitServe.pack_subscription,
--   тому пакет не може бути видалений, доки існують активні зв'язки.
DELETE FROM FitServe.packs
WHERE pack_id = 1;