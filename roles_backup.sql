--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "MT_Admin";
ALTER ROLE "MT_Admin" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mLb8oztxjtVyfJ3PKXCgGg==$fCSASNVW6M0tBitZfyMu/CvBzAYoWrXKtwk5WXItBUk=:TUWwvavg9/1azRDmoo1hOb63Vn0OTqDfYY5m4dBSC78=';

--
-- User Configurations
--






--
-- PostgreSQL database cluster dump complete
--

