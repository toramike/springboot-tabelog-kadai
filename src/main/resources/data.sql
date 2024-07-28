-- categoriesテーブル
INSERT IGNORE INTO categories (id, category_name) VALUES (1, '居酒屋');
INSERT IGNORE INTO categories (id, category_name) VALUES (2, 'ラーメン');
INSERT IGNORE INTO categories (id, category_name) VALUES (3, '和食');
INSERT IGNORE INTO categories (id, category_name) VALUES (4, 'お好み焼き');
INSERT IGNORE INTO categories (id, category_name) VALUES (5, 'カレー');
INSERT IGNORE INTO categories (id, category_name) VALUES (6, 'たこ焼き');
INSERT IGNORE INTO categories (id, category_name) VALUES (7, '中華料理');
INSERT IGNORE INTO categories (id, category_name) VALUES (8, 'ファストフード');
INSERT IGNORE INTO categories (id, category_name) VALUES (9, 'うどん');
INSERT IGNORE INTO categories (id, category_name) VALUES (10, '焼肉');
INSERT IGNORE INTO categories (id, category_name) VALUES (11, '寿司');
INSERT IGNORE INTO categories (id, category_name) VALUES (12, '串カツ');
INSERT IGNORE INTO categories (id, category_name) VALUES (13, '焼きそば');
INSERT IGNORE INTO categories (id, category_name) VALUES (14, 'おでん');


-- restaurantsテーブル
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (1, 'やきとり大吉', 'yakitori_daikichi.jpg', 'お手頃価格の美味しい焼き鳥屋さん。', 500, 1500, 30, '450-0002', '愛知県名古屋市中村区名駅2丁目', '052-123-4567', 1);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (2, 'ラーメン一番星', 'ramen_ichibanboshi.jpg', 'こだわりのスープが自慢のラーメン店。', 700, 1200, 20, '460-0008', '愛知県名古屋市中区栄3丁目', '052-234-5678', 2);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (3, '天ぷら天国', 'tempura_tengoku.jpg', 'サクサクの天ぷらが味わえる専門店。', 800, 2000, 25, '461-0001', '愛知県名古屋市東区葵1丁目', '052-345-6789', 3);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (4, 'お好み焼き花月', 'okonomiyaki_kagetsu.jpg', '自分で焼けるお好み焼き屋さん。', 600, 1500, 40, '460-0003', '愛知県名古屋市中区錦2丁目', '052-456-7890', 4);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (5, 'カレーライス福神', 'curry_fukujin.jpg', 'スパイスの効いた本格カレー店。', 700, 1300, 30, '450-0003', '愛知県名古屋市中村区名駅3丁目', '052-567-8901', 5);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (6, 'たこ焼き銀だこ', 'takoyaki_gindako.jpg', '外はカリカリ、中はトロトロのたこ焼き。', 500, 1000, 15, '460-0002', '愛知県名古屋市中区錦1丁目', '052-678-9012', 6);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (7, '餃子の王将', 'gyoza_osho.jpg', '手作り餃子が自慢の中華料理店。', 600, 1200, 35, '461-0002', '愛知県名古屋市東区泉2丁目', '052-789-0123', 7);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (8, 'ハンバーガーキング', 'burger_king.jpg', 'ボリューム満点のハンバーガー専門店。', 800, 1500, 25, '450-0004', '愛知県名古屋市中村区名駅4丁目', '052-890-1234', 8);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (9, 'うどん丸亀製麺', 'udon_marukame.jpg', '讃岐うどんが楽しめる人気店。', 500, 1000, 30, '460-0004', '愛知県名古屋市中区栄4丁目', '052-901-2345', 9);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (10, '焼肉牛角', 'yakiniku_gyukaku.jpg', 'リーズナブルに楽しめる焼肉チェーン。', 1000, 3000, 50, '450-0005', '愛知県名古屋市中村区名駅5丁目', '052-012-3456', 10);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (11, '寿司三昧', 'sushi_zanmai.jpg', '新鮮なネタが揃う回転寿司店。', 800, 2000, 40, '460-0005', '愛知県名古屋市中区栄5丁目', '052-123-4568', 11);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (12, '串カツ田中', 'kushikatsu_tanaka.jpg', 'サクサクの串カツが自慢のお店。', 500, 1500, 30, '461-0003', '愛知県名古屋市東区葵3丁目', '052-234-5679', 12);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (13, 'たこ焼き道場', 'takoyaki_dojo.jpg', '本場大阪の味を名古屋で楽しめるたこ焼き店。', 600, 1200, 20, '460-0006', '愛知県名古屋市中区錦6丁目', '052-345-6780', 6);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (14, '焼きそば屋', 'yakisoba_ya.jpg', '特製ソースが決め手の焼きそば専門店。', 500, 1000, 25, '450-0006', '愛知県名古屋市中村区名駅6丁目', '052-456-7891', 13);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, category_id)
VALUES (15, 'おでん屋', 'oden_ya.jpg', '冬にぴったりのあったかおでん屋さん。', 600, 1300, 20, '460-0007', '愛知県名古屋市中区栄7丁目', '052-567-8902', 14);