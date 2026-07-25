# SQL insights

## Query 1 – Total Customers

Result:
99,441 Customers

Insight:
The company has approximately 99K registered customers, indicating a large customer base for analysis.

## Query 2 - Total Orders

Result:
99,441 Orders

Insight:
The number of orders is almost equal to the number of customers, suggesting that on average each customer placed only one order — repeat purchase rate is quite low.

## Query 3 - Total Products

Result:
32,951 Products

Insight:
A catalog of nearly 33K unique products reflects a wide and diverse product range, though it also spreads sales thinly across many items.

## Query 4 - Total Sellers

Result:
3,095 Sellers

Insight:
With over 3,000 active sellers, this is a marketplace-driven business model, averaging roughly 10-11 products per seller.


## Query 5 - Order Status Distribution

Result:

Order Status Total Orders

delivered	96478
shipped	    1107
canceled	625
unavailable	609
invoiced	314
processing	301
created	    5
approved	2

Insight:
About 97% of orders were successfully delivered, with cancellations and unavailability making up less than 3% combined — indicating strong operational reliability.

## Query 6 - Top 10 Selling Products

Result:

Product id	                       Total Sold

aca2eb7d00ea1a7b8ebd4e68314663af	527
99a4788cb24856965c36a24e339b6058	488
422879e10f46682990de24d770e7f83d	484
389d119b48cf3043d311335e499d9c6b	392
368c6c730842d78016ad823897a372db	388
53759a2ecddad2bb87a079a1f1519f73	373
d1c427060a0f73f6b889a5c7c61f2ac4	343
53b36df67ebb7c41585e8d54d6772e08	323
154e7e31ebfa092203795c972e5804a6	281
3dd2a17168ec895c781a9191c1e95ad7	274

Insight:
No single product dominates sales — even the top seller only reached 527 units, showing a long-tail sales pattern spread across many SKUs.

## Query 7 - Top 10 Sellers by Revenue

Result:

Seller_id                           Revenue

4869f7a5dfa277a7dca6462dcf3b52b2	229472.63
53243585a1d6dc2643021fd1853d8905	222776.05
4a3ca9315b744ce9f8e9374361493884	200472.92
fa1c13f2614d7b5c4749cbc52fecda94	194042.03
7c67e1448b00f6e969d365cea6b010ab	187923.89
7e93a43ef30c4f03f38b393420bc753a	176431.87
da8622b14eb17ae2831f4ac5b9dab84a	160236.57
7a67c85e85bb2ce8582c35f2203ad736	141745.53
1025f0e2d44d7041d6cf58b6550e0bfa	138968.55
955fee9216a65b617aa5c0531780ce60	135171.70

Insight:
A small group of high-performing sellers drives a disproportionately large share of total revenue.

## Query 8 - Total Revenue

Result:

13591643.70 Total Revenue

Insight:
Total revenue of over 13.5 million confirms a sizable overall business scale across ~99K orders.

## Query 9 - Average Order Value

Result:

154.10 Average Order Value

Insight:
A relatively low average order value suggests this marketplace primarily deals in affordable, everyday products rather than high-ticket items.


## Query 10 - Payment Method Distribution

Result:

Payment Type    Total Payment

credit_card	    76795
boleto	        19784
voucher	        5775
debit_card	    1529
not_defined	    3

Insight:
Credit card is the dominant payment method (~73%), followed by boleto (~19%) — customers strongly prefer card-based payments over cash-based alternatives.

## Query 11 - Average Rating

Result:

4.09 Average Rating

Insight:
An average rating of 4.09/5 reflects generally strong customer satisfaction across orders.

## Query 12 - Review Score Distribution

Result:

Review Score    Total Review
1               11424
2	            3151
3	            8179
4	            19141
5	            57328

Insight:
Around 63% of reviews are 5-star, showing largely positive sentiment, but roughly 12% are 1-star — a notable dissatisfied segment worth investigating further.

## Query 13 - Top 10 Customer States

Result:

Customer States     Customers

SP	                41746
RJ	                12852
MG	                11635
RS	                5466
PR	                5045
SC	                3637
BA	                3380
DF	                2140
ES	                2033
GO	                2020

Insight:
São Paulo (SP) alone accounts for about 42% of all customers, showing the customer base is heavily concentrated in one region.

## Query 14 - Top 10 Seller States

Result:

Seller States       Sellers

SP	                1849
PR	                349
MG	                244
SC	                190
RJ	                171
RS	                129
GO	                40
DF	                30
ES	                23
BA	                19

Insight:
Sellers are also concentrated in SP, mirroring the customer distribution — this regional overlap likely benefits logistics and delivery efficiency.

## Query 15 - Top Product Categories

Result:

Product Categories Name             Products

cama_mesa_banho	                    3029
esporte_lazer	                    2867
moveis_decoracao	                2657
beleza_saude	                    2444
utilidades_domesticas	            2335
automotivo	                        1900
informatica_acessorios	            1639
brinquedos	                        1411
relogios_presentes	                1329
telefonia	                        1134

Insight:
Home and lifestyle categories dominate the catalog, led by bed/bath/table products, followed by sports/leisure and furniture/decor.

## Query 16 - Monthly Orders

Result:

Year    Month   Total Orders

2016	9	    4
2016	10	    324
2016	12	    1
2017	1	    800
2017	2	    1780
2017	3	    2682
2017	4	    2404
2017	5	    3700
2017	6	    3245
2017	7	    4026
2017	8	    4331
2017	9	    4285
2017	10	    4631
2017	11	    7544
2017	12	    5673
2018	1	    7269
2018	2	    6728
2018	3	    7211
2018	4	    6939
2018	5	    6873
2018	6	    6167
2018	7	    6292
2018	8	    6512
2018	9	    16
2018	10	    4

Insight:
Orders show consistent month-over-month growth through 2017–2018, with a clear peak in November 2017 — likely driven by Black Friday seasonal demand. The sharp drop in Sep-Oct 2018 reflects incomplete data for those months, not an actual decline.

## Query 17 - Monthly Revenue

Result:

Year    Month   Revenue

2016	9	    267.36
2016	10	    49507.66
2016	12	    10.90
2017	1	    120312.87
2017	2	    247303.02
2017	3	    374344.30
2017	4	    359927.23
2017	5	    506071.14
2017	6	    433038.60
2017	7	    498031.48
2017	8	    573971.68
2017	9	    624401.69
2017	10	    664219.43
2017	11	    1010271.37
2017	12	    743914.17
2018	1	    950030.36
2018	2	    844178.71
2018	3	    983213.44
2018	4	    996647.75
2018	5	    996517.68
2018	6	    865124.31
2018	7	    895507.22
2018	8	    854686.33
2018	9	    145.00

Insight:
Revenue trends closely track order volume, with the same November 2017 seasonal spike confirming the Black Friday effect.

## Query 18 - Top 10 Most Expensive Products Sold

Result:

Product Id                          Highest Price

489ae2aa008f021502940f251d4cce7f	6735.00
69c590f7ffc7bf8db97190b6cb6ed62e	6729.00
1bdf5e6731585cf01aa8169c7028d6ad	6499.00
a6492cc69376c469ab6f61d8f44de961	4799.00
c3ed642d592594bb648ff4a04cee2747	4690.00
259037a6a41845e455183f89c5035f18	4590.00
a1beef8f3992dbd4cd8726796aa69c53	4399.87
6cdf8fc1d741c76586d8b6b15e9eef30	4099.99
dd113cb02b2af9c8e5787e8f1f0722f6	4059.00
6902c1962dd19d540807d0ab8fade5c6	3999.90

Insight:
While the marketplace is dominated by everyday, low-cost items, it also carries a small tier of premium products reaching over 6,000 in price.

## Query 19 - Average Delivery Time (Days)

Result:

12.50  Average Delivery Day

Insight:
An average delivery time of 12.5 days is moderate and represents a potential area for improving customer experience through faster fulfillment.

## Query 20 - Top 10 Cities by Customers

Result:

Customer City           Total_Customers

sao paulo	            15540
rio de janeiro	        6882
belo horizonte	        2773
brasilia	            2131
curitiba	            1521
campinas	            1444
porto alegre	        1379
salvador	            1245
guarulhos	            1189
sao bernardo do campo	938

Insight:
São Paulo city alone accounts for the largest customer concentration, reinforcing the state-level dominance seen in Query 13 — the top 3 cities are all major Brazilian metros.



