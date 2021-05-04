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
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.agents (id, uuid, first_name, last_name) VALUES (2, '5a57d793-b8aa-4ec0-8622-55b9c8af20f0', 'Adam', 'Lambert');
INSERT INTO public.agents (id, uuid, first_name, last_name) VALUES (3, '99259e2f-c4e5-4550-b329-15de46e58227', 'Ashley', 'Berger');
INSERT INTO public.agents (id, uuid, first_name, last_name) VALUES (1, '4429a83f-34c3-4c6c-afb9-1130a19a6efa', 'Amelia', 'Appleseed');


--
-- Name: agents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agents_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

