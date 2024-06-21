--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    size integer,
    galaxy_id integer NOT NULL,
    weight integer,
    years integer,
    title text,
    is_fun integer DEFAULT 0 NOT NULL,
    unqiue_id integer
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
    name character varying(30),
    size integer,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    weight integer,
    years integer,
    title text,
    unqiue_id integer
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
    name character varying(30),
    size integer,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    weight integer,
    years integer,
    title text,
    unqiue_id integer
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    life boolean,
    water boolean,
    size numeric(6,1),
    name character varying(30),
    population_id integer NOT NULL,
    is_fun boolean DEFAULT true NOT NULL,
    unqiue_id integer
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    size integer,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    weight integer,
    years integer,
    title text,
    unqiue_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 100000, 1, 500000, 13000, 'Home Galaxy', 0, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 110000, 2, 600000, 15000, 'Neighbor Galaxy', 0, NULL);
INSERT INTO public.galaxy VALUES ('Triangulum', 60000, 3, 200000, 10000, 'Small Galaxy', 0, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 76000, 4, 250000, 12000, 'Spiral Galaxy', 0, NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 170000, 5, 750000, 20000, 'Large Galaxy', 0, NULL);
INSERT INTO public.galaxy VALUES ('Messier 87', 120000, 6, 800000, 14000, 'Elliptical Galaxy', 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 3475, 1, 3, 734, 4500, 'Earth''s Moon', NULL);
INSERT INTO public.moon VALUES ('Phobos', 22, 2, 4, 11, 4500, 'Mars'' Moon', NULL);
INSERT INTO public.moon VALUES ('Deimos', 12, 3, 4, 2, 4500, 'Mars'' Moon', NULL);
INSERT INTO public.moon VALUES ('Io', 3643, 4, 5, 893, 4500, 'Jupiter''s Moon', NULL);
INSERT INTO public.moon VALUES ('Europa', 3121, 5, 5, 480, 4500, 'Jupiter''s Moon', NULL);
INSERT INTO public.moon VALUES ('Ganymede', 5268, 6, 5, 1482, 4500, 'Jupiter''s Moon', NULL);
INSERT INTO public.moon VALUES ('Callisto', 4820, 7, 5, 1076, 4500, 'Jupiter''s Moon', NULL);
INSERT INTO public.moon VALUES ('Titan', 5149, 8, 6, 1345, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Enceladus', 504, 9, 6, 108, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Mimas', 396, 10, 6, 38, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Triton', 2706, 11, 8, 214, 4500, 'Neptune''s Moon', NULL);
INSERT INTO public.moon VALUES ('Charon', 1212, 12, 9, 159, 4500, 'Pluto''s Moon', NULL);
INSERT INTO public.moon VALUES ('Dione', 1122, 13, 6, 107, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Rhea', 1528, 14, 6, 230, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Tethys', 1062, 15, 6, 61, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Iapetus', 1469, 16, 6, 165, 4500, 'Saturn''s Moon', NULL);
INSERT INTO public.moon VALUES ('Oberon', 1523, 17, 7, 300, 4500, 'Uranus'' Moon', NULL);
INSERT INTO public.moon VALUES ('Titania', 1578, 18, 7, 354, 4500, 'Uranus'' Moon', NULL);
INSERT INTO public.moon VALUES ('Umbriel', 1169, 19, 7, 200, 4500, 'Uranus'' Moon', NULL);
INSERT INTO public.moon VALUES ('Ariel', 1158, 20, 7, 179, 4500, 'Uranus'' Moon', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 4879, 1, 1, 330, 4500, 'Inner Planet', NULL);
INSERT INTO public.planet VALUES ('Venus', 12104, 2, 1, 4867, 4500, 'Inner Planet', NULL);
INSERT INTO public.planet VALUES ('Earth', 12742, 3, 1, 5973, 4500, 'Our Home Planet', NULL);
INSERT INTO public.planet VALUES ('Mars', 6779, 4, 1, 641, 4500, 'Red Planet', NULL);
INSERT INTO public.planet VALUES ('Jupiter', 139820, 5, 1, 1898000, 4500, 'Gas Giant', NULL);
INSERT INTO public.planet VALUES ('Saturn', 116460, 6, 1, 568300, 4500, 'Ringed Planet', NULL);
INSERT INTO public.planet VALUES ('Uranus', 50724, 7, 1, 86810, 4500, 'Ice Giant', NULL);
INSERT INTO public.planet VALUES ('Neptune', 49244, 8, 1, 102400, 4500, 'Ice Giant', NULL);
INSERT INTO public.planet VALUES ('Proxima b', 12000, 9, 5, 4200, 4500, 'Exoplanet', NULL);
INSERT INTO public.planet VALUES ('Kepler-22b', 24000, 10, 2, 12400, 6000, 'Potentially Habitable Exoplanet', NULL);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 12756, 11, 4, 5972, 7500, 'Exoplanet in Habitable Zone', NULL);
INSERT INTO public.planet VALUES ('Alpha Centauri Bb', 14200, 12, 5, 4890, 4600, 'Exoplanet in Nearest Star System', NULL);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES (true, true, 30000.0, 'Poland', 1, true, NULL);
INSERT INTO public.population VALUES (true, true, 90000.0, 'USA', 2, true, NULL);
INSERT INTO public.population VALUES (true, true, 70000.0, 'Germany', 3, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, 1, 1989000, 4600, 'Our Star', NULL);
INSERT INTO public.star VALUES ('Sirius', 2, 2, 2, 3968000, 300, 'Brightest Star', NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 3, 3, 3, 8886000, 850, 'Red Supergiant', NULL);
INSERT INTO public.star VALUES ('Rigel', 4, 4, 4, 2189000, 860, 'Blue Supergiant', NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 5, 5, 5, 1989000, 4600, 'Nearest Star', NULL);
INSERT INTO public.star VALUES ('Vega', 6, 6, 6, 3968000, 450, 'Bright Star', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 3, true);


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
-- Name: galaxy galaxy_unqiue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unqiue_id_key UNIQUE (unqiue_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unqiue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unqiue_id_key UNIQUE (unqiue_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unqiue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unqiue_id_key UNIQUE (unqiue_id);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: population population_unqiue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_unqiue_id_key UNIQUE (unqiue_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unqiue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unqiue_id_key UNIQUE (unqiue_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

