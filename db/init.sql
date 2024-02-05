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
-- Name: app_board_board_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_board_board_id_seq1', 36, true);


--
-- Name: app_rating_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_rating_rating_id_seq', 36, true);


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

