{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red39\green78\blue204;\red255\green255\blue255;\red44\green55\blue61;
\red0\green0\blue0;\red42\green55\blue62;\red238\green57\blue24;}
{\*\expandedcolortbl;;\cssrgb\c20000\c40392\c83922;\cssrgb\c100000\c100000\c100000;\cssrgb\c22745\c27843\c30588;
\cssrgb\c0\c0\c0;\cssrgb\c21569\c27843\c30980;\cssrgb\c95686\c31765\c11765;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE\cf4 \strokec4  \cf2 \strokec2 TABLE\cf4 \strokec4  \strokec5 dataset_kimia_farma.kf_analisa1\strokec4  \cf2 \strokec2 AS\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \strokec5 t.transaction_id\strokec4 ,\cb1 \
\cb3     \strokec5 t.date\strokec4 ,\cb1 \
\cb3     \strokec5 t.branch_id\strokec4 ,\cb1 \
\cb3     \strokec5 kc.branch_name\strokec4 ,\cb1 \
\cb3     \strokec5 kc.kota\strokec4 ,\cb1 \
\cb3     \strokec5 kc.provinsi\strokec4 ,\cb1 \
\cb3     \strokec5 kc.rating\strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 rating_cabang\strokec4 ,\cb1 \
\cb3     \strokec5 t.customer_name\strokec4 ,\cb1 \
\cb3     \strokec5 t.product_id\strokec4 ,\cb1 \
\cb3     \strokec5 p.product_name\strokec4 ,\cb1 \
\cb3     \strokec5 p.price\strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 actual_price\strokec4 ,\cb1 \
\cb3     \strokec5 t.discount_percentage\strokec4 ,\cb1 \
\cb3     \cf2 \strokec2 CASE\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 50000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.1\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 100000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.15\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 300000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.2\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 500000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.25\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 ELSE\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.3\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 END\cf4 \strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 persentase_gross_laba\strokec4 ,\cb1 \
\cb3     \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf6 \strokec6 (\cf7 \strokec7 1\cf4 \strokec4  \cf6 \strokec6 -\cf4 \strokec4  \strokec5 t.discount_percentage\cf6 \strokec6 )\cf4 \strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 nett_sales\strokec4 ,\cb1 \
\cb3     \cf6 \strokec6 (\cf4 \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf6 \strokec6 (\cf7 \strokec7 1\cf4 \strokec4  \cf6 \strokec6 -\cf4 \strokec4  \strokec5 t.discount_percentage\cf6 \strokec6 ))\cf4 \strokec4  \cf6 \strokec6 -\cf4 \strokec4  \cf2 \strokec2 CASE\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 50000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.1\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 100000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.15\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 300000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.2\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 WHEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 500000\cf4 \strokec4  \cf2 \strokec2 THEN\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.25\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 ELSE\cf4 \strokec4  \strokec5 p.price\strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf7 \strokec7 0.3\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 END\cf4 \strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 nett_profit\strokec4 ,\cb1 \
\cb3     \strokec5 t.rating\strokec4  \cf2 \strokec2 AS\cf4 \strokec4  \strokec5 rating_transaksi\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \strokec5 dataset_kimia_farma.kf_final_transaction\strokec4  \strokec5 t\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 JOIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \strokec5 dataset_kimia_farma.kf_inventory\strokec4  \strokec5 i\strokec4  \cf2 \strokec2 ON\cf4 \strokec4  \strokec5 t.branch_id\strokec4  = \strokec5 i.branch_id\strokec4  \cf2 \strokec2 AND\cf4 \strokec4  \strokec5 t.product_id\strokec4  = \strokec5 i.product_id\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 JOIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \strokec5 dataset_kimia_farma.kf_kantor_cabang\strokec4  \strokec5 kc\strokec4  \cf2 \strokec2 ON\cf4 \strokec4  \strokec5 t.branch_id\strokec4  = \strokec5 kc.branch_id\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 JOIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \strokec5 dataset_kimia_farma.kf_product\strokec4  \strokec5 p\strokec4  \cf2 \strokec2 ON\cf4 \strokec4  \strokec5 t.product_id\strokec4  = \strokec5 p.product_id\strokec4 ;\cb1 \
}