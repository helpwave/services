--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: properties; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.properties (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    subject_type integer NOT NULL,
    field_type integer NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    is_archived boolean DEFAULT false NOT NULL,
    set_id uuid,
    select_data_id uuid
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    dirty boolean NOT NULL
);


--
-- Name: select_datas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.select_datas (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    allow_freetext boolean DEFAULT false NOT NULL
);


--
-- Name: select_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.select_options (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name text NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    is_custom boolean DEFAULT false NOT NULL,
    select_data_id uuid NOT NULL
);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: select_datas select_datas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.select_datas
    ADD CONSTRAINT select_datas_pkey PRIMARY KEY (id);


--
-- Name: select_options select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.select_options
    ADD CONSTRAINT select_options_pkey PRIMARY KEY (id);


--
-- Name: properties properties_select_data_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_select_data_id_fkey FOREIGN KEY (select_data_id) REFERENCES public.select_datas(id) ON DELETE SET NULL;


--
-- Name: select_options select_options_select_data_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.select_options
    ADD CONSTRAINT select_options_select_data_id_fkey FOREIGN KEY (select_data_id) REFERENCES public.select_datas(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

