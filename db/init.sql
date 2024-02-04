--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

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
-- Name: railway; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE railway WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE railway OWNER TO postgres;

\connect railway

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_board (
    board_id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    overall_score double precision NOT NULL,
    score_1 integer NOT NULL,
    score_2 integer NOT NULL,
    score_3 integer NOT NULL,
    score_4 integer NOT NULL,
    score_5 integer NOT NULL,
    creator_id integer NOT NULL,
    creator_name character varying(50) NOT NULL
);


ALTER TABLE public.app_board OWNER TO postgres;

--
-- Name: app_board_board_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_board_board_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.app_board_board_id_seq1 OWNER TO postgres;

--
-- Name: app_board_board_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_board_board_id_seq1 OWNED BY public.app_board.board_id;


--
-- Name: app_rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_rating (
    rating_id integer NOT NULL,
    description text,
    score integer NOT NULL,
    board_id integer NOT NULL,
    creator_id integer NOT NULL,
    creator_name character varying(50) NOT NULL
);


ALTER TABLE public.app_rating OWNER TO postgres;

--
-- Name: app_rating_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_rating_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.app_rating_rating_id_seq OWNER TO postgres;

--
-- Name: app_rating_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_rating_rating_id_seq OWNED BY public.app_rating.rating_id;


--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_user (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    is_admin boolean NOT NULL
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- Name: app_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.app_user_id_seq OWNER TO postgres;

--
-- Name: app_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_user_id_seq OWNED BY public.app_user.id;


--
-- Name: app_board board_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_board ALTER COLUMN board_id SET DEFAULT nextval('public.app_board_board_id_seq1'::regclass);


--
-- Name: app_rating rating_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_rating ALTER COLUMN rating_id SET DEFAULT nextval('public.app_rating_rating_id_seq'::regclass);


--
-- Name: app_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user ALTER COLUMN id SET DEFAULT nextval('public.app_user_id_seq'::regclass);


--
-- Data for Name: app_board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_board (board_id, title, description, overall_score, score_1, score_2, score_3, score_4, score_5, creator_id, creator_name) FROM stdin;
15	test58908	tteesst	0	0	0	0	0	0	6	wzy
16	67	tteesst	0	0	0	0	0	0	6	wzy
17	677	tteesst	0	0	0	0	0	0	6	wzy
18	6777	tteesst	0	0	0	0	0	0	6	wzy
19	67777	tteesst	0	0	0	0	0	0	6	wzy
21	sd	sd	0	0	0	0	0	0	6	wzy
14	test5890	tteesst	0	0	0	0	0	0	6	wzy
10	test	tteesst	0	0	0	0	0	0	6	wzy
24	add1	add	0	0	0	0	0	0	7	test
20	555	tteesst	NaN	0	0	0	0	0	6	wzy
32	81	test1	0	0	0	0	0	0	9	mia
36	test 1234123	1	0	0	0	0	0	0	9	mia
11	test5	tteesst	5	0	0	0	0	1	6	wzy
8	test6	etc	3	0	1	0	1	0	7	test
13	test589	tteesst	3	0	0	1	0	0	6	wzy
23	1234	test	NaN	0	0	0	0	0	9	mia
25	1	1	0	0	0	0	0	0	9	mia
26	2	2	0	0	0	0	0	0	9	mia
27	3	3	0	0	0	0	0	0	9	mia
28	4	test	0	0	0	0	0	0	9	mia
29	5	test	0	0	0	0	0	0	9	mia
30	6	test	0	0	0	0	0	0	9	mia
31	7	test	0	0	0	0	0	0	9	mia
33	9	test	0	0	0	0	0	0	9	mia
34	10	1	0	0	0	0	0	0	9	mia
35	11	1	0	0	0	0	0	0	9	mia
22	2345	2345	4.5	0	0	0	1	1	9	mia
2	AdminModified New	des again	2.75	1	0	2	1	0	8	admin1
\.


--
-- Data for Name: app_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_rating (rating_id, description, score, board_id, creator_id, creator_name) FROM stdin;
1	modified	4	2	7	test
3	bad	1	2	8	admin1
9	123	4	8	9	mia
25	11	3	2	9	mia
8	123	4	22	9	mia
26	test	5	11	6	wzy
28	ceshi	2	8	10	fenshen
29	this is a test desc	3	13	6	wzy
30	this is a test desc. I need to come up with more words, really.	5	22	6	wzy
31	a test. a test. a test. a test. a test. a test. 	3	2	6	wzy
\.


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_user (id, name, password, is_admin) FROM stdin;
4	root	fb1292b37fc99b3211bd9c44e5f41169	f
5	hello	b269cb815865220ccd7911ffa82a3af4	f
6	wzy	537a6b35a94d3d56c56f73a003a32251	t
7	test	6c586d322824489150ddb41d9199ecfb	f
8	admin1	6c586d322824489150ddb41d9199ecfb	t
9	mia	493f8877c6006aaf450669a265c28e7d	f
10	fenshen	26385084586b4956a5d55df60aa2e1e9	f
\.


--
-- Name: app_board_board_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_board_board_id_seq1', 36, true);


--
-- Name: app_rating_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_rating_rating_id_seq', 31, true);


--
-- Name: app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_user_id_seq', 10, true);


--
-- Name: app_board app_board_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_board
    ADD CONSTRAINT app_board_pkey1 PRIMARY KEY (board_id);


--
-- Name: app_board app_board_title_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_board
    ADD CONSTRAINT app_board_title_key1 UNIQUE (title);


--
-- Name: app_rating app_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_rating
    ADD CONSTRAINT app_rating_pkey PRIMARY KEY (rating_id);


--
-- Name: app_user app_user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT app_user_pk PRIMARY KEY (id);


--
-- Name: app_user_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX app_user_name_uindex ON public.app_user USING btree (name);


--
-- Name: app_rating board; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_rating
    ADD CONSTRAINT board FOREIGN KEY (board_id) REFERENCES public.app_board(board_id);


--
-- Name: app_board creator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_board
    ADD CONSTRAINT creator FOREIGN KEY (creator_id) REFERENCES public.app_user(id);


--
-- Name: app_rating creator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_rating
    ADD CONSTRAINT creator FOREIGN KEY (creator_id) REFERENCES public.app_user(id);


--
-- PostgreSQL database dump complete
--

