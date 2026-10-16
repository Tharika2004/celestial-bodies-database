--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(100),
    galaxy_types integer NOT NULL,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    distance_from_earth numeric(10,2) NOT NULL
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
    name character varying(100),
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT true,
    age_in_millions_of_years integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    planet_types text NOT NULL,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT true,
    distance_from_earth numeric(10,2) NOT NULL,
    star_id integer
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
    name character varying(100),
    description text,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(10,2),
    galaxy_id integer NOT NULL
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
-- Name: tharika; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tharika (
    tharika_id integer NOT NULL,
    name character varying(100),
    is_student boolean NOT NULL
);


ALTER TABLE public.tharika OWNER TO freecodecamp;

--
-- Name: tharika_tharika_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tharika_tharika_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tharika_tharika_id_seq OWNER TO freecodecamp;

--
-- Name: tharika_tharika_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tharika_tharika_id_seq OWNED BY public.tharika.tharika_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: tharika tharika_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tharika ALTER COLUMN tharika_id SET DEFAULT nextval('public.tharika_tharika_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'earth', 1, 4545, 'a planet that support life', true, 0.00);
INSERT INTO public.galaxy VALUES (2, 'mars', 2, 3456, 'a rocky planet', false, 225.78);
INSERT INTO public.galaxy VALUES (3, 'milkyway', 3, 345678, 'contain our soolor system', false, 8765432.34);
INSERT INTO public.galaxy VALUES (4, 'sun', 4, 45666, 'a star at center of our solor system', false, 8745.23);
INSERT INTO public.galaxy VALUES (5, 'jupiter', 8, 23456, 'largest planet in our solor system', false, 67584.45);
INSERT INTO public.galaxy VALUES (6, 'andromeda', 7, 5647387, 'nearby galaxy', false, 5653.98);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, true, 234, 1);
INSERT INTO public.moon VALUES (11, 'phobos', false, true, 3454, 2);
INSERT INTO public.moon VALUES (12, 'deimos', false, true, 765, 3);
INSERT INTO public.moon VALUES (13, 'Io', false, true, 765, 4);
INSERT INTO public.moon VALUES (14, 'europa', false, true, 876, 5);
INSERT INTO public.moon VALUES (15, 'ganymede', false, true, 987, 6);
INSERT INTO public.moon VALUES (16, 'casllisto', false, true, 985, 7);
INSERT INTO public.moon VALUES (17, 'titan', false, true, 456, 8);
INSERT INTO public.moon VALUES (18, 'enceladus', false, true, 983, 9);
INSERT INTO public.moon VALUES (19, 'mimas', false, true, 567, 10);
INSERT INTO public.moon VALUES (20, 'tethys', false, true, 764, 11);
INSERT INTO public.moon VALUES (21, 'dione', false, true, 765, 12);
INSERT INTO public.moon VALUES (22, 'rhea', false, true, 345, 1);
INSERT INTO public.moon VALUES (23, 'lapetus', false, true, 876, 2);
INSERT INTO public.moon VALUES (24, 'miranda', false, true, 567, 3);
INSERT INTO public.moon VALUES (25, 'ariel', false, true, 456, 4);
INSERT INTO public.moon VALUES (26, 'umbriel', false, true, 324, 5);
INSERT INTO public.moon VALUES (27, 'titania', false, true, 980, 6);
INSERT INTO public.moon VALUES (28, 'oberon', false, true, 345, 1);
INSERT INTO public.moon VALUES (29, 'triton', false, true, 234, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'terrestrial', true, true, 0.00, 1);
INSERT INTO public.planet VALUES (2, 'mercury', 'terrestrial', false, true, 3456.34, 2);
INSERT INTO public.planet VALUES (3, 'venus', 'terrestrial', false, true, 35676.34, 3);
INSERT INTO public.planet VALUES (4, 'mars', 'terrestrial', false, true, 87656.34, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', 'gas gaint', false, true, 3456.98, 5);
INSERT INTO public.planet VALUES (6, 'saturn', 'gas gaint', false, true, 3464.87, 6);
INSERT INTO public.planet VALUES (7, 'uranus', 'gas gaint', false, true, 3456.74, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 'gas gaint', false, true, 7654.65, 1);
INSERT INTO public.planet VALUES (9, 'kepler-22b', 'gas gaint', false, true, 56678.98, 1);
INSERT INTO public.planet VALUES (10, 'proxima centanuei b', 'exoplanet', false, true, 54637.87, 2);
INSERT INTO public.planet VALUES (11, '51 pegasi b', 'hot jupiter', false, true, 9876.98, 1);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 'hot jupiter', false, true, 76543.34, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'solor system star', 4563, 3456.45, 1);
INSERT INTO public.star VALUES (2, 'sirius', 'brightest star', 3456, 23456.53, 2);
INSERT INTO public.star VALUES (3, 'proxima', 'closest star to sun', 5674, 3456.98, 3);
INSERT INTO public.star VALUES (4, 'betelgeuse', 'red supergaint star', 4563, 3456.45, 4);
INSERT INTO public.star VALUES (5, 'vega', 'bright lyra constellation star', 5456, 87456.53, 5);
INSERT INTO public.star VALUES (6, 'polaris', 'the north star', 7674, 37658.00, 6);


--
-- Data for Name: tharika; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tharika VALUES (1, 'freecodecamp', false);
INSERT INTO public.tharika VALUES (2, 'leetcode', false);
INSERT INTO public.tharika VALUES (3, 'hackerrank', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: tharika_tharika_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tharika_tharika_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: tharika tharika_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tharika
    ADD CONSTRAINT tharika_name_key UNIQUE (name);


--
-- Name: tharika tharika_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tharika
    ADD CONSTRAINT tharika_pkey PRIMARY KEY (tharika_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

