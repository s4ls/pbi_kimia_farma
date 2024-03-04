WITH gross_profit_categories AS (
  SELECT
    t.transaction_id,
    t.date,
    EXTRACT(YEAR FROM t.date) AS year,
    t.branch_id,
    t.product_id,
    t.discount_percentage,
    p.price,
    CASE
      WHEN p.price <= 50000 THEN p.price * 0.1
      WHEN p.price > 50000 AND p.price <= 100000 THEN p.price * 0.15
      WHEN p.price > 100000 AND p.price <= 300000 THEN p.price * 0.2
      WHEN p.price > 300000 AND p.price <= 500000 THEN p.price * 0.25
      WHEN p.price > 500000 THEN p.price * 0.3
    END AS gross_profit
  FROM
    dataset_kimia_farma.kf_final_transaction t
  JOIN
    dataset_kimia_farma.kf_product p ON t.product_id = p.product_id
)

SELECT
  year,
  SUM(price) AS total_revenue,
  SUM(gross_profit) AS total_gross_profit
FROM
  gross_profit_categories
GROUP BY
  year
ORDER BY
  year;
