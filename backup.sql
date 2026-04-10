--
-- PostgreSQL database dump
--

\restrict Tdex7btekBNL28zHhvc1e4gOm6eV0Erl5zfSw3Gedt1qtSVfhNX3HlEXMGosp0T

-- Dumped from database version 17.9
-- Dumped by pg_dump version 17.9

-- Started on 2026-04-10 21:53:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16536)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_id integer NOT NULL,
    name character varying(50),
    department character varying(50),
    salary integer,
    age integer,
    joining_date date,
    city character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16535)
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_emp_id_seq OWNER TO postgres;

--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 217
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_emp_id_seq OWNED BY public.employees.emp_id;


--
-- TOC entry 4742 (class 2604 OID 16539)
-- Name: employees emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN emp_id SET DEFAULT nextval('public.employees_emp_id_seq'::regclass);


--
-- TOC entry 4891 (class 0 OID 16536)
-- Dependencies: 218
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (emp_id, name, department, salary, age, joining_date, city) FROM stdin;
1	Rohan	IT	72000	23	2023-04-12	Pune
2	Vikram	HR	38000	26	2022-02-18	Mumbai
3	Kavya	Finance	82000	29	2021-03-25	Delhi
4	Siddharth	IT	47000	24	2023-08-10	Bangalore
5	Pooja	HR	32000	22	2020-06-05	\N
6	Arjun	Finance	91000	31	2019-10-15	Hyderabad
7	Meera	IT	59000	27	2022-11-20	Pune
8	Nikhil	Marketing	43000	28	2021-07-09	Mumbai
9	Isha	Marketing	36000	23	2023-01-30	Delhi
10	Dev	IT	78000	30	2020-09-14	\N
\.


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 217
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 10, true);


--
-- TOC entry 4744 (class 2606 OID 16541)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


-- Completed on 2026-04-10 21:53:10

--
-- PostgreSQL database dump complete
--

\unrestrict Tdex7btekBNL28zHhvc1e4gOm6eV0Erl5zfSw3Gedt1qtSVfhNX3HlEXMGosp0T

