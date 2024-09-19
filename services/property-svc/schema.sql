--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.8

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


--
-- Name: calc_rule_specificity(boolean[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calc_rule_specificity(VARIADIC args boolean[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
	result INTEGER := 0;
	i INT;
BEGIN
	FOR i IN 1..COALESCE(array_length(args, 1), 0)
	LOOP
		result := result | args[i] :: integer << (31 - i);
	END LOOP;
	RETURN result;
END;
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: multi_select_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.multi_select_values (
    value_id uuid NOT NULL,
    select_option uuid NOT NULL
);


--
-- Name: property_view_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.property_view_rules (
    rule_id uuid DEFAULT public.uuid_generate_v4() NOT NULL
);


--
-- Name: patient_property_view_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_property_view_rules (
    ward_id uuid,
    patient_id uuid
)
INHERITS (public.property_view_rules);


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
    select_data_id uuid,
    consistency bigint DEFAULT 0 NOT NULL
);


--
-- Name: property_values; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.property_values (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    property_id uuid NOT NULL,
    subject_id uuid NOT NULL,
    text_value text,
    number_value double precision,
    bool_value boolean,
    date_value date,
    date_time_value timestamp without time zone,
    consistency bigint DEFAULT 0 NOT NULL
);


--
-- Name: property_view_filter_always_include_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.property_view_filter_always_include_items (
    dont_always_include boolean NOT NULL,
    rule_id uuid NOT NULL,
    property_id uuid NOT NULL
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
-- Name: task_property_view_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_property_view_rules (
    ward_id uuid,
    task_id uuid
)
INHERITS (public.property_view_rules);


--
-- Name: patient_property_view_rules rule_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_property_view_rules ALTER COLUMN rule_id SET DEFAULT public.uuid_generate_v4();


--
-- Name: task_property_view_rules rule_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_property_view_rules ALTER COLUMN rule_id SET DEFAULT public.uuid_generate_v4();


--
-- Name: multi_select_values multi_select_values_value_id_select_option_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multi_select_values
    ADD CONSTRAINT multi_select_values_value_id_select_option_key UNIQUE (value_id, select_option);


--
-- Name: patient_property_view_rules patient_property_view_rules_ward_id_patient_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_property_view_rules
    ADD CONSTRAINT patient_property_view_rules_ward_id_patient_id_key UNIQUE (ward_id, patient_id);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: property_values property_values_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_values
    ADD CONSTRAINT property_values_pkey PRIMARY KEY (id);


--
-- Name: property_values property_values_property_id_subject_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_values
    ADD CONSTRAINT property_values_property_id_subject_id_key UNIQUE (property_id, subject_id);


--
-- Name: property_view_filter_always_include_items property_view_filter_always_include_ite_rule_id_property_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_view_filter_always_include_items
    ADD CONSTRAINT property_view_filter_always_include_ite_rule_id_property_id_key UNIQUE (rule_id, property_id);


--
-- Name: property_view_rules property_view_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_view_rules
    ADD CONSTRAINT property_view_rules_pkey PRIMARY KEY (rule_id);


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
-- Name: task_property_view_rules task_property_view_rules_ward_id_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_property_view_rules
    ADD CONSTRAINT task_property_view_rules_ward_id_task_id_key UNIQUE (ward_id, task_id);


--
-- Name: idx_property_subject; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_property_subject ON public.property_values USING btree (property_id, subject_id);


--
-- Name: idx_property_view_filter_always_include_items_rule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_property_view_filter_always_include_items_rule_id ON public.property_view_filter_always_include_items USING btree (rule_id);


--
-- Name: multi_select_values multi_select_values_select_option_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multi_select_values
    ADD CONSTRAINT multi_select_values_select_option_fkey FOREIGN KEY (select_option) REFERENCES public.select_options(id) ON DELETE CASCADE;


--
-- Name: multi_select_values multi_select_values_value_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multi_select_values
    ADD CONSTRAINT multi_select_values_value_id_fkey FOREIGN KEY (value_id) REFERENCES public.property_values(id) ON DELETE CASCADE;


--
-- Name: properties properties_select_data_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_select_data_id_fkey FOREIGN KEY (select_data_id) REFERENCES public.select_datas(id) ON DELETE SET NULL;


--
-- Name: property_values property_values_property_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_values
    ADD CONSTRAINT property_values_property_id_fkey FOREIGN KEY (property_id) REFERENCES public.properties(id) ON DELETE CASCADE;


--
-- Name: property_view_filter_always_include_items property_view_filter_always_include_items_property_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_view_filter_always_include_items
    ADD CONSTRAINT property_view_filter_always_include_items_property_id_fkey FOREIGN KEY (property_id) REFERENCES public.properties(id) ON DELETE CASCADE;


--
-- Name: property_view_filter_always_include_items property_view_filter_always_include_items_rule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.property_view_filter_always_include_items
    ADD CONSTRAINT property_view_filter_always_include_items_rule_id_fkey FOREIGN KEY (rule_id) REFERENCES public.property_view_rules(rule_id) ON DELETE CASCADE;


--
-- Name: select_options select_options_select_data_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.select_options
    ADD CONSTRAINT select_options_select_data_id_fkey FOREIGN KEY (select_data_id) REFERENCES public.select_datas(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

