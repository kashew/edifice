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
-- Data for Name: scheduled_callbacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.scheduled_callbacks (agent_id, customer_id, callback, id) VALUES (1, 3, '2021-05-01 16:00:00', 1);
INSERT INTO public.scheduled_callbacks (agent_id, customer_id, callback, id) VALUES (2, 2, '2021-05-01 16:30:00', 2);
INSERT INTO public.scheduled_callbacks (agent_id, customer_id, callback, id) VALUES (3, 1, '2021-05-01 17:30:00', 3);


--
-- Name: scheduled_callbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scheduled_callbacks_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

