-- create user
create user aitech@'%' identified by '****';
grant all privileges on codezero.* to aitech@'%'; # 모든 테이블에 대한 권한