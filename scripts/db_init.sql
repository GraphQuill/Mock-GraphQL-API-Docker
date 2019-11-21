--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)

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

-- create default user graphquill
-- CREATE USER graphquill;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- Name: rand(); Type: FUNCTION; Schema: public; Owner: graphquill
--

CREATE FUNCTION public.rand() RETURNS double precision
    LANGUAGE sql
    AS $$SELECT random();$$;


ALTER FUNCTION public.rand() OWNER TO graphquill;

--
-- Name: substring_index(text, text, integer); Type: FUNCTION; Schema: public; Owner: graphquill
--

CREATE FUNCTION public.substring_index(text, text, integer) RETURNS text
    LANGUAGE sql
    AS $_$SELECT array_to_string((string_to_array($1, $2)) [1:$3], $2);$_$;


ALTER FUNCTION public.substring_index(text, text, integer) OWNER TO graphquill;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: addresses; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    address character varying(255) NOT NULL,
    address2 character varying(255),
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    "zipCode" character varying(10) NOT NULL
);


ALTER TABLE public.addresses OWNER TO graphquill;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO graphquill;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: customerOrders; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public."customerOrders" (
    "orderId" integer NOT NULL,
    "customerId" integer NOT NULL
);


ALTER TABLE public."customerOrders" OWNER TO graphquill;

--
-- Name: customerOrders_orderId_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public."customerOrders_orderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."customerOrders_orderId_seq" OWNER TO graphquill;

--
-- Name: customerOrders_orderId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public."customerOrders_orderId_seq" OWNED BY public."customerOrders"."orderId";


--
-- Name: customers; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "addressId" integer,
    "phoneNumber" character varying(40),
    password character varying
);


ALTER TABLE public.customers OWNER TO graphquill;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO graphquill;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: orderProducts; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public."orderProducts" (
    "orderProductId" integer NOT NULL,
    "productId" integer NOT NULL,
    "productQty" integer NOT NULL,
    "orderId" integer NOT NULL
);


ALTER TABLE public."orderProducts" OWNER TO graphquill;

--
-- Name: orderProducts_productOrderId_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public."orderProducts_productOrderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."orderProducts_productOrderId_seq" OWNER TO graphquill;

--
-- Name: orderProducts_productOrderId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public."orderProducts_productOrderId_seq" OWNED BY public."orderProducts"."orderProductId";


--
-- Name: products; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public.products (
    "productId" integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    price numeric NOT NULL,
    weight numeric NOT NULL
);


ALTER TABLE public.products OWNER TO graphquill;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO graphquill;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products."productId";


--
-- Name: warehouseInventory; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public."warehouseInventory" (
    "productId" integer NOT NULL,
    "warehouseId" integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public."warehouseInventory" OWNER TO graphquill;

--
-- Name: warehouses; Type: TABLE; Schema: public; Owner: graphquill
--

CREATE TABLE public.warehouses (
    "warehouseId" integer NOT NULL,
    name character varying NOT NULL,
    "addressId" integer NOT NULL
);


ALTER TABLE public.warehouses OWNER TO graphquill;

--
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE; Schema: public; Owner: graphquill
--

CREATE SEQUENCE public.warehouses_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouses_warehouse_id_seq OWNER TO graphquill;

--
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: graphquill
--

ALTER SEQUENCE public.warehouses_warehouse_id_seq OWNED BY public.warehouses."warehouseId";


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: customerOrders orderId; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."customerOrders" ALTER COLUMN "orderId" SET DEFAULT nextval('public."customerOrders_orderId_seq"'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: orderProducts orderProductId; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."orderProducts" ALTER COLUMN "orderProductId" SET DEFAULT nextval('public."orderProducts_productOrderId_seq"'::regclass);


--
-- Name: products productId; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.products ALTER COLUMN "productId" SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: warehouses warehouseId; Type: DEFAULT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.warehouses ALTER COLUMN "warehouseId" SET DEFAULT nextval('public.warehouses_warehouse_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public.addresses (id, address, address2, city, state, "zipCode") FROM stdin;
1	62130 Conroy Dam	Suite 939	Blandabury	Tennessee	06000-7447
2	02169 Harber Station	Apt. 445	Kerlukefort	North Carolina	02186
3	28892 Violet Lake	Apt. 045	North Reinhold	Nebraska	12755
4	61766 Prohaska Junctions	Apt. 151	West Damien	Indiana	49435
5	1761 Twila Terrace	Apt. 101	North Camronland	Kentucky	02563-3412
6	533 Gina Overpass	Apt. 863	Port Manuela	Vermont	34659
7	62848 Alexanne Lakes	Suite 953	Laishaborough	Michigan	01559
8	7524 Klocko Mount	Apt. 897	West Jakob	Hawaii	00747-6603
9	16883 Erica Brooks	Suite 718	Yazminton	Texas	00606-0325
10	762 Della Flat	Suite 792	Albertaville	Arkansas	31115-2708
11	3277 Verna Forges	Apt. 899	Mayerport	New Hampshire	37097
12	63670 Gennaro Forges	Suite 140	East Josueside	Wyoming	91492
13	5282 Katlynn Shores	Suite 582	Norrisbury	South Carolina	81060
14	65395 Becker Overpass	Apt. 449	Assuntamouth	New York	73192
15	58764 Jane Village	Apt. 622	West Elisa	North Carolina	82639
16	41115 Morar Village	Apt. 409	Gislasonburgh	West Virginia	02803-8756
17	32935 Hobart Burgs	Suite 006	Lanceland	North Carolina	33328
18	2343 Kohler Lock	Apt. 064	Hesselmouth	Massachusetts	26566-1045
19	40045 Patience Junction	Suite 044	North Johathan	Georgia	73310-3563
20	3084 Jodie Pine	Apt. 859	Lyricfurt	Hawaii	66586-4073
21	7790 Jerel Mills	Suite 474	North Valentinshire	North Dakota	64390-2650
22	5626 Lebsack Fords	Suite 366	Port Chelsea	Washington	74586
23	647 Wyatt Branch	Suite 164	New Kaylee	Illinois	88001
24	4311 Dickens Course	Suite 319	Port Pollybury	Tennessee	10039-6571
25	990 Maybelle Corners	Suite 778	Ullrichport	Arizona	91125-4704
26	4769 Pierce Ridges	Apt. 785	Keeblerside	Maine	71247
29	073 Dario Stravenue	Suite 071	East Elissaside	Florida	42359-1166
28	8757 Hilll Loaf	Suite 119	West Beverly	Arkansas	70244
27	961 Waters Rest	Suite 321	East Mitchell	Utah	49589-8442
30	3608 Ellsworth Mills	Suite 547	West Muhammad	Virginia	30852
31	73153 Jayne Way	Apt. 319	North Dorthyton	Maryland	74270
32	937 Gerhold Harbor	Apt. 416	Lake Marshall	North Carolina	57334-8001
33	83747 Cleve Prairie	Apt. 135	Bernhardmouth	Hawaii	71511
34	4686 Cindy Springs	Apt. 192	South Eleonore	Colorado	69505-7895
35	4689 Ella Points	Apt. 355	South Shayna	North Carolina	25755-6707
36	351 Bernier Course	Suite 724	Schneiderland	Virginia	24063
37	499 Dedrick Avenue	Apt. 484	Alekville	Nevada	74314-2784
38	07778 Everette Course	Suite 507	Lake Jordimouth	Tennessee	45852-7640
39	2157 Ona Ramp	Apt. 387	Batzview	Missouri	30490-1973
40	624 Thiel Cove	Suite 666	Lake Royaltown	Mississippi	58372-8446
41	284 Ellie Flat	Suite 746	South Lavon	New York	13372
42	366 Lesch Centers	Apt. 072	East Alburgh	Missouri	86497-9179
43	4816 Robel Crescent	Suite 638	East Rogermouth	Georgia	68891
44	015 Barrows Viaduct	Suite 550	Bennieview	Missouri	62353
45	13855 Walsh Point	Suite 309	Rahulfort	Alaska	67025
46	9866 Landen Drive	Suite 610	Port Bonnie	Arkansas	79267-3494
47	3429 Donnie Passage	Suite 854	West Ines	West Virginia	85063-5856
48	335 Reynolds Estates	Apt. 162	South Xzavierfort	Mississippi	14525
49	102 Lynn Spur	Suite 865	Wisozkland	Tennessee	47214-1759
50	27476 Heaney Square	Suite 232	Lake Chanelshire	Virginia	04102
51	221 Wyman Manor	Apt. 611	West Bailee	Illinois	14279
52	999 Sipes Estates	Apt. 843	Faehaven	Maryland	30180
53	733 Stokes Garden	Apt. 289	Koeppchester	Washington	57097-6803
54	73969 Giovanna River	Suite 362	South Rodrickport	New York	98289-7151
55	775 Albertha Extensions	Apt. 533	New Lolitashire	Kentucky	73998-7275
56	15938 Ena Plains	Suite 541	West Vernerburgh	Delaware	62347
57	5287 Wilton Springs	Suite 959	South Jaleelton	Illinois	87336
58	361 Jaime Unions	Suite 671	Ondrickashire	Connecticut	18129
59	9731 Porter Dam	Apt. 331	Johnstonland	Connecticut	72410
60	2557 Lorena Radial	Apt. 031	Herminiastad	South Carolina	29478-7745
61	06733 Johns Spur	Suite 041	New Korey	Texas	46335-8422
62	012 Marlene Club	Apt. 487	Orvillebury	New Hampshire	54769
63	88108 Tyrese Pike	Apt. 374	South Feltonstad	Wyoming	88300-9607
64	147 Claudia Lake	Apt. 431	Parisianville	Massachusetts	29357
65	50643 Jaylin Junction	Suite 728	New Sigmund	Michigan	35821-5191
66	387 Schmeler Junctions	Apt. 223	West Amaramouth	Maine	11519
67	248 Morissette Hollow	Suite 972	Hirtheside	North Dakota	86771
68	37313 Tony Fall	Apt. 190	Leannonmouth	Iowa	64960
69	92198 Jeremie Islands	Suite 042	Mullerberg	Iowa	34565
70	31896 Davis Ports	Apt. 787	Judyside	Tennessee	31778-7962
71	0764 Stephania Mission	Suite 140	Lockmanburgh	Hawaii	27582
72	812 Mozell Divide	Apt. 751	Port Shanafort	Mississippi	77170
73	04683 Linwood Dam	Suite 038	Lake Ruthieville	Montana	68197-9813
74	652 Mathias Locks	Suite 698	West Kaylahhaven	Kentucky	37627
75	60682 Emery Land	Suite 081	Lake Elijahberg	Kansas	40990
78	762 Volkman Port	Suite 905	North Peytonfurt	California	69653-0041
77	971 Zemlak Cliff	Suite 724	Lake Xzavierburgh	California	98066-6003
76	3036 Sharon Underpass	Apt. 922	Lake Gilbertville	Oregon	11842-5772
79	38516 Barrows Knolls	Apt. 086	South Ednahaven	Montana	48132-8140
80	870 Earl Forest	Apt. 649	Altenwerthton	Louisiana	36365-3214
81	383 Santina Lights	Suite 938	Port Albertaberg	Idaho	36236
82	662 Dorthy Summit	Apt. 845	South Floyd	Minnesota	18417-5741
83	23768 Gulgowski Center	Suite 452	Trentonshire	Mississippi	46341-2920
84	42502 Melvin Square	Apt. 589	Goodwinborough	Alabama	86894
85	1178 Ayana Orchard	Suite 868	Schroedershire	Colorado	95578
86	193 Bode Wall	Suite 319	Santiagoburgh	Hawaii	30211
87	26576 Collins Expressway	Apt. 767	Port Skylar	New Jersey	35152
91	83395 Goldner Island	Apt. 589	South Leonelborough	South Dakota	57438
95	6104 King Rapid	Apt. 798	West Marisa	South Carolina	55315
99	08831 Ronny Groves	Suite 696	West Raheem	West Virginia	51281-1883
88	8327 Willms Estate	Suite 973	Bayleeville	Virginia	80990
92	979 Kuphal Locks	Apt. 669	Langoshfort	Connecticut	98924-8719
96	7868 Hane Tunnel	Apt. 968	Rauville	South Carolina	39986
100	677 McKenzie Garden	Apt. 546	Kinghaven	Wisconsin	52535
89	78008 Cameron Cliff	Suite 162	West Anyabury	New York	07634
93	22091 Damien Lock	Apt. 461	Lake Helmerstad	Massachusetts	83579
97	78287 Kiehn Ways	Suite 677	East Philipfort	Maine	32655-3750
90	20961 Prosacco Estate	Apt. 711	North Morton	New Hampshire	94683
94	934 Lang Overpass	Suite 404	New Jenifer	Tennessee	53764-4493
98	979 Clinton Course	Apt. 761	Elouisemouth	Colorado	68250
\.


--
-- Data for Name: customerOrders; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public."customerOrders" ("orderId", "customerId") FROM stdin;
1	14
4	36
3	26
2	45
5	18
6	37
7	36
8	38
9	36
10	47
11	40
12	30
13	44
14	12
15	4
16	21
17	22
18	23
19	29
20	4
21	37
22	17
23	26
24	32
25	33
26	4
27	4
28	4
29	4
30	5
31	5
32	6
33	8
34	9
35	10
36	10
37	12
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public.customers (id, "firstName", "lastName", email, "addressId", "phoneNumber", password) FROM stdin;
1	Rudolph	Morissette	Porter_Hauck20@gmail.com	1	1-276-798-7411	remoulade
2	Matt	Bechtelar	Turner52@gmail.com	2	(060) 655-5123	remoulade
3	Angelita	Wisoky	Ottilie.Hayes@hotmail.com	3	1-364-003-2002	remoulade
4	Jada	Reynolds	Clyde.Trantow99@yahoo.com	4	959.902.6946 x4420	remoulade
5	Mathias	Bosco	Reece49@gmail.com	5	(371) 954-7630	remoulade
6	Pete	Ziemann	Evert91@gmail.com	6	936.450.1663	remoulade
7	Elwyn	Fisher	Amy.Weber@yahoo.com	7	(658) 485-0759	remoulade
8	Shayne	Dickens	Alayna.Toy@hotmail.com	8	1-365-800-9221 x93394	remoulade
9	Reed	Kassulke	Augustus_Pacocha77@gmail.com	9	703-525-9544	remoulade
10	Kenton	Carroll	Deondre71@hotmail.com	10	218.826.1954 x64140	remoulade
11	Jocelyn	Grant	Brisa_Kovacek@hotmail.com	11	1-864-888-9289	remoulade
12	Clifford	Steuber	Anabelle_Mosciski27@hotmail.com	12	1-414-141-2535	remoulade
13	Roel	Kirlin	Zachary.Murray46@hotmail.com	13	117-829-7739 x290	remoulade
14	Coby	Purdy	Lois.Bernhard31@yahoo.com	14	663.846.7521 x14074	remoulade
15	Titus	Langworth	Obie_Bode@hotmail.com	15	838.687.5746 x04635	remoulade
16	Eino	Treutel	Branson.Hackett@gmail.com	16	494-226-9887	remoulade
17	Quinn	Windler	Emiliano98@hotmail.com	17	810.957.8386 x6887	remoulade
18	Lorena	Kihn	Taryn_Jerde@gmail.com	18	(840) 108-6678	remoulade
19	Sophia	Wiegand	Pierce71@gmail.com	19	1-921-213-7244 x32120	remoulade
20	Ruben	Baumbach	Adrianna_Kulas43@yahoo.com	20	1-760-227-6258 x677	remoulade
21	Kolby	Dooley	Abraham86@yahoo.com	21	1-432-891-8392	remoulade
22	Daniela	Swift	Benny8@hotmail.com	22	1-567-399-8243 x460	remoulade
23	Alexandria	Goodwin	Eileen_Becker54@yahoo.com	23	1-604-053-7426	remoulade
24	Muriel	Hackett	Terry.Walsh@yahoo.com	24	(933) 753-3391 x485	remoulade
25	Emmett	Schulist	Ubaldo54@gmail.com	25	627-105-2526	remoulade
26	Winfield	Blick	Zoila.Cormier9@hotmail.com	51	006.145.0148 x5086	remoulade
27	Taya	Nicolas	Sadie.Bogisich82@gmail.com	53	1-444-024-2059 x79023	remoulade
28	Akeem	Hammes	Bert27@hotmail.com	52	113.508.9055	remoulade
29	Cali	McCullough	Ebba.Hayes50@hotmail.com	54	873-567-9489 x472	remoulade
30	Jerrell	Ullrich	Marcelo79@yahoo.com	55	1-790-122-1448	remoulade
31	Zella	Walsh	Bennett_Frami91@gmail.com	56	206-153-4716 x038	remoulade
32	Darlene	Eichmann	Devin_Gerlach@hotmail.com	57	1-633-724-9460	remoulade
33	Antonina	Lemke	Donnell.Howe94@hotmail.com	58	119-979-5948 x39632	remoulade
34	Odie	Weber	Jayda_Jacobson16@yahoo.com	59	(341) 394-6062 x32341	remoulade
35	Gideon	Bailey	Quinten_Kihn@yahoo.com	60	042.755.5675	remoulade
36	Jedediah	Cummings	Jameson.Hansen5@gmail.com	61	1-904-087-7612 x098	remoulade
37	Garett	Hagenes	Brady_Walter42@gmail.com	62	535-206-4662	remoulade
38	Rupert	Kozey	Ebba70@hotmail.com	63	421.808.3040	remoulade
39	Dane	Weber	Isabella58@yahoo.com	64	484.731.9575 x744	remoulade
40	Faye	Mueller	Dusty.Heidenreich@gmail.com	65	681-615-8924	remoulade
41	Brenda	Welch	Alessandro_Kessler1@hotmail.com	66	(337) 584-8849 x1714	remoulade
42	Bernadette	Daugherty	Napoleon48@hotmail.com	67	(786) 520-4143	remoulade
43	Kendrick	Hoeger	Cleora84@hotmail.com	68	508-954-4287 x9222	remoulade
44	Idella	Weber	Haylee_Wilkinson53@hotmail.com	69	(730) 231-1256	remoulade
45	Cleve	Wuckert	Armand.Rolfson94@gmail.com	70	152.048.4512 x632	remoulade
46	Newell	Leuschke	Ansel53@yahoo.com	71	1-820-406-5517 x856	remoulade
47	Donavon	Purdy	Laisha_Stehr74@hotmail.com	72	053.224.2988 x8374	remoulade
48	Orval	Schuppe	Danika_Pfeffer@hotmail.com	73	819.152.7958 x800	remoulade
49	Kathleen	Koss	Kade.Veum@hotmail.com	74	429.045.4586 x6550	remoulade
50	Linwood	Dooley	Giles.Kiehn97@gmail.com	75	591.607.9435 x095	remoulade
\.


--
-- Data for Name: orderProducts; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public."orderProducts" ("orderProductId", "productId", "productQty", "orderId") FROM stdin;
1	140	5	23
2	115	8	6
3	77	12	4
4	87	5	3
5	78	9	8
6	87	11	10
7	129	12	18
8	79	4	19
9	181	6	8
10	88	8	9
11	91	13	15
12	80	1	6
13	187	4	17
14	154	7	6
15	136	6	11
16	160	1	13
17	167	4	20
18	178	7	6
19	175	7	24
20	164	14	6
21	187	7	11
22	166	2	19
23	119	7	4
24	133	4	16
25	168	3	25
26	154	14	19
27	79	7	24
28	158	4	8
29	112	11	21
30	143	1	17
31	185	11	21
32	145	1	3
33	90	1	11
34	102	12	5
35	107	1	20
36	101	5	6
37	126	15	1
38	77	6	10
39	85	6	2
40	180	9	19
41	148	13	15
42	141	15	5
43	90	6	9
44	112	13	10
45	157	7	23
46	107	12	23
47	167	4	8
48	112	6	11
49	103	11	8
50	103	15	24
51	170	5	18
52	165	9	16
53	170	2	22
54	89	4	11
55	134	11	24
56	127	6	24
57	79	14	11
58	84	2	23
59	179	3	5
60	122	12	25
61	143	6	20
62	141	3	12
63	85	14	10
64	81	5	7
65	104	11	19
66	149	6	20
67	164	15	14
68	165	11	8
69	127	2	8
70	106	1	16
71	118	14	19
72	163	10	5
73	123	13	4
74	79	9	18
75	121	14	14
76	82	8	24
77	83	5	11
78	91	7	23
79	153	3	4
80	190	15	25
81	155	4	24
82	121	2	20
83	145	7	9
84	184	4	17
85	130	13	14
86	113	15	22
87	126	12	13
88	127	12	24
89	175	8	7
90	153	15	17
91	188	7	8
92	154	9	16
93	160	8	2
94	137	4	13
95	107	12	20
96	110	11	19
97	172	15	18
98	175	9	8
99	190	3	17
100	126	10	14
101	77	6	28
102	78	2	28
103	79	6	29
104	80	2	29
105	81	6	30
106	80	2	30
107	81	6	31
108	82	2	31
109	83	2	31
110	84	2	31
111	85	2	31
112	86	2	31
113	81	6	32
114	82	2	32
115	83	2	32
116	84	2	32
117	85	2	32
118	86	2	32
119	81	6	33
120	82	2	33
121	83	2	33
122	84	2	33
123	85	2	33
124	86	2	33
125	81	6	34
126	82	2	34
127	83	2	34
128	84	2	34
129	85	2	34
130	86	2	34
131	81	6	35
132	82	2	35
133	83	2	35
134	84	2	35
135	85	2	35
136	86	2	35
137	81	6	36
138	82	2	36
139	83	2	36
140	84	2	36
141	85	2	36
142	86	2	36
143	80	7	37
144	82	2	37
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public.products ("productId", name, description, price, weight) FROM stdin;
191	Gorgeous Cotton Keyboard	ErgonomicGranite	9900	15
76	Awesome Fresh Shoes	TastySoft	76286	13
77	Handmade Cotton Shoes	GorgeousSoft	94610	48
78	Generic Frozen Table	GorgeousGranite	20699	45
79	Tasty Metal Keyboard	AwesomeConcrete	15397	14
80	Handcrafted Cotton Shoes	RusticFrozen	48174	46
81	Gorgeous Soft Chips	IncredibleGranite	22273	47
83	Refined Soft Gloves	AwesomeFrozen	51723	30
82	Fantastic Metal Bike	SleekFrozen	49960	13
84	Gorgeous Cotton Hat	ErgonomicSteel	43183	4
85	Gorgeous Steel Bike	IncredibleFrozen	48355	28
86	Refined Fresh Sausages	RusticGranite	57235	43
87	Ergonomic Cotton Chair	LicensedSoft	93787	25
89	Ergonomic Steel Tuna	HandcraftedSoft	49506	38
88	Incredible Steel Shirt	PracticalWooden	36906	28
90	Ergonomic Steel Pants	FantasticPlastic	76708	2
91	Rustic Frozen Bike	SleekMetal	60010	8
92	Fantastic Granite Mouse	GenericConcrete	61553	12
93	Incredible Granite Shirt	SmallRubber	88890	23
94	Ergonomic Frozen Tuna	RusticConcrete	67880	37
97	Practical Steel Mouse	HandcraftedWooden	51643	41
101	Rustic Cotton Soap	AwesomeConcrete	37376	48
106	Small Granite Shoes	SleekFrozen	31310	33
110	Handcrafted Steel Table	SleekSoft	45629	18
113	Intelligent Plastic Chicken	GorgeousRubber	13196	41
117	Gorgeous Concrete Chair	IntelligentGranite	92523	13
121	Handcrafted Concrete Tuna	GorgeousFresh	85205	8
125	Sleek Wooden Pants	GenericFrozen	62339	31
129	Intelligent Concrete Car	IncrediblePlastic	6277	15
131	Handcrafted Rubber Salad	RefinedConcrete	68007	38
139	Awesome Fresh Car	AwesomeFresh	34085	2
143	Handcrafted Soft Towels	GenericFrozen	32182	14
147	Incredible Wooden Chips	RefinedGranite	38932	4
151	Awesome Fresh Cheese	TastyFresh	65622	25
155	Generic Fresh Towels	SleekCotton	72520	4
159	Practical Frozen Towels	IncredibleGranite	93149	7
163	Fantastic Steel Computer	SleekWooden	89879	35
166	Gorgeous Plastic Mouse	IntelligentFrozen	54508	14
170	Fantastic Fresh Fish	TastyGranite	19013	13
174	Fantastic Concrete Pizza	GenericConcrete	5176	28
178	Fantastic Fresh Bacon	LicensedMetal	56456	47
182	Gorgeous Plastic Shoes	TastyPlastic	5234	36
186	Rustic Concrete Shoes	RefinedConcrete	42557	6
190	Rustic Metal Chips	AwesomeMetal	54649	7
95	Practical Concrete Ball	HandmadeGranite	79179	27
99	Unbranded Steel Ball	LicensedRubber	8169	22
103	Refined Soft Table	HandcraftedConcrete	85166	28
107	Handcrafted Fresh Table	HandmadeWooden	61745	8
108	Incredible Steel Shirt	HandmadeGranite	66585	12
112	Incredible Steel Ball	IncredibleWooden	84660	13
116	Ergonomic Granite Chicken	LicensedPlastic	94545	46
120	Handmade Cotton Table	HandmadeRubber	24791	33
126	Fantastic Steel Car	PracticalRubber	12145	33
130	Handmade Metal Mouse	LicensedGranite	20684	26
138	Small Wooden Fish	SmallConcrete	63286	6
142	Unbranded Rubber Chair	AwesomeFresh	65871	31
146	Incredible Steel Hat	SmallFrozen	77944	50
150	Generic Granite Salad	UnbrandedPlastic	87494	35
154	Handmade Fresh Pants	TastyCotton	20112	35
158	Incredible Rubber Hat	FantasticPlastic	25207	27
162	Sleek Cotton Fish	FantasticCotton	85922	17
167	Handmade Concrete Hat	GorgeousSoft	4674	48
171	Practical Soft Chair	LicensedCotton	59412	22
175	Small Metal Ball	IncredibleConcrete	24235	45
179	Unbranded Granite Sausages	UnbrandedWooden	60913	4
183	Generic Granite Chicken	PracticalGranite	26297	48
187	Unbranded Steel Fish	ErgonomicFrozen	8894	11
134	Branded Rubber Tuna	SleekFrozen	999999999	22
96	Awesome Cotton Chips	TastyWooden	7014	30
100	Gorgeous Rubber Cheese	HandmadeWooden	44872	21
105	Handcrafted Steel Soap	ErgonomicCotton	81440	37
109	Intelligent Steel Mouse	SmallFrozen	37213	33
114	Intelligent Rubber Fish	RefinedSoft	5725	10
118	Intelligent Wooden Towels	PracticalRubber	85916	27
122	Small Granite Chips	HandcraftedConcrete	87732	39
124	Handcrafted Frozen Computer	AwesomeFresh	64215	23
128	Small Steel Chicken	LicensedConcrete	44681	4
132	Rustic Cotton Cheese	SleekSteel	2488	42
137	Handmade Wooden Table	RusticFresh	3246	15
140	Incredible Soft Mouse	UnbrandedPlastic	70983	40
144	Gorgeous Rubber Soap	PracticalMetal	12487	37
148	Generic Fresh Ball	AwesomeWooden	3103	10
153	Refined Wooden Bacon	ErgonomicPlastic	98524	47
156	Handmade Frozen Tuna	RusticSteel	49739	37
160	Tasty Fresh Towels	ErgonomicCotton	60192	33
164	Generic Granite Mouse	SleekFrozen	29134	8
168	Rustic Plastic Cheese	FantasticConcrete	55053	8
172	Ergonomic Metal Fish	GorgeousMetal	44500	37
176	Intelligent Steel Chicken	GenericMetal	57014	47
180	Gorgeous Steel Cheese	TastyGranite	64549	39
184	Rustic Cotton Chicken	SleekWooden	44222	18
188	Refined Steel Hat	RefinedFrozen	23039	6
98	Generic Rubber Pizza	UnbrandedSteel	49984	23
102	Awesome Concrete Gloves	UnbrandedCotton	75350	11
104	Licensed Granite Bacon	ErgonomicGranite	57727	19
111	Rustic Soft Sausages	PracticalMetal	80604	13
115	Intelligent Rubber Towels	IntelligentFresh	2684	19
119	Tasty Steel Tuna	GenericWooden	93459	33
123	Sleek Frozen Table	GenericCotton	19726	15
127	Small Plastic Gloves	PracticalPlastic	40037	17
136	Gorgeous Rubber Hat	SmallSoft	23788	37
141	Unbranded Soft Car	SmallFrozen	65077	31
145	Generic Steel Pants	GenericPlastic	85929	39
149	Intelligent Rubber Bacon	PracticalFrozen	59294	31
152	Handcrafted Rubber Cheese	HandcraftedConcrete	5306	33
157	Sleek Frozen Table	GenericSteel	78996	43
161	Intelligent Soft Keyboard	IntelligentFrozen	46093	30
165	Gorgeous Granite Hat	HandmadePlastic	40679	9
169	Ergonomic Plastic Fish	HandmadeFresh	45862	5
173	Awesome Plastic Table	ErgonomicWooden	61603	36
177	Refined Concrete Table	HandcraftedRubber	72725	28
181	Practical Granite Table	SmallFrozen	93640	20
185	Generic Fresh Car	TastyPlastic	52603	15
189	Unbranded Metal Pants	SleekFresh	28315	33
133	Rustic Rubber Gloves	SleekWooden	9999999999999	12
\.


--
-- Data for Name: warehouseInventory; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public."warehouseInventory" ("productId", "warehouseId", quantity) FROM stdin;
170	17	437
169	1	2222
89	22	227
92	12	267
100	14	831
121	14	2344
188	5	3
154	9	1028
139	21	659
109	19	358
151	5	1373
184	24	1215
129	7	2473
130	23	1934
82	9	2301
104	5	1118
106	24	25
179	5	1706
158	20	628
79	20	302
82	12	1310
108	18	1749
163	7	2316
178	13	940
141	23	559
76	5	2377
77	12	1022
161	18	794
156	7	2234
102	16	2075
150	1	580
77	10	1067
179	6	1906
169	14	1376
132	5	1716
97	7	2467
119	11	1291
146	11	734
121	10	821
152	13	1237
169	13	41
\.


--
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: graphquill
--

COPY public.warehouses ("warehouseId", name, "addressId") FROM stdin;
5	Games	30
9	Jewelery	34
13	Shoes	38
17	Movies	42
21	Jewelery	46
25	Shoes	50
6	Automotive	31
11	Games	36
15	Clothing	40
18	Music	43
23	Computers	48
27	Grocery	78
33	Outdoors	83
37	Beauty	87
41	Movies	91
45	Movies	95
49	Games	99
51	stephanie's warehouse	70
57	ALEX	28
26	Electronics	76
30	Automotive	80
34	Computers	84
38	Outdoors	88
42	Tools	92
46	Health	96
50	Jewelery	100
52	stephanie's warehouse	70
58	ALEX	28
28	Industrial	77
32	Computers	82
36	Jewelery	86
40	Baby	90
44	Tools	94
48	Jewelery	98
53	stephanie's warehouse	70
29	Electronics	79
31	Music	81
35	Electronics	85
39	Electronics	89
43	Computers	93
47	Toys	97
54	stephanie's warehouse	70
55	ABIGAIL's warehouse	74
56	lucy's warehouse	74
1	Shoes	26
7	Home	32
10	Health	35
14	Toys	39
19	Computers	44
22	Games	47
8	Tools	33
12	Computers	37
16	Sports	41
20	Movies	45
24	Clothing	49
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public.addresses_id_seq', 100, true);


--
-- Name: customerOrders_orderId_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public."customerOrders_orderId_seq"', 37, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public.customers_id_seq', 50, true);


--
-- Name: orderProducts_productOrderId_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public."orderProducts_productOrderId_seq"', 144, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public.products_id_seq', 191, true);


--
-- Name: warehouses_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: graphquill
--

SELECT pg_catalog.setval('public.warehouses_warehouse_id_seq', 58, true);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: customerOrders customerOrders_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."customerOrders"
    ADD CONSTRAINT "customerOrders_pkey" PRIMARY KEY ("orderId");


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: orderProducts orderProducts_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."orderProducts"
    ADD CONSTRAINT "orderProducts_pkey" PRIMARY KEY ("orderProductId");


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY ("productId");


--
-- Name: warehouseInventory warehouseInventory_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."warehouseInventory"
    ADD CONSTRAINT "warehouseInventory_pkey" PRIMARY KEY ("productId", "warehouseId");


--
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY ("warehouseId");


--
-- Name: customers addressconstraint; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT addressconstraint FOREIGN KEY ("addressId") REFERENCES public.addresses(id) ON DELETE CASCADE;


--
-- Name: customerOrders customerOrders_customerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."customerOrders"
    ADD CONSTRAINT "customerOrders_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: orderProducts orderProducts_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."orderProducts"
    ADD CONSTRAINT "orderProducts_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public."customerOrders"("orderId");


--
-- Name: orderProducts orderProducts_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."orderProducts"
    ADD CONSTRAINT "orderProducts_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products("productId");


--
-- Name: warehouseInventory warehouseInvProdIdFKey; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."warehouseInventory"
    ADD CONSTRAINT "warehouseInvProdIdFKey" FOREIGN KEY ("productId") REFERENCES public.products("productId") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: warehouseInventory warehouseInvWarehouseIdFKey; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public."warehouseInventory"
    ADD CONSTRAINT "warehouseInvWarehouseIdFKey" FOREIGN KEY ("warehouseId") REFERENCES public.warehouses("warehouseId") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: warehouses warehouse_address_id; Type: FK CONSTRAINT; Schema: public; Owner: graphquill
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouse_address_id FOREIGN KEY ("addressId") REFERENCES public.addresses(id) ON UPDATE CASCADE ON DELETE CASCADE;


REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM graphquill;
GRANT ALL ON SCHEMA public TO graphquill;
GRANT ALL ON SCHEMA public TO PUBLIC;

--
-- PostgreSQL database dump complete
--