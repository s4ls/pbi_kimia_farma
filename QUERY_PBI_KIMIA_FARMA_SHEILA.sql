CREATE TABLE dataset_kimia_farma.kf_analisa1 AS
SELECT
    t.transaction_id,
    t.date,
    t.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    t.customer_name,
    t.product_id,
    p.product_name,
    p.price AS actual_price,
    t.discount_percentage,
    CASE
        WHEN p.price <= 50000 THEN p.price * 0.1
        WHEN p.price <= 100000 THEN p.price * 0.15
        WHEN p.price <= 300000 THEN p.price * 0.2
        WHEN p.price <= 500000 THEN p.price * 0.25
        ELSE p.price * 0.3
    END AS persentase_gross_laba,
    p.price * (1 - t.discount_percentage) AS nett_sales,
    (p.price * (1 - t.discount_percentage)) - CASE
        WHEN p.price <= 50000 THEN p.price * 0.1
        WHEN p.price <= 100000 THEN p.price * 0.15
        WHEN p.price <= 300000 THEN p.price * 0.2
        WHEN p.price <= 500000 THEN p.price * 0.25
        ELSE p.price * 0.3
    END AS nett_profit,
    t.rating AS rating_transaksi
FROM
    dataset_kimia_farma.kf_final_transaction t
JOIN
    dataset_kimia_farma.kf_inventory i ON t.branch_id = i.branch_id AND t.product_id = i.product_id
JOIN
    dataset_kimia_farma.kf_kantor_cabang kc ON t.branch_id = kc.branch_id
JOIN
    dataset_kimia_farma.kf_product p ON t.product_id = p.product_id;
