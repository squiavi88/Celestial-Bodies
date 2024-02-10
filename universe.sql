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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_number integer NOT NULL
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radious numeric NOT NULL,
    type character varying(50) NOT NULL,
    description text NOT NULL
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
    name character varying(50) NOT NULL,
    radious numeric NOT NULL,
    has_planet boolean NOT NULL,
    color character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL,
    radious numeric NOT NULL,
    has_life boolean NOT NULL,
    color character varying(50) NOT NULL,
    star_id integer,
    days_year_duration integer NOT NULL
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
    name character varying(50) NOT NULL,
    radious numeric NOT NULL,
    type character varying(50) NOT NULL,
    description text NOT NULL,
    galaxy_id integer
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
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


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
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'pegaso', 29);
INSERT INTO public.constelation VALUES (2, 'escorpio', 34);
INSERT INTO public.constelation VALUES (3, 'leo', 19);
INSERT INTO public.constelation VALUES (4, 'aries', 24);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy01', 3874.33, 'espiral', 'Las galaxias son concentraciones de estrellas, gas, polvo y materia oscura');
INSERT INTO public.galaxy VALUES (2, 'galax2', 76473.33, 'eliptica', 'Las galaxias son concentraciones de estrellas, gas, polvo y materia oscura');
INSERT INTO public.galaxy VALUES (3, 'galaxy03', 53.33, 'lenticular', 'Las galaxias son concentraciones de estrellas, gas, polvo materia oscura');
INSERT INTO public.galaxy VALUES (4, 'galaxy04', 4343.55, 'lenticular', 'Las galaxias son concentraciones de estrellas, gas, polvo materia oscura');
INSERT INTO public.galaxy VALUES (5, 'gala06', 454.55, 'eliptica', 'Las galaxias son concentraciones de estrellas, gas, polvo materia oscura');
INSERT INTO public.galaxy VALUES (6, 'gala05', 4532.43, 'espiral', 'Las galaxias son concentraciones de estrellas, gas, polvo materia oscura');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon01', 234.33, true, 'blanca', 1);
INSERT INTO public.moon VALUES (2, 'moon02', 12234.233, true, 'roja', 2);
INSERT INTO public.moon VALUES (3, 'moon03', 1223.33, true, 'rojo', 3);
INSERT INTO public.moon VALUES (4, 'moon04', 164.233, true, 'rojo', 4);
INSERT INTO public.moon VALUES (5, 'moon05', 834.233, true, 'blanca', 5);
INSERT INTO public.moon VALUES (11, 'moon06', 29834.33, true, 'blanca', 6);
INSERT INTO public.moon VALUES (12, 'moon07', 8934.233, true, 'roja', 13);
INSERT INTO public.moon VALUES (13, 'moon08', 1766.33, true, 'rojo', 14);
INSERT INTO public.moon VALUES (14, 'moon09', 1888.233, true, 'rojo', 15);
INSERT INTO public.moon VALUES (15, 'moon10', 99834.233, true, 'blanca', 16);
INSERT INTO public.moon VALUES (16, 'moon11', 2233.12, true, 'roja', 17);
INSERT INTO public.moon VALUES (17, 'moon12', 2233.33, true, 'blanca', 18);
INSERT INTO public.moon VALUES (18, 'moon13', 22323.3, true, 'blanca', 1);
INSERT INTO public.moon VALUES (19, 'moon14', 22345.33, true, 'roja', 2);
INSERT INTO public.moon VALUES (20, 'moon15', 2233.33, true, 'blanca', 3);
INSERT INTO public.moon VALUES (22, 'moon16', 2233.16, true, 'roja', 5);
INSERT INTO public.moon VALUES (23, 'moon17', 2233.33, true, 'blanca', 18);
INSERT INTO public.moon VALUES (24, 'moon18', 22323.3, true, 'blanca', 6);
INSERT INTO public.moon VALUES (25, 'moon19', 22345.33, true, 'roja', 2);
INSERT INTO public.moon VALUES (26, 'moon20', 2233.33, true, 'blanca', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra01', 73632.23, true, 'azul', 1, 3456);
INSERT INTO public.planet VALUES (2, 'tierra02', 12339.23, true, 'rojo', 2, 3456);
INSERT INTO public.planet VALUES (3, 'tierra03', 12339.23, true, 'verde', 3, 33456);
INSERT INTO public.planet VALUES (4, 'tierra04', 12339.23, true, 'amarillo', 4, 3222);
INSERT INTO public.planet VALUES (5, 'tierra05', 3312339.23, true, 'azul', 5, 43456);
INSERT INTO public.planet VALUES (6, 'tierra06', 98623, false, 'rojo', 6, 3098);
INSERT INTO public.planet VALUES (13, 'tierra07', 654632.23, true, 'azul', 1, 37456);
INSERT INTO public.planet VALUES (14, 'tierra08', 1766.23, true, 'rojo', 2, 6556);
INSERT INTO public.planet VALUES (15, 'tierra09', 1232339.23, true, 'verde', 3, 35556);
INSERT INTO public.planet VALUES (16, 'tierra10', 13329.23, true, 'amarillo', 4, 8822);
INSERT INTO public.planet VALUES (17, 'tierra11', 87639.23, true, 'azul', 5, 4876);
INSERT INTO public.planet VALUES (18, 'tierra12', 9668623, false, 'rojo', 6, 344098);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aldebaran', 1223.22, 'enana roja', 'Las estrellas son motores de energía cósmica que producen calor, luz, etc', 1);
INSERT INTO public.star VALUES (2, 'Camus', 36573.647, 'enana, blanca', 'Las estrellas son motores de energía cósmica que producen calor, luz, etc', 2);
INSERT INTO public.star VALUES (3, 'Milo', 2784.73, 'gigante roja', 'Las estrellas son motores de energía cósmica que producen calor, l etc', 3);
INSERT INTO public.star VALUES (4, 'Shaka', 1244323.22, 'enana roja', 'Las estrellas son motores de energía cósmica que producen calor, luz, etc', 4);
INSERT INTO public.star VALUES (5, 'Shura', 4436573.647, 'enana, blanca', 'Las estrellas son motores de energía cósmica que producen calor, luz, etc', 5);
INSERT INTO public.star VALUES (6, 'Saga', 266784.73, 'gigante roja', 'Las estrellas son motores de energía cósmica que producen calor, luz, etc', 6);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

