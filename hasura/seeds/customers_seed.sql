--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (first_name, last_name, uuid, id, email, phone_number) VALUES ('John', 'Doe', '72c78650-4389-4df7-b1e5-a8e5483d8f9f', 1, 'john.doe@fakedomain.biz', '5555551111');
INSERT INTO public.customers (first_name, last_name, uuid, id, email, phone_number) VALUES ('Robert', 'Jones', 'd4bdba74-ea3e-4950-90d8-b0ebdb1ead8a', 2, 'robert.jones@fakeaddress.net', '5555551112');
INSERT INTO public.customers (first_name, last_name, uuid, id, email, phone_number) VALUES ('Jill', 'Anderson', '2bccb92a-737b-4ff6-a118-4929f50bf377', 3, 'jill.anderson@makingitup.com', '5555551113');


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

