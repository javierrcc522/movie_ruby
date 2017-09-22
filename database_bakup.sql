--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: aaronrohrbacher
--

CREATE TABLE actors (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE actors OWNER TO aaronrohrbacher;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: aaronrohrbacher
--

CREATE SEQUENCE actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actors_id_seq OWNER TO aaronrohrbacher;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaronrohrbacher
--

ALTER SEQUENCE actors_id_seq OWNED BY actors.id;


--
-- Name: actors_movies; Type: TABLE; Schema: public; Owner: aaronrohrbacher
--

CREATE TABLE actors_movies (
    actor_id integer,
    movie_id integer
);


ALTER TABLE actors_movies OWNER TO aaronrohrbacher;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: aaronrohrbacher
--

CREATE TABLE movies (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE movies OWNER TO aaronrohrbacher;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: aaronrohrbacher
--

CREATE SEQUENCE movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movies_id_seq OWNER TO aaronrohrbacher;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaronrohrbacher
--

ALTER SEQUENCE movies_id_seq OWNED BY movies.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: aaronrohrbacher
--

ALTER TABLE ONLY actors ALTER COLUMN id SET DEFAULT nextval('actors_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: aaronrohrbacher
--

ALTER TABLE ONLY movies ALTER COLUMN id SET DEFAULT nextval('movies_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: aaronrohrbacher
--

COPY actors (id, name) FROM stdin;
1	jimmy
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaronrohrbacher
--

SELECT pg_catalog.setval('actors_id_seq', 1, true);


--
-- Data for Name: actors_movies; Type: TABLE DATA; Schema: public; Owner: aaronrohrbacher
--

COPY actors_movies (actor_id, movie_id) FROM stdin;
1	1
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: aaronrohrbacher
--

COPY movies (id, name) FROM stdin;
1	Movie
\.


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaronrohrbacher
--

SELECT pg_catalog.setval('movies_id_seq', 1, true);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: aaronrohrbacher
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: aaronrohrbacher
--

ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

