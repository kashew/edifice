SET check_function_bodies = false;
CREATE TABLE public.agents (
    id bigint NOT NULL,
    uuid uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL
);
CREATE SEQUENCE public.agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.agents_id_seq OWNED BY public.agents.id;
CREATE TABLE public.customers (
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    uuid uuid DEFAULT gen_random_uuid() NOT NULL,
    id bigint NOT NULL,
    email character varying,
    phone_number character varying NOT NULL
);
CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
CREATE TABLE public.scheduled_callbacks (
    agent_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    callback timestamp without time zone NOT NULL,
    id bigint NOT NULL
);
CREATE SEQUENCE public.scheduled_callbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.scheduled_callbacks_id_seq OWNED BY public.scheduled_callbacks.id;
ALTER TABLE ONLY public.agents ALTER COLUMN id SET DEFAULT nextval('public.agents_id_seq'::regclass);
ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
ALTER TABLE ONLY public.scheduled_callbacks ALTER COLUMN id SET DEFAULT nextval('public.scheduled_callbacks_id_seq'::regclass);
ALTER TABLE ONLY public.agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.agents
    ADD CONSTRAINT agents_uuid_key UNIQUE (uuid);
ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_uuid_key UNIQUE (uuid);
ALTER TABLE ONLY public.scheduled_callbacks
    ADD CONSTRAINT scheduled_callbacks_pkey PRIMARY KEY (agent_id, customer_id);
ALTER TABLE ONLY public.scheduled_callbacks
    ADD CONSTRAINT scheduled_callbacks_agent_id_fkey FOREIGN KEY (agent_id) REFERENCES public.agents(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.scheduled_callbacks
    ADD CONSTRAINT scheduled_callbacks_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
