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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(255) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 174, 173, 4, 2, 'Final', 2018);
INSERT INTO public.games VALUES (2, 176, 175, 2, 0, 'Third Place', 2018);
INSERT INTO public.games VALUES (3, 176, 174, 2, 1, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (4, 175, 173, 1, 0, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (5, 177, 174, 3, 2, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (6, 178, 176, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (7, 179, 175, 2, 1, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (8, 180, 173, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (9, 181, 176, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (10, 182, 178, 1, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (11, 183, 175, 3, 2, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (12, 184, 179, 2, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (13, 185, 174, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (14, 186, 177, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (15, 187, 180, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (16, 188, 173, 4, 3, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (17, 188, 189, 1, 0, 'Final', 2014);
INSERT INTO public.games VALUES (18, 179, 190, 3, 0, 'Third Place', 2014);
INSERT INTO public.games VALUES (19, 190, 188, 1, 0, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (20, 179, 189, 7, 1, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (21, 191, 190, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (22, 175, 188, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (23, 181, 179, 2, 1, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (24, 173, 189, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (25, 192, 179, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (26, 180, 181, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (27, 193, 173, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (28, 194, 189, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (29, 184, 190, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (30, 195, 191, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (31, 182, 188, 1, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (32, 196, 175, 2, 1, 'Eighth-Final', 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (173, 'France');
INSERT INTO public.teams VALUES (174, 'Croatia');
INSERT INTO public.teams VALUES (175, 'Belgium');
INSERT INTO public.teams VALUES (176, 'England');
INSERT INTO public.teams VALUES (177, 'Russia');
INSERT INTO public.teams VALUES (178, 'Sweden');
INSERT INTO public.teams VALUES (179, 'Brazil');
INSERT INTO public.teams VALUES (180, 'Uruguay');
INSERT INTO public.teams VALUES (181, 'Colombia');
INSERT INTO public.teams VALUES (182, 'Switzerland');
INSERT INTO public.teams VALUES (183, 'Japan');
INSERT INTO public.teams VALUES (184, 'Mexico');
INSERT INTO public.teams VALUES (185, 'Denmark');
INSERT INTO public.teams VALUES (186, 'Spain');
INSERT INTO public.teams VALUES (187, 'Portugal');
INSERT INTO public.teams VALUES (188, 'Argentina');
INSERT INTO public.teams VALUES (189, 'Germany');
INSERT INTO public.teams VALUES (190, 'Netherlands');
INSERT INTO public.teams VALUES (191, 'Costa Rica');
INSERT INTO public.teams VALUES (192, 'Chile');
INSERT INTO public.teams VALUES (193, 'Nigeria');
INSERT INTO public.teams VALUES (194, 'Algeria');
INSERT INTO public.teams VALUES (195, 'Greece');
INSERT INTO public.teams VALUES (196, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 196, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

