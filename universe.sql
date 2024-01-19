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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(20) NOT NULL,
    size_in_km numeric(4,2),
    description text,
    life_sustainable boolean,
    age_in_millions_of_yrs integer,
    has_own_gravitational_pull boolean,
    distance_to_earth integer,
    black_hole_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    size_in_km numeric(4,2),
    description text,
    life_sustainable boolean,
    age_in_millions_of_yrs integer,
    has_own_gravitational_pull boolean,
    distance_to_earth integer,
    galaxy_id integer NOT NULL,
    ref_id integer NOT NULL
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
-- Name: galaxy_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_ref_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_ref_id_seq OWNED BY public.galaxy.ref_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    size_in_km numeric(4,2),
    description text,
    life_sustainable boolean,
    age_in_millions_of_yrs integer,
    has_own_gravitational_pull boolean,
    distance_to_earth integer,
    moon_id integer NOT NULL,
    ref_id integer NOT NULL
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
-- Name: moon_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_ref_id_seq OWNER TO freecodecamp;

--
-- Name: moon_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_ref_id_seq OWNED BY public.moon.ref_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    size_in_km numeric(4,2),
    description text,
    life_sustainable boolean,
    age_in_millions_of_yrs integer,
    has_own_gravitational_pull boolean,
    distance_to_earth integer,
    planet_id integer NOT NULL,
    ref_id integer NOT NULL
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
-- Name: planet_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_ref_id_seq OWNER TO freecodecamp;

--
-- Name: planet_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_ref_id_seq OWNED BY public.planet.ref_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    size_in_km numeric(4,2),
    description text,
    life_sustainable boolean,
    age_in_millions_of_yrs integer,
    has_own_gravitational_pull boolean,
    distance_to_earth integer,
    star_id integer NOT NULL,
    ref_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_ref_id_seq OWNER TO freecodecamp;

--
-- Name: star_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_ref_id_seq OWNED BY public.star.ref_id;


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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy ref_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN ref_id SET DEFAULT nextval('public.galaxy_ref_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon ref_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN ref_id SET DEFAULT nextval('public.moon_ref_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet ref_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN ref_id SET DEFAULT nextval('public.planet_ref_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star ref_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN ref_id SET DEFAULT nextval('public.star_ref_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('Dark Matter', 62.89, 'Hole', false, 8000, true, 814000, 1);
INSERT INTO public.black_hole VALUES ('Big Black', 78.49, 'Hole', false, 6700, true, 900000, 2);
INSERT INTO public.black_hole VALUES ('Darkness', 99.99, 'Hole', false, 70000, true, 854000, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 32.50, 'Lots of stars', true, 58, true, 29, 1, 1);
INSERT INTO public.galaxy VALUES ('Intergalactic', 92.50, 'Bright', true, 86, true, 94, 2, 2);
INSERT INTO public.galaxy VALUES ('Lots O Stuff', 30.67, 'Vast', false, 60, false, 549, 3, 3);
INSERT INTO public.galaxy VALUES ('Starry', 30.57, 'Vast', false, 60, false, 954, 4, 4);
INSERT INTO public.galaxy VALUES ('Starless', 48.20, 'No Stars', false, 73, true, 839, 5, 5);
INSERT INTO public.galaxy VALUES ('Swirly', 73.50, 'Bright', true, 72, true, 870, 6, 6);
INSERT INTO public.galaxy VALUES ('Starry', 30.57, 'Vast', false, 60, false, 954, 7, 7);
INSERT INTO public.galaxy VALUES ('Starless', 48.20, 'No Stars', false, 73, true, 839, 8, 8);
INSERT INTO public.galaxy VALUES ('Swirly', 73.50, 'Bright', true, 72, true, 870, 9, 9);
INSERT INTO public.galaxy VALUES ('Bright & Shining', 70.73, 'Glowing', false, 7000000, false, 543000, 10, 10);
INSERT INTO public.galaxy VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 11, 11);
INSERT INTO public.galaxy VALUES ('Red Star', 62.59, 'Glowing', false, 3523300, false, 4232340, 12, 12);
INSERT INTO public.galaxy VALUES ('Heatwave', 5.31, 'Hot', true, 32, false, 43, 13, 13);
INSERT INTO public.galaxy VALUES ('Starry', 30.57, 'Vast', false, 60, false, 954, 14, 14);
INSERT INTO public.galaxy VALUES ('Starless', 48.20, 'No Stars', false, 73, true, 839, 15, 15);
INSERT INTO public.galaxy VALUES ('Swirly', 73.50, 'Bright', true, 72, true, 870, 16, 16);
INSERT INTO public.galaxy VALUES ('Lots O Stuff', 30.67, 'Vast', false, 60, false, 549, 17, 17);
INSERT INTO public.galaxy VALUES ('Lots O Stuff', 30.67, 'Vast', false, 60, false, 549, 18, 18);
INSERT INTO public.galaxy VALUES ('Venus', 52.90, 'Dark', false, 76, false, 59, 19, 19);
INSERT INTO public.galaxy VALUES ('Jupiter', 43.20, 'Hot', true, 25, true, 96, 20, 20);
INSERT INTO public.galaxy VALUES ('Uranus', 8.15, 'Dark', false, 62, true, 264, 21, 21);
INSERT INTO public.galaxy VALUES ('Mercury', 58.30, 'Poisonous', false, 75, false, 20, 22, 22);
INSERT INTO public.galaxy VALUES ('Mars', 7.06, 'Inhabitable', false, 972, true, 342, 23, 23);
INSERT INTO public.galaxy VALUES ('New Earth', 7.12, 'Water', false, 739, false, 872, 24, 24);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Round Moon', 18.60, 'Craters', false, 75, true, 45, 1, 1);
INSERT INTO public.moon VALUES ('Dense Moon', 20.80, 'Smooth', false, 89, true, 43, 2, 2);
INSERT INTO public.moon VALUES ('Cold Moon', 4.67, 'Craters', false, 340, false, 890, 3, 3);
INSERT INTO public.moon VALUES ('Small Moon', 22.90, 'Craters', false, 760, false, 59, 4, 4);
INSERT INTO public.moon VALUES ('Saturn Moon', 53.20, 'Smooth', true, 82, true, 89, 5, 5);
INSERT INTO public.moon VALUES ('Earths Moon', 82.10, 'Craters', false, 90, true, 82, 6, 6);
INSERT INTO public.moon VALUES ('Milky Way Moon', 58.23, 'Smooth', false, 72, false, 50, 7, 7);
INSERT INTO public.moon VALUES ('Intergalactic Moon', 73.00, 'Craters', false, 92, true, 82, 8, 8);
INSERT INTO public.moon VALUES ('Bright Moon', 52.90, 'Craters', false, 76, false, 59, 9, 9);
INSERT INTO public.moon VALUES ('Dull Moon', 43.20, 'Smooth', true, 25, true, 96, 10, 10);
INSERT INTO public.moon VALUES ('Little Moon', 8.15, 'Craters', false, 62, true, 264, 11, 11);
INSERT INTO public.moon VALUES ('New Moon', 58.30, 'Smooth', false, 75, false, 20, 12, 12);
INSERT INTO public.moon VALUES ('Old Moon', 7.06, 'Craters', false, 972, true, 342, 13, 13);
INSERT INTO public.moon VALUES ('R2', 7.12, 'Craters', false, 739, false, 872, 14, 14);
INSERT INTO public.moon VALUES ('D3', 82.51, 'Smooth', true, 729, false, 723, 15, 15);
INSERT INTO public.moon VALUES ('TME5', 57.10, 'Smooth', true, 98, true, 13, 16, 16);
INSERT INTO public.moon VALUES ('MLKY Moon', 5.31, 'Smooth', true, 32, false, 43, 17, 17);
INSERT INTO public.moon VALUES ('YOLO Moon', 58.20, 'Craters', false, 928, false, 72, 18, 18);
INSERT INTO public.moon VALUES ('MY Moon', 7.52, 'Craters', true, 92, true, 72, 19, 19);
INSERT INTO public.moon VALUES ('True Moon', 82.34, 'Smooth', true, 20, true, 487, 20, 20);
INSERT INTO public.moon VALUES ('OHH Moon', 72.11, 'Craters', true, 83, false, 98, 21, 21);
INSERT INTO public.moon VALUES ('WHO Moon', 8.52, 'Craters', false, 27, true, 600, 22, 22);
INSERT INTO public.moon VALUES ('DHOE Moon', 83.50, 'Craters', true, 834, false, 932, 23, 23);
INSERT INTO public.moon VALUES ('DHFO Moon', 48.20, 'Smooth', false, 92, true, 72, 24, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Pluto', 14.60, 'Cold', false, 900, false, 159, 1, 1);
INSERT INTO public.planet VALUES ('Saturn', 99.20, 'Rings', false, 500, true, 130, 2, 2);
INSERT INTO public.planet VALUES ('Venus', 52.90, 'Dark', false, 76, false, 59, 3, 3);
INSERT INTO public.planet VALUES ('Jupiter', 43.20, 'Hot', true, 25, true, 96, 4, 4);
INSERT INTO public.planet VALUES ('Uranus', 8.15, 'Dark', false, 62, true, 264, 5, 5);
INSERT INTO public.planet VALUES ('Mercury', 58.30, 'Poisonous', false, 75, false, 20, 6, 6);
INSERT INTO public.planet VALUES ('Mars', 7.06, 'Inhabitable', false, 972, true, 342, 7, 7);
INSERT INTO public.planet VALUES ('Ne[CEarth', 7.12, 'Water', false, 739, false, 872, 8, 8);
INSERT INTO public.planet VALUES ('Gaseous', 82.51, 'Gases', true, 729, false, 723, 9, 9);
INSERT INTO public.planet VALUES ('Pluto 2.0', 57.10, 'Small', true, 98, true, 13, 10, 10);
INSERT INTO public.planet VALUES ('Heatwave', 5.31, 'Hot', true, 32, false, 43, 11, 11);
INSERT INTO public.planet VALUES ('Tiny', 52.90, 'Small', false, 76, false, 59, 12, 12);
INSERT INTO public.planet VALUES ('Venus', 52.90, 'Dark', false, 76, false, 59, 13, 13);
INSERT INTO public.planet VALUES ('Jupiter', 43.20, 'Hot', true, 25, true, 96, 14, 14);
INSERT INTO public.planet VALUES ('Uranus', 8.15, 'Dark', false, 62, true, 264, 15, 15);
INSERT INTO public.planet VALUES ('Mercury', 58.30, 'Poisonous', false, 75, false, 20, 16, 16);
INSERT INTO public.planet VALUES ('Mars', 7.06, 'Inhabitable', false, 972, true, 342, 17, 17);
INSERT INTO public.planet VALUES ('New Earth', 7.12, 'Water', false, 739, false, 872, 18, 18);
INSERT INTO public.planet VALUES ('Gaseous', 82.51, 'Gases', true, 729, false, 723, 19, 19);
INSERT INTO public.planet VALUES ('Pluto 2.0', 57.10, 'Small', true, 98, true, 13, 20, 20);
INSERT INTO public.planet VALUES ('Heatwave', 5.31, 'Hot', true, 32, false, 43, 21, 21);
INSERT INTO public.planet VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 22, 22);
INSERT INTO public.planet VALUES ('Bright & Shining', 70.73, 'Glowing', false, 7000000, false, 543000, 23, 23);
INSERT INTO public.planet VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 24, 24);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Bright & Shining', 70.73, 'Glowing', false, 7000000, false, 543000, 1, 1);
INSERT INTO public.star VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 2, 2);
INSERT INTO public.star VALUES ('Red Star', 62.59, 'Glowing', false, 3523300, false, 4232340, 3, 3);
INSERT INTO public.star VALUES ('Yellow Star', 36.73, 'Glowing', false, 9000000, false, 536000, 4, 4);
INSERT INTO public.star VALUES ('Purple Star', 79.34, 'Glowing', false, 4950000, false, 465420, 5, 5);
INSERT INTO public.star VALUES ('Green Star', 32.99, 'Glowing', false, 3552300, false, 4097265, 6, 6);
INSERT INTO public.star VALUES ('Orion', 2.92, 'Archer', false, 46, false, 9, 7, 7);
INSERT INTO public.star VALUES ('North', 33.20, 'Bright', false, 55, false, 56, 8, 8);
INSERT INTO public.star VALUES ('Capricorn', 1.50, 'Goat', false, 42, false, 64, 9, 9);
INSERT INTO public.star VALUES ('Virgo', 8.30, 'Virgin', false, 775, false, 620, 10, 10);
INSERT INTO public.star VALUES ('Taurus', 7.66, 'Bull', false, 92, false, 32, 11, 11);
INSERT INTO public.star VALUES ('Scorpio', 7.20, 'Scorpion', false, 39, false, 82, 12, 12);
INSERT INTO public.star VALUES ('Bright & Shining', 70.73, 'Glowing', false, 7000000, false, 543000, 13, 13);
INSERT INTO public.star VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 14, 14);
INSERT INTO public.star VALUES ('Red Star', 62.59, 'Glowing', false, 3523300, false, 4232340, 15, 15);
INSERT INTO public.star VALUES ('Heatwave', 5.31, 'Hot', true, 32, false, 43, 16, 16);
INSERT INTO public.star VALUES ('Yeah', 95.20, 'Bright', false, 290, false, 732, 17, 17);
INSERT INTO public.star VALUES ('Lots O Stuff', 30.67, 'Vast', false, 60, false, 549, 18, 18);
INSERT INTO public.star VALUES ('Bright & Shining', 70.73, 'Glowing', false, 7000000, false, 543000, 19, 19);
INSERT INTO public.star VALUES ('Dim Bulb', 40.34, 'Glowing', false, 3490000, false, 45420, 20, 20);
INSERT INTO public.star VALUES ('Red Star', 62.59, 'Glowing', false, 3523300, false, 4232340, 21, 21);
INSERT INTO public.star VALUES ('Venus', 52.90, 'Dark', false, 76, false, 59, 22, 22);
INSERT INTO public.star VALUES ('Jupiter', 43.20, 'Hot', true, 25, true, 96, 23, 23);
INSERT INTO public.star VALUES ('Uranus', 8.15, 'Dark', false, 62, true, 264, 24, 24);


--
-- Name: black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 24, true);


--
-- Name: galaxy_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_ref_id_seq', 24, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: moon_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_ref_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: planet_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_ref_id_seq', 24, true);


--
-- Name: star_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_ref_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: black_hole black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_ref_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_ref_id_key UNIQUE (ref_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_ref_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ref_id_key UNIQUE (ref_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_ref_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ref_id_key UNIQUE (ref_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_ref_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ref_id_key UNIQUE (ref_id);


--
-- Name: moon ref_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ref_id FOREIGN KEY (ref_id) REFERENCES public.planet(ref_id);


--
-- Name: planet ref_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT ref_id FOREIGN KEY (ref_id) REFERENCES public.star(ref_id);


--
-- Name: star ref_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT ref_id FOREIGN KEY (ref_id) REFERENCES public.galaxy(ref_id);


--
-- PostgreSQL database dump complete
--

