-- liquibase formatted sql

-- changeset luochen:2018121701
CREATE TABLE test (
  id         INT PRIMARY KEY AUTO_INCREMENT,
  name       VARCHAR(64) NOT NULL UNIQUE
  COMMENT '姓名',
  sex        CHAR(1) COMMENT '性别，0：男，1：女',
  age        INT COMMENT '年龄',
  createTime BIGINT COMMENT '创建时间'
)
  ENGINE = InnoDB
  COMMENT '测试';

-- changeset luochen:2018121702
ALTER TABLE test
  DROP INDEX name;
ALTER TABLE test
  ADD COLUMN testId VARCHAR(32) NOT NULL UNIQUE
COMMENT '唯一标识';