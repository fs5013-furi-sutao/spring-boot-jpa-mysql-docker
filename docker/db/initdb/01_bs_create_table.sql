USE bookshop;

SET CHARACTER_SET_CLIENT = utf8;
SET CHARACTER_SET_CONNECTION = utf8mb4;

DROP TABLE IF EXISTS events;

CREATE TABLE events (
  id int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  description varchar(255) NOT NULL COMMENT '説明',
  published tinyint(1) NOT NULL COMMENT '公開済',
  title varchar(255) NOT NULL COMMENT 'タイトル',
  PRIMARY KEY (id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='イベント'
;

COMMIT;
