CREATE ROLE redmine LOGIN ENCRYPTED PASSWORD 'my_password' NOINHERIT VALID UNTIL 'infinity';
-- CREATE DATABASE redmine WITH ENCODING='UTF8' OWNER=redmine;
CREATE DATABASE redmine_test WITH ENCODING='UTF8' OWNER=redmine;
