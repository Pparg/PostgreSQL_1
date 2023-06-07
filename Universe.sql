--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    has_life boolean,
    age_in_millions_of_years numeric,
    test2 integer,
    galaxy_test integer DEFAULT 1 NOT NULL,
    text text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    distance_to_own_star integer,
    planet_id integer,
    test1 integer DEFAULT 0 NOT NULL,
    test2 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebulose; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulose (
    name character varying(60) NOT NULL,
    distance_to_earth integer NOT NULL,
    test1 integer NOT NULL,
    nebulose_id integer NOT NULL
);


ALTER TABLE public.nebulose OWNER TO freecodecamp;

--
-- Name: nebulose_nebulose_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulose_nebulose_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulose_nebulose_id_seq OWNER TO freecodecamp;

--
-- Name: nebulose_nebulose_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulose_nebulose_id_seq OWNED BY public.nebulose.nebulose_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    has_life boolean,
    star_id integer,
    test1 integer DEFAULT 1 NOT NULL,
    test2 integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    distant_from_earth integer,
    galaxy_id integer,
    test1 integer DEFAULT 1 NOT NULL,
    test2 integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebulose nebulose_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulose ALTER COLUMN nebulose_id SET DEFAULT nextval('public.nebulose_nebulose_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxia1', true, 10, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxia2', false, 11, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxia3', true, 12, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxia4', true, 13, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxia5', false, 14, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxia6', true, 15, NULL, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 1, 0, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 1, 0, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 1, 0, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 1, 2, 0, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 1, 2, 0, NULL);
INSERT INTO public.moon VALUES (6, 'moon1', 1, 2, 0, NULL);
INSERT INTO public.moon VALUES (7, 'moon6', 1, 3, 0, NULL);
INSERT INTO public.moon VALUES (8, 'moon6', 1, 4, 0, NULL);
INSERT INTO public.moon VALUES (9, 'moon7', 1, 6, 0, NULL);
INSERT INTO public.moon VALUES (10, 'moon8', 1, 6, 0, NULL);
INSERT INTO public.moon VALUES (11, 'moon9', 1, 6, 0, NULL);
INSERT INTO public.moon VALUES (12, 'moon10', 1, 6, 0, NULL);
INSERT INTO public.moon VALUES (13, 'moon11', 1, 6, 0, NULL);
INSERT INTO public.moon VALUES (14, 'moon12', 1, 8, 0, NULL);
INSERT INTO public.moon VALUES (15, 'moon13', 1, 9, 0, NULL);
INSERT INTO public.moon VALUES (16, 'moon14', 1, 10, 0, NULL);
INSERT INTO public.moon VALUES (17, 'moon15', 1, 10, 0, NULL);
INSERT INTO public.moon VALUES (18, 'moon16', 1, 10, 0, NULL);
INSERT INTO public.moon VALUES (19, 'moon17', 1, 11, 0, NULL);
INSERT INTO public.moon VALUES (20, 'moon18', 1, 11, 0, NULL);
INSERT INTO public.moon VALUES (21, 'moon19', 1, 11, 0, NULL);
INSERT INTO public.moon VALUES (22, 'moon20', 1, 12, 0, NULL);


--
-- Data for Name: nebulose; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulose VALUES ('nebulose1', 10000, 1, 4);
INSERT INTO public.nebulose VALUES ('nebulose2', 1000, 1, 5);
INSERT INTO public.nebulose VALUES ('nebulose3', 20000, 1, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', false, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', false, 1, 1, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', false, 2, 1, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', false, 2, 1, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', false, 3, 1, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', false, 3, 1, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', false, 4, 1, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', false, 4, 1, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', true, 5, 1, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', false, 5, 1, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', false, 6, 1, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', false, 6, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, 2, 1, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, 3, 1, NULL);
INSERT INTO public.star VALUES (4, 'star4', 4, 4, 1, NULL);
INSERT INTO public.star VALUES (5, 'star5', 5, 5, 1, NULL);
INSERT INTO public.star VALUES (6, 'star6', 6, 6, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: nebulose_nebulose_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulose_nebulose_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_test2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_test2_key UNIQUE (test2);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_test2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_test2_key UNIQUE (test2);


--
-- Name: nebulose nebulose_distance_to_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulose
    ADD CONSTRAINT nebulose_distance_to_earth_key UNIQUE (distance_to_earth);


--
-- Name: nebulose nebulose_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulose
    ADD CONSTRAINT nebulose_pkey PRIMARY KEY (nebulose_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_test2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_test2_key UNIQUE (test2);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_test2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_test2_key UNIQUE (test2);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
