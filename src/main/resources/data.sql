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
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (1, 'やきとり大吉', 'yakitori_daikichi.jpg', 'お手頃価格の美味しい焼き鳥屋さん。', 500, 1500, 30, '450-0002', '愛知県名古屋市中村区名駅2丁目', '052-123-4567', '水曜日', '10:00', '21:00', 1);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (2, 'ラーメン一番星', 'ramen_ichibanboshi.jpg', 'こだわりのスープが自慢のラーメン店。', 700, 1200, 20, '460-0008', '愛知県名古屋市中区栄3丁目', '052-234-5678', '不定休', '12:00', '21:00', 2);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (3, '天ぷら天国', 'tempura_tengoku.jpg', 'サクサクの天ぷらが味わえる専門店。', 800, 2000, 25, '461-0001', '愛知県名古屋市東区葵1丁目', '052-345-6789', '木曜日', '11:00', '19:00', 3);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (4, 'お好み焼き花月', 'okonomiyaki_kagetsu.jpg', '自分で焼けるお好み焼き屋さん。', 600, 1500, 40, '460-0003', '愛知県名古屋市中区錦2丁目', '052-456-7890', '月曜日', '11:00', '19:30', 4);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (5, 'カレーライス福神', 'curry_fukujin.jpg', 'スパイスの効いた本格カレー店。', 700, 1300, 30, '450-0003', '愛知県名古屋市中村区名駅3丁目', '052-567-8901', '水曜日', '09:00', '21:00', 5);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (6, 'たこ焼き銀だこ', 'takoyaki_gindako.jpg', '外はカリカリ、中はトロトロのたこ焼き。', 500, 1000, 15, '460-0002', '愛知県名古屋市中区錦1丁目', '052-678-9012', '水曜日', '11:30', '18:00', 6);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (7, '餃子の王将', 'gyoza_osho.jpg', '手作り餃子が自慢の中華料理店。', 600, 1200, 35, '461-0002', '愛知県名古屋市東区泉2丁目', '052-789-0123', '水曜日', '11:00', '17:00', 7);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (8, 'ハンバーガーキング', 'burger_king.jpg', 'ボリューム満点のハンバーガー専門店。', 800, 1500, 25, '450-0004', '愛知県名古屋市中村区名駅4丁目', '052-890-1234', '水曜日', '12:00', '22:00', 8);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (9, 'うどん丸亀製麺', 'udon_marukame.jpg', '讃岐うどんが楽しめる人気店。', 500, 1000, 30, '460-0004', '愛知県名古屋市中区栄4丁目', '052-901-2345', '水曜日', '11:00', '21:00', 9);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (10, '焼肉牛角', 'yakiniku_gyukaku.jpg', 'リーズナブルに楽しめる焼肉チェーン。', 1000, 3000, 50, '450-0005', '愛知県名古屋市中村区名駅5丁目', '052-012-3456', '水曜日', '11:00', '23:00', 10);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (11, '寿司三昧', 'sushi_zanmai.jpg', '新鮮なネタが揃う回転寿司店。', 800, 2000, 40, '460-0005', '愛知県名古屋市中区栄5丁目', '052-123-4568', '水曜日', '13:00', '23:00', 11);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (12, '串カツ田中', 'kushikatsu_tanaka.jpg', 'サクサクの串カツが自慢のお店。', 500, 1500, 30, '461-0003', '愛知県名古屋市東区葵3丁目', '052-234-5679', '水曜日', '10:30', '19:00', 12);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (13, 'たこ焼き道場', 'takoyaki_dojo.jpg', '本場大阪の味を名古屋で楽しめるたこ焼き店。', 600, 1200, 20, '460-0006', '愛知県名古屋市中区錦6丁目', '052-345-6780', '水曜日', '10:00', '19:00', 6);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (14, '焼きそば屋', 'yakisoba_ya.jpg', '特製ソースが決め手の焼きそば専門店。', 500, 1000, 25, '450-0006', '愛知県名古屋市中村区名駅6丁目', '052-456-7891', '水曜日', '11:00', '20:00', 13);
INSERT IGNORE INTO restaurants (id, name, image_name, description, price_range_lower, price_range_upper, capacity, postal_code, address, phone_number, regular_holidays, opening_time, closing_time, category_id)
VALUES (15, 'おでん屋', 'oden_ya.jpg', '冬にぴったりのあったかおでん屋さん。', 600, 1300, 20, '460-0007', '愛知県名古屋市中区栄7丁目', '052-567-8902', '水曜日', '11:00', '21:00', 14);

-- rolesテーブル
INSERT IGNORE INTO roles (id, name) VALUES (1, 'ROLE_GENERAL');
INSERT IGNORE INTO roles (id, name) VALUES (2, 'ROLE_PAID');
INSERT IGNORE INTO roles (id, name) VALUES (3, 'ROLE_ADMIN');

-- usersテーブル
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (1, '山田 太郎', 'ヤマダ タロウ', 'yamada.taro@example.com', 1234567890123456, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (2, '佐藤 花子', 'サトウ ハナコ', 'sato.hanako@example.com', 2345678901234567, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (3, '鈴木 一郎', 'スズキ イチロウ', 'suzuki.ichiro@example.com', 3456789012345678, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (4, '高橋 次郎', 'タカハシ ジロウ', 'takahashi.jiro@example.com', 4567890123456789, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (5, '田中 三郎', 'タナカ サブロウ', 'tanaka.saburo@example.com', 5678901234567890, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (6, '渡辺 四郎', 'ワタナベ シロウ', 'watanabe.shiro@example.com', 6789012345678901, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (7, '伊藤 五郎', 'イトウ ゴロウ', 'ito.goro@example.com', 7890123456789012, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (8, '中村 六郎', 'ナカムラ ロクロウ', 'nakamura.rokuro@example.com', 8901234567890123, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (9, '小林 七子', 'コバヤシ ナナコ', 'kobayashi.nanako@example.com', 9012345678901234, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (10, '加藤 八郎', 'カトウ ハチロウ', 'kato.hachiro@example.com', 1234567890123457, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (11, '吉田 九郎', 'ヨシダ クロウ', 'yoshida.kuro@example.com', 2345678901234568, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (12, '山本 十郎', 'ヤマモト ジュウロウ', 'yamamoto.juro@example.com', 3456789012345679, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (13, '小川 十一郎', 'オガワ ジュウイチロウ', 'ogawa.juichiro@example.com', 4567890123456780, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (14, '森田 十二子', 'モリタ ジュウニコ', 'morita.juniko@example.com', 5678901234567891, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (15, '松本 十三郎', 'マツモト ジュウサブロウ', 'matsumoto.jusaburo@example.com', 6789012345678902, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (16, '中田 十四郎', 'ナカダ ジュウシロウ', 'nakada.jushiro@example.com', 7890123456789013, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (17, '島田 十五郎', 'シマダ ジュウゴロウ', 'shimada.jugoro@example.com', 8901234567890124, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (18, '小泉 十六子', 'コイズミ ジュウロクコ', 'koizumi.jurokuko@example.com', 9012345678901235, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (19, '村上 十七郎', 'ムラカミ ジュウシチロウ', 'murakami.jushichiro@example.com', 1234567890123458, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, TRUE);
INSERT IGNORE INTO users (id, name, furigana, email, credit_card_number, password, role_id, enabled) VALUES (20, '木村 十八子', 'キムラ ジュウハチコ', 'kimura.juhachiko@example.com', 2345678901234569, '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, TRUE);