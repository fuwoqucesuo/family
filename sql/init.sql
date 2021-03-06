CREATE TABLE bill
(
  id         INT AUTO_INCREMENT
    PRIMARY KEY,
  name       VARCHAR(50)     NOT NULL
  COMMENT '事项',
  type       INT             NOT NULL
  COMMENT '种类	',
  money      FLOAT           NOT NULL
  COMMENT '金额',
  balance    INT DEFAULT '0' NOT NULL,
  member     INT             NOT NULL
  COMMENT '经手成员
	',
  recordtime DATETIME        NOT NULL
  COMMENT '经手时间',
  comment    VARCHAR(200)    NULL
  COMMENT '事项说明'
)
  COMMENT '账单'
  ENGINE = InnoDB;

CREATE TABLE billtype
(
  id      INT AUTO_INCREMENT
    PRIMARY KEY,
  name    VARCHAR(50)  NOT NULL,
  comment VARCHAR(200) NULL
)
  COMMENT '账单类型'
  ENGINE = InnoDB;

CREATE TABLE familymember
(
  id       INT AUTO_INCREMENT
    PRIMARY KEY,
  account  VARCHAR(50)                                  NOT NULL
  COMMENT '帐号',
  name     VARCHAR(50)                                  NOT NULL
  COMMENT '姓名',
  password VARCHAR(100)                                 NOT NULL
  COMMENT '密码',
  mobile   VARCHAR(20)                                  NULL
  COMMENT '手机号码',
  email    VARCHAR(100)                                 NULL
  COMMENT '邮箱',
  qq       VARCHAR(20)                                  NULL
  COMMENT 'QQ号码',
  creator  VARCHAR(50) DEFAULT 'washmore'               NULL,
  creatAt  DATETIME                                     NULL,
  updater  VARCHAR(50) DEFAULT 'washmore'               NULL,
  updateAt DATETIME                                     NULL,
  image    VARCHAR(200) DEFAULT '@/assets/touxiang.png' NULL,
  CONSTRAINT FamilyMember_account_uindex
  UNIQUE (account)
)
  COMMENT '家庭成员'
  ENGINE = InnoDB;

INSERT INTO family.billtype (id, name, comment) VALUES (1, '衣', NULL);
INSERT INTO family.billtype (id, name, comment) VALUES (2, '食', NULL);
INSERT INTO family.billtype (id, name, comment) VALUES (3, '住', NULL);
INSERT INTO family.billtype (id, name, comment) VALUES (4, '行', NULL);

INSERT INTO family.familymember (id, account, name, password, mobile, email, qq, creator, creatAt, updater, updateAt, image)
VALUES (1, 'admin', '密码123456', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        'https://avatars2.githubusercontent.com/u/13030698?s=460&v=4');