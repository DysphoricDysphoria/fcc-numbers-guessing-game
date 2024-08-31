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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    guessed_number integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (1, 644, 645, 8);
INSERT INTO public.guesses VALUES (2, 533, 534, 8);
INSERT INTO public.guesses VALUES (3, 27, 28, 9);
INSERT INTO public.guesses VALUES (4, 813, 814, 9);
INSERT INTO public.guesses VALUES (5, 119, 121, 8);
INSERT INTO public.guesses VALUES (6, 28, 29, 8);
INSERT INTO public.guesses VALUES (7, 376, 377, 10);
INSERT INTO public.guesses VALUES (8, 512, 513, 10);
INSERT INTO public.guesses VALUES (9, 353, 354, 11);
INSERT INTO public.guesses VALUES (10, 412, 413, 11);
INSERT INTO public.guesses VALUES (11, 556, 558, 10);
INSERT INTO public.guesses VALUES (12, 937, 938, 10);
INSERT INTO public.guesses VALUES (13, 687, 688, 16);
INSERT INTO public.guesses VALUES (14, 753, 754, 16);
INSERT INTO public.guesses VALUES (15, 230, 231, 17);
INSERT INTO public.guesses VALUES (16, 718, 719, 17);
INSERT INTO public.guesses VALUES (17, 316, 319, 16);
INSERT INTO public.guesses VALUES (18, 998, 1000, 16);
INSERT INTO public.guesses VALUES (19, 883, 884, 16);
INSERT INTO public.guesses VALUES (20, 921, 922, 18);
INSERT INTO public.guesses VALUES (21, 870, 871, 18);
INSERT INTO public.guesses VALUES (22, 921, 922, 19);
INSERT INTO public.guesses VALUES (23, 412, 413, 19);
INSERT INTO public.guesses VALUES (24, 257, 260, 18);
INSERT INTO public.guesses VALUES (25, 997, 999, 18);
INSERT INTO public.guesses VALUES (26, 23, 24, 18);
INSERT INTO public.guesses VALUES (27, 846, 847, 20);
INSERT INTO public.guesses VALUES (28, 192, 193, 20);
INSERT INTO public.guesses VALUES (29, 598, 599, 21);
INSERT INTO public.guesses VALUES (30, 596, 597, 21);
INSERT INTO public.guesses VALUES (31, 455, 458, 20);
INSERT INTO public.guesses VALUES (32, 833, 835, 20);
INSERT INTO public.guesses VALUES (33, 156, 157, 20);
INSERT INTO public.guesses VALUES (34, 131, 132, 22);
INSERT INTO public.guesses VALUES (35, 179, 180, 22);
INSERT INTO public.guesses VALUES (36, 261, 262, 23);
INSERT INTO public.guesses VALUES (37, 506, 507, 23);
INSERT INTO public.guesses VALUES (38, 211, 214, 22);
INSERT INTO public.guesses VALUES (39, 517, 519, 22);
INSERT INTO public.guesses VALUES (40, 959, 960, 22);
INSERT INTO public.guesses VALUES (41, 437, 438, 24);
INSERT INTO public.guesses VALUES (42, 78, 79, 24);
INSERT INTO public.guesses VALUES (43, 237, 238, 25);
INSERT INTO public.guesses VALUES (44, 337, 338, 25);
INSERT INTO public.guesses VALUES (45, 88, 91, 24);
INSERT INTO public.guesses VALUES (46, 781, 783, 24);
INSERT INTO public.guesses VALUES (47, 855, 856, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1725126969034');
INSERT INTO public.users VALUES (2, 'user_1725126969033');
INSERT INTO public.users VALUES (3, 'user_1725127042443');
INSERT INTO public.users VALUES (4, 'user_1725127062901');
INSERT INTO public.users VALUES (5, 'user_1725127062900');
INSERT INTO public.users VALUES (6, 'user_1725127285610');
INSERT INTO public.users VALUES (7, 'user_1725127285609');
INSERT INTO public.users VALUES (8, 'user_1725127372027');
INSERT INTO public.users VALUES (9, 'user_1725127372026');
INSERT INTO public.users VALUES (10, 'user_1725127404460');
INSERT INTO public.users VALUES (11, 'user_1725127404459');
INSERT INTO public.users VALUES (12, 'user_1725127443489');
INSERT INTO public.users VALUES (13, 'user_1725127443488');
INSERT INTO public.users VALUES (14, 'user_1725127473010');
INSERT INTO public.users VALUES (15, 'user_1725127473009');
INSERT INTO public.users VALUES (16, 'user_1725127504432');
INSERT INTO public.users VALUES (17, 'user_1725127504431');
INSERT INTO public.users VALUES (18, 'user_1725127507399');
INSERT INTO public.users VALUES (19, 'user_1725127507398');
INSERT INTO public.users VALUES (20, 'user_1725127515620');
INSERT INTO public.users VALUES (21, 'user_1725127515619');
INSERT INTO public.users VALUES (22, 'user_1725127585996');
INSERT INTO public.users VALUES (23, 'user_1725127585995');
INSERT INTO public.users VALUES (24, 'user_1725127655244');
INSERT INTO public.users VALUES (25, 'user_1725127655243');


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 47, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

