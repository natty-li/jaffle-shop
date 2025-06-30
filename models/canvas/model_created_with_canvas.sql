WITH customer AS (
  /* Customer data with basic cleaning and transformation applied, one row per customer. */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_customers') }}
), orders AS (
  /* Order data with basic cleaning and transformation applied, one row per order. */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_orders') }}
), "join" AS (
  SELECT
    *
  FROM orders
  JOIN customer
    ON orders.CUSTOMER_ID = customer.CUSTOMER_ID
), model_created_with_canvas AS (
  SELECT
    *
  FROM "join"
)
SELECT
  *
FROM model_created_with_canvas