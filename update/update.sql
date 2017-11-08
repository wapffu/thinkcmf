-- 2017-10-11 22:19 修复用户生日早于1970年报错
ALTER TABLE `cmf_user` CHANGE `birthday` `birthday` INT NOT NULL DEFAULT '0' COMMENT '生日';

-- 2017-10-16 21:57 增加余额字段
ALTER TABLE `cmf_user` ADD `balance` DECIMAL(10,2) NOT NULL DEFAULT '0' COMMENT '余额' AFTER `coin`;

INSERT INTO `cmf_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`)
VALUES
	(NULL , 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
