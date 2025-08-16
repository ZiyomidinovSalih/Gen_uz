PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE debts (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            employee_name TEXT NOT NULL,
            employee_chat_id INTEGER NOT NULL,
            task_id INTEGER,
            amount REAL NOT NULL,
            reason TEXT NOT NULL,
            payment_date TEXT NOT NULL,
            created_at TEXT DEFAULT CURRENT_TIMESTAMP,
            status TEXT DEFAULT 'unpaid',
            FOREIGN KEY (task_id) REFERENCES tasks (id)
        );
INSERT INTO debts VALUES(3,'bilmima bilmima',0,8,1000992.0,'yeis','09.07.2025','2025-08-04 12:29:43','paid');
INSERT INTO debts VALUES(4,'💸 Qarzga qo''yildi',0,35,0.0,'000000','07,09,2002','2025-08-06 14:03:43','unpaid');
CREATE TABLE messages (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            from_chat_id INTEGER NOT NULL,
            to_chat_id INTEGER NOT NULL,
            message_text TEXT NOT NULL,
            message_type TEXT DEFAULT 'general',
            task_id INTEGER,
            created_at TEXT DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (task_id) REFERENCES tasks (id)
        );
INSERT INTO messages VALUES(1,7792775986,7792775986,'Yangi mijoz suhbati boshlandi','customer_start',NULL,'2025-08-04 07:44:53');
INSERT INTO messages VALUES(2,7792775986,7792775986,'jim','customer_message',NULL,'2025-08-04 07:44:59');
INSERT INTO messages VALUES(3,826129625,7792775986,'Yangi mijoz suhbati boshlandi','customer_start',NULL,'2025-08-04 07:46:30');
INSERT INTO messages VALUES(4,826129625,7792775986,'salom','customer_message',NULL,'2025-08-04 07:46:39');
INSERT INTO messages VALUES(5,7792775986,7792775986,'Yangi mijoz suhbati boshlandi','customer_start',NULL,'2025-08-04 07:56:32');
INSERT INTO messages VALUES(6,826129625,7792775986,'Vazifa #1 boshlandi','task_started',1,'2025-08-04 08:15:06');
INSERT INTO messages VALUES(7,826129625,7792775986,'Vazifa #2 boshlandi','task_started',2,'2025-08-04 08:32:38');
INSERT INTO messages VALUES(8,826129625,7792775986,'Vazifa #3 boshlandi','task_started',3,'2025-08-04 08:44:34');
INSERT INTO messages VALUES(9,826129625,7792775986,'Vazifa #4 boshlandi','task_started',4,'2025-08-04 08:55:31');
INSERT INTO messages VALUES(10,7442895800,7792775986,'Vazifa #5 boshlandi','task_started',5,'2025-08-04 09:00:16');
INSERT INTO messages VALUES(11,7792775986,7792775986,'Vazifa #7 boshlandi','task_started',7,'2025-08-04 09:49:09');
INSERT INTO messages VALUES(12,7792775986,7792775986,'Vazifa #8 boshlandi','task_started',8,'2025-08-04 12:29:06');
INSERT INTO messages VALUES(13,7792775986,7792775986,'Vazifa #9 boshlandi','task_started',9,'2025-08-04 12:33:17');
INSERT INTO messages VALUES(14,7792775986,7792775986,'Vazifa #11 boshlandi','task_started',11,'2025-08-05 05:22:03');
INSERT INTO messages VALUES(15,7442895800,7792775986,'Vazifa #10 boshlandi','task_started',10,'2025-08-05 05:24:02');
INSERT INTO messages VALUES(16,7442895800,7792775986,'Vazifa #13 boshlandi','task_started',13,'2025-08-05 05:26:43');
INSERT INTO messages VALUES(17,7792775986,7792775986,'Vazifa #14 boshlandi','task_started',14,'2025-08-05 05:31:04');
INSERT INTO messages VALUES(18,7442895800,7792775986,'Vazifa #12 boshlandi','task_started',12,'2025-08-05 05:32:58');
INSERT INTO messages VALUES(19,7792775986,7792775986,'Vazifa #15 boshlandi','task_started',15,'2025-08-05 05:36:00');
INSERT INTO messages VALUES(20,7792775986,7792775986,'Vazifa #17 boshlandi','task_started',17,'2025-08-05 06:53:31');
INSERT INTO messages VALUES(21,7442895800,7792775986,'Vazifa #16 boshlandi','task_started',16,'2025-08-05 06:53:37');
INSERT INTO messages VALUES(22,826129625,7792775986,'Vazifa #19 boshlandi','task_started',19,'2025-08-05 11:40:11');
INSERT INTO messages VALUES(23,7792775986,7792775986,'Vazifa #24 boshlandi','task_started',24,'2025-08-05 11:56:43');
INSERT INTO messages VALUES(24,7792775986,7792775986,'Vazifa #23 boshlandi','task_started',23,'2025-08-05 11:57:47');
INSERT INTO messages VALUES(25,7792775986,7792775986,'Vazifa #34 boshlandi','task_started',34,'2025-08-06 14:00:34');
INSERT INTO messages VALUES(26,7792775986,7792775986,'Vazifa #35 boshlandi','task_started',35,'2025-08-06 14:03:10');
INSERT INTO messages VALUES(27,7792775986,7792775986,'Vazifa #36 boshlandi','task_started',36,'2025-08-06 14:06:35');
CREATE TABLE user_states (
            chat_id INTEGER PRIMARY KEY,
            state TEXT NOT NULL,
            state_data TEXT,
            updated_at TEXT DEFAULT CURRENT_TIMESTAMP
        );
INSERT INTO user_states VALUES(7062066366,'admin_login',NULL,'2025-08-04T07:33:14.103410');
CREATE TABLE IF NOT EXISTS "tasks" (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                description TEXT NOT NULL,
                location_lat REAL,
                location_lon REAL,
                location_address TEXT,
                payment_amount REAL DEFAULT NULL,
                assigned_to TEXT NOT NULL,
                assigned_by INTEGER NOT NULL,
                status TEXT DEFAULT 'pending',
                created_at TEXT DEFAULT CURRENT_TIMESTAMP,
                started_at TEXT,
                completed_at TEXT,
                completion_report TEXT,
                completion_media TEXT,
                received_amount REAL DEFAULT 0
            );
INSERT INTO tasks VALUES(1,'ggg',41.24067200000000355,69.21361500000000432,NULL,NULL,'Ozoda',7792775986,'completed','2025-08-04 08:04:59','2025-08-04T08:15:05.748372','2025-08-04T08:28:33.476146','uiii','media/photo_20250804_082709.jpg',102082.0);
INSERT INTO tasks VALUES(2,'oqat qil',41.24065900000000084,69.21365400000000534,NULL,NULL,'Ozoda',7792775986,'completed','2025-08-04 08:32:27','2025-08-04T08:32:38.494612','2025-08-04T08:33:47.887017','qildm','media/photo_20250804_083301.jpg',0.0);
INSERT INTO tasks VALUES(3,'Nima qivosan',41.24037400000000276,69.21418500000000051,NULL,NULL,'Ozoda',7792775986,'completed','2025-08-04 08:44:09','2025-08-04T08:44:33.715985','2025-08-04T08:45:22.163079','SLKNFASLKNFLKNAS','media/photo_20250804_084514.jpg',20123121.0);
INSERT INTO tasks VALUES(4,'Nimagap',41.24037400000000276,69.21418500000000051,NULL,NULL,'Ozoda',7792775986,'completed','2025-08-04 08:55:22','2025-08-04T08:55:30.775507','2025-08-04T08:56:03.719626','MMMM','media/photo_20250804_085556.jpg',4444.0);
INSERT INTO tasks VALUES(5,'Test',41.24037400000000276,69.21418500000000051,NULL,NULL,'👨‍🔧 Kamol',7792775986,'completed','2025-08-04 08:58:55','2025-08-04T09:00:16.067114','2025-08-04T09:00:52.336066','\asdfghj','media/photo_20250804_090031.jpg',22222.0);
INSERT INTO tasks VALUES(6,'gggg',41.24037400000000276,69.21418500000000051,NULL,NULL,'👨‍🔧 Kamol',7792775986,'pending','2025-08-04 09:46:46',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(7,'shhsha',41.24037400000000276,69.21418500000000051,NULL,NULL,'🎱 Dilshod',7792775986,'completed','2025-08-04 09:48:57','2025-08-04T09:49:09.147980','2025-08-04T09:49:41.264908','hshsh','media/photo_20250804_094935.jpg',8181.0);
INSERT INTO tasks VALUES(8,'g',41.24037400000000276,69.21418500000000051,NULL,NULL,'Salih',7792775986,'completed','2025-08-04 12:28:33','2025-08-04T12:29:05.370421','2025-08-04T12:29:43.310218','hd','media/photo_20250804_122920.jpg',0.0);
INSERT INTO tasks VALUES(9,'y',41.24037400000000276,69.21418500000000051,NULL,NULL,'Salih',7792775986,'completed','2025-08-04 12:32:58','2025-08-04T12:33:16.585490','2025-08-04T12:33:50.132028','y','media/photo_20250804_123341.jpg',1246884.0);
INSERT INTO tasks VALUES(10,'test',41.24076900000000023,69.21327599999999335,NULL,NULL,'Kamol',7792775986,'completed','2025-08-05 05:20:42','2025-08-05T05:24:02.453945','2025-08-05T05:25:42.369911','Tugadiii','media/photo_20250805_052529.jpg',788.0);
INSERT INTO tasks VALUES(11,'test',41.23994900000000286,69.21481900000000565,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 05:21:45','2025-08-05T05:22:02.692556','2025-08-05T05:22:45.129237','vazifa berish alo darajadq','media/photo_20250805_052235.jpg',123456.0);
INSERT INTO tasks VALUES(12,'test',41.24037400000000276,69.21418500000000051,NULL,NULL,'Kamol',7792775986,'in_progress','2025-08-05 05:25:27','2025-08-05T05:32:59.164400',NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(13,'test',41.23978400000000021,69.21483700000000283,NULL,NULL,'Kamol',7792775986,'in_progress','2025-08-05 05:26:19','2025-08-05T05:26:42.889360',NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(14,'test',41.24047000000000195,69.21358800000000144,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 05:30:55','2025-08-05T05:31:03.152849','2025-08-05T05:31:54.010118','baba','media/photo_20250805_053146.jpg',12222.0);
INSERT INTO tasks VALUES(15,'Salih test',41.24063999999999908,69.21350300000000288,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 05:35:52','2025-08-05T05:35:59.742830','2025-08-05T05:39:03.106597','ttt','media/photo_20250805_053857.jpg',666666.0);
INSERT INTO tasks VALUES(16,';',41.24025499999999767,69.21427699999999561,NULL,NULL,'Kamol',7792775986,'in_progress','2025-08-05 06:52:57','2025-08-05T06:53:37.072788',NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(17,'h',41.24037400000000276,69.21418500000000051,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 06:53:21','2025-08-05T06:53:31.041300','2025-08-05T06:53:50.409106','h','media/photo_20250805_065344.jpg',1245.0);
INSERT INTO tasks VALUES(18,'Bot toliq ishlavot',41.24077400000000181,69.2132090000000062,NULL,NULL,'Kamol',7792775986,'pending','2025-08-05 07:02:55',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(19,'bot toliq ishlavoti',41.24062299999999937,69.21318899999999986,NULL,NULL,'Ozoda',7792775986,'in_progress','2025-08-05 07:04:03','2025-08-05T11:40:10.754563',NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(20,'150 kwt padklyuchena',41.24066200000000037,69.2128150000000062,NULL,NULL,'Kamol',7792775986,'pending','2025-08-05 07:05:48',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(21,'test',41.24160200000000031,69.2139839999999964,NULL,NULL,'Kamol',7792775986,'pending','2025-08-05 07:13:27',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(22,'qaytadan deploy qiliw kere manimca',41.24066700000000196,69.21368200000000571,NULL,NULL,'Ozoda',7792775986,'pending','2025-08-05 11:54:20',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(23,'test',41.24066700000000196,69.21368200000000571,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 11:54:56','2025-08-05T11:57:46.304405','2025-08-05T11:58:16.130871','hgg','media/photo_20250805_115808.jpg',134678.0);
INSERT INTO tasks VALUES(24,'test',41.24051399999999746,69.21382400000000245,NULL,NULL,'Salih',7792775986,'completed','2025-08-05 11:56:32','2025-08-05T11:56:42.591773','2025-08-05T11:57:22.623929','test','media/photo_20250805_115708.jpg',765555.0);
INSERT INTO tasks VALUES(25,replace('+998 90-694-05-05\n+998 99-315-60-28\nNamangan 30 kw 06.08.25 ustanovka qiberish kere\n\n\nYana aniq lakatsiyani tel qib sorisiz','\n',char(10)),41.00336300000000022,71.67241300000000593,NULL,NULL,'Asomiddin',7792775986,'pending','2025-08-05 13:00:18',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(26,'test',41.33079899999999896,69.3133629999999954,NULL,NULL,'Kamol',7792775986,'pending','2025-08-05 14:51:04',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(27,'Test',41.31508300000000133,69.36956999999999596,NULL,NULL,'Ozoda',7792775986,'pending','2025-08-05 17:40:48',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(28,'test',41.31725699999999791,69.36457599999999957,NULL,NULL,'Ozoda',7792775986,'pending','2025-08-05 20:41:30',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(29,'+998 99-615-74-37 Denov Arn Power 250 kw.  Padklyucena',38.27192500000000309,67.89708799999999656,NULL,NULL,'Azimjon',7792775986,'pending','2025-08-06 12:41:29',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(30,'+998 99-615-74-37 Denov Arn Power 250 kw.  Padklyuchenya',38.27192500000000309,67.89708799999999656,NULL,NULL,'Azimjon',7792775986,'pending','2025-08-06 13:10:31',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(31,'+998930511111  zamer',41.27866000000000212,69.26457000000000619,NULL,NULL,'Fozil',7792775986,'pending','2025-08-06 13:18:32',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(32,'+998930511111',41.27866000000000212,69.26457000000000619,NULL,NULL,'Asomiddin',7792775986,'pending','2025-08-06 13:21:32',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(33,'+998 98 362 62 02 Zamer orginal shunga boras',41.31792200000000293,69.33729700000000662,NULL,NULL,'Fozil',7792775986,'pending','2025-08-06 13:23:22',NULL,NULL,NULL,NULL,0.0);
INSERT INTO tasks VALUES(34,'test',41.31580399999999998,69.37091900000000066,NULL,NULL,'Salih',7792775986,'completed','2025-08-06 14:00:24','2025-08-06T14:00:33.480923','2025-08-06T14:01:32.375969','test','media/photo_20250806_140125.jpg',12345.0);
INSERT INTO tasks VALUES(35,'test',41.31714900000000056,69.37079300000000615,NULL,NULL,'Salih',7792775986,'completed','2025-08-06 14:03:03','2025-08-06T14:03:10.119337','2025-08-06T14:03:43.395077','test','media/photo_20250806_140323.jpg',0.0);
INSERT INTO tasks VALUES(36,'test',41.31854700000000235,69.37273799999999824,NULL,NULL,'Salih',7792775986,'completed','2025-08-06 14:06:17','2025-08-06T14:06:34.570003','2025-08-06T14:07:00.600517','test','media/photo_20250806_140652.jpg',124578.0);
CREATE TABLE employee_locations (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            employee_name TEXT NOT NULL,
            employee_chat_id INTEGER NOT NULL,
            latitude REAL NOT NULL,
            longitude REAL NOT NULL,
            location_type TEXT DEFAULT 'manual',
            created_at TEXT DEFAULT CURRENT_TIMESTAMP,
            is_live INTEGER DEFAULT 0
        );
INSERT INTO employee_locations VALUES(1,'Ozoda',826129625,41.24022300000000029,69.21416499999999416,'requested','2025-08-04 08:14:46',0);
INSERT INTO employee_locations VALUES(2,'👨‍🔧 Kamol',7442895800,41.24035800000000051,69.2141289999999998,'requested','2025-08-04 08:59:11',0);
INSERT INTO employee_locations VALUES(3,'👨‍🔧 Kamol',7442895800,41.39308900000000336,69.34168800000000487,'requested','2025-08-04 09:04:12',0);
INSERT INTO employee_locations VALUES(4,'🎱 Dilshod',7792775986,41.24037400000000276,69.21418500000000051,'requested','2025-08-04 09:52:02',0);
INSERT INTO employee_locations VALUES(5,'🎱 Dilshod',7792775986,41.24037400000000276,69.21418500000000051,'requested','2025-08-04 09:57:19',0);
INSERT INTO employee_locations VALUES(6,'🎱 Dilshod',7792775986,41.24072600000000221,69.21304000000000656,'requested','2025-08-04 10:05:34',0);
INSERT INTO employee_locations VALUES(7,'🎱 Dilshod',7792775986,41.24037400000000276,69.21418500000000051,'requested','2025-08-04 10:09:45',0);
INSERT INTO employee_locations VALUES(8,'🎱 Dilshod',7792775986,41.24037400000000276,69.21418500000000051,'requested','2025-08-04 10:23:49',0);
CREATE TABLE customer_inquiries (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            customer_name TEXT NOT NULL,
            customer_phone TEXT,
            customer_username TEXT,
            chat_id INTEGER,
            inquiry_text TEXT NOT NULL,
            inquiry_type TEXT DEFAULT 'bot',
            location_lat REAL,
            location_lon REAL,
            location_address TEXT,
            status TEXT DEFAULT 'pending',
            admin_response TEXT,
            created_at TEXT DEFAULT CURRENT_TIMESTAMP,
            responded_at TEXT,
            source TEXT DEFAULT 'telegram'
        );
INSERT INTO customer_inquiries VALUES(1,'Test Mijoz','+998901234567','test@example.com',NULL,'Bu test so''rovi. Website dan yuborilgan so''rov.','website_request',NULL,NULL,NULL,'responded','Biz bilan boglaning','2025-08-05 02:41:52','2025-08-05 05:06:22','website');
INSERT INTO customer_inquiries VALUES(2,'Akmal Karimov','+998903456789','akmal@gmail.com',NULL,'Sizning xizmatlaringiz haqida batafsil ma''lumot olmoqchiman. Qanday yo''nalishlarda ishlaydigan va narxlar qanday?','website_request',NULL,NULL,'Tashkent, Chilonzor tumani','responded','biz biln boglaning','2025-08-05 05:04:41','2025-08-05 12:00:29','website');
INSERT INTO customer_inquiries VALUES(3,'Dilnoza Usmonova','+998907654321',NULL,NULL,'Ishga yollash bo''yicha murojaat qilmoqchiman. Qanday vakansiyalar mavjud?','website_request',NULL,NULL,NULL,'pending',NULL,'2025-08-05 05:04:47',NULL,'website');
INSERT INTO customer_inquiries VALUES(4,'Yangilash Test','+998901111111',NULL,NULL,'Bu yangilash tugmasini test qilish uchun yuborilgan so''rov.','website_request',NULL,NULL,NULL,'pending',NULL,'2025-08-05 05:07:45',NULL,'website');
INSERT INTO sqlite_sequence VALUES('messages',27);
INSERT INTO sqlite_sequence VALUES('tasks',36);
INSERT INTO sqlite_sequence VALUES('debts',4);
INSERT INTO sqlite_sequence VALUES('employee_locations',8);
INSERT INTO sqlite_sequence VALUES('customer_inquiries',4);
COMMIT;
