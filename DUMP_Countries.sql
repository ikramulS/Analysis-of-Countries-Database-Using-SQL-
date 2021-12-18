--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-18 11:07:29

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
-- TOC entry 217 (class 1259 OID 16498)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    name character varying NOT NULL,
    country_code character varying,
    city_proper_pop real,
    metroarea_pop real,
    urbanarea_pop real
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16404)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    code character varying NOT NULL,
    name character varying,
    continent character varying,
    region character varying,
    surface_area real,
    indep_year integer,
    local_name character varying,
    gov_form character varying,
    capital character varying,
    cap_long real,
    cap_lat real
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16439)
-- Name: countries_plus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries_plus (
    name character varying,
    continent character varying,
    code character varying NOT NULL,
    surface_area real,
    geosize_group character varying
);


ALTER TABLE public.countries_plus OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16425)
-- Name: currencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currencies (
    curr_id integer NOT NULL,
    code character varying,
    basic_unit character varying,
    curr_code character varying,
    frac_unit character varying,
    frac_perbasic real
);


ALTER TABLE public.currencies OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16418)
-- Name: economies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economies (
    econ_id integer NOT NULL,
    code character varying,
    year integer,
    income_group character varying,
    gdp_percapita real,
    gross_savings real,
    inflation_rate real,
    total_investment real,
    unemployment_rate real,
    exports real,
    imports real
);


ALTER TABLE public.economies OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16446)
-- Name: economies2010; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economies2010 (
    code character varying NOT NULL,
    year integer,
    income_group character varying,
    gross_savings real
);


ALTER TABLE public.economies2010 OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16453)
-- Name: economies2015; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economies2015 (
    code character varying NOT NULL,
    year integer,
    income_group character varying,
    gross_savings real
);


ALTER TABLE public.economies2015 OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16411)
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    lang_id integer NOT NULL,
    code character varying,
    name character varying,
    percent real,
    official boolean
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16432)
-- Name: populations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.populations (
    pop_id integer NOT NULL,
    country_code character varying,
    year integer,
    fertility_rate real,
    life_expectancy real,
    size real
);


ALTER TABLE public.populations OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 16498)
-- Dependencies: 217
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (name, country_code, city_proper_pop, metroarea_pop, urbanarea_pop) FROM stdin;
Abidjan	CIV	4.765e+06	\N	4.765e+06
Abu Dhabi	ARE	1.145e+06	\N	1.145e+06
Abuja	NGA	1.23588e+06	6e+06	1.23588e+06
Accra	GHA	2.070463e+06	4.010054e+06	2.070463e+06
Addis Ababa	ETH	3.103673e+06	4.567857e+06	3.103673e+06
Ahmedabad	IND	5.570585e+06	\N	5.570585e+06
Alexandria	EGY	4.616625e+06	\N	4.616625e+06
Algiers	DZA	3.415811e+06	5e+06	3.415811e+06
Almaty	KAZ	1.703481e+06	\N	1.703481e+06
Ankara	TUR	5.271e+06	4.585e+06	5.271e+06
Auckland	NZL	1.495e+06	1.6143e+06	1.495e+06
Baghdad	IRQ	7.180889e+06	\N	7.180889e+06
Baku	AZE	3.2023e+06	4.30874e+06	3.2023e+06
Bandung	IDN	2.575478e+06	6.965655e+06	2.575478e+06
Bangkok	THA	8.280925e+06	1.4998e+07	8.280925e+06
Barcelona	ESP	1.604555e+06	5.375774e+06	1.604555e+06
Barranquilla	COL	1.386865e+06	2.370753e+06	1.386865e+06
Basra	IRQ	2.75e+06	\N	2.75e+06
Beijing	CHN	2.1516e+07	2.49e+07	2.1516e+07
Belo Horizonte	BRA	2.502557e+06	5.156217e+06	2.502557e+06
Bengaluru	IND	8.42597e+06	9.807e+06	8.42597e+06
Berlin	DEU	3.517424e+06	5.871022e+06	3.517424e+06
Bhopal	IND	1.798218e+06	1.864389e+06	1.798218e+06
Birmingham	GBR	1.1113e+06	3.683e+06	1.1113e+06
Bogota	COL	7.878783e+06	9.8e+06	7.878783e+06
Brasilia	BRA	2.556149e+06	3.919864e+06	2.556149e+06
Brazzaville	COG	1.827e+06	\N	1.827e+06
Brisbane	AUS	1.180285e+06	2.349699e+06	1.180285e+06
Bucharest	ROM	1.883425e+06	2.272163e+06	1.883425e+06
Budapest	HUN	1.759407e+06	2.927944e+06	1.759407e+06
Buenos Aires	ARG	3.0543e+06	1.4122e+07	3.0543e+06
Busan	KOR	3.510833e+06	8.202239e+06	3.510833e+06
Cairo	EGY	1.023035e+07	1.829e+07	1.023035e+07
Calgary	CAN	1.235171e+06	1.214839e+06	1.235171e+06
Cali	COL	2.400653e+06	3.4e+06	2.400653e+06
Caloocan	PHL	1.583978e+06	\N	1.583978e+06
Campinas	BRA	1.164098e+06	3.094181e+06	1.164098e+06
Cape Town	ZAF	3.740026e+06	\N	3.740026e+06
Caracas	VEN	1.943901e+06	2.923959e+06	1.943901e+06
Casablanca	MAR	5.117832e+06	6.861739e+06	5.117832e+06
Changchun	CHN	3.81527e+06	7.674439e+06	3.81527e+06
Changsha	CHN	7.044118e+06	\N	7.044118e+06
Chaozhou	CHN	2.669844e+06	\N	2.669844e+06
Chengdu	CHN	4.741929e+06	1.0376e+07	4.741929e+06
Chennai	IND	7.088e+06	\N	7.088e+06
Chicago	USA	2.695598e+06	9.156e+06	2.695598e+06
Chittagong	BGD	2.581643e+06	4.009423e+06	2.581643e+06
Chongqing	CHN	8.1898e+06	5.21001e+07	8.1898e+06
Cologne	DEU	1.057327e+06	3.5735e+06	1.057327e+06
Cordoba	ARG	1.330023e+06	1.528e+06	1.330023e+06
Curitiba	BRA	1.879355e+06	3.4e+06	1.879355e+06
Daegu	KOR	2.492994e+06	\N	2.492994e+06
Daejeon	KOR	1.535028e+06	\N	1.535028e+06
Dakar	SEN	1.146053e+06	2.452656e+06	1.146053e+06
Dalian	CHN	2.146099e+06	5.935638e+06	2.146099e+06
Dallas	USA	1.317929e+06	7.233323e+06	1.317929e+06
Dar es Salaam	TZA	4.364541e+06	\N	4.364541e+06
Davao City	PHL	1.632991e+06	2.516216e+06	1.632991e+06
Delhi	IND	1.678794e+07	2.4998e+07	1.678794e+07
Dhaka	BGD	1.4543124e+07	\N	1.4543124e+07
Dongguan	CHN	8.220207e+06	\N	8.220207e+06
Douala	CMR	2.446945e+06	\N	2.446945e+06
Dubai	ARE	2.64341e+06	\N	2.64341e+06
Durban	ZAF	3.442361e+06	\N	3.442361e+06
Ekurhuleni	ZAF	3.17847e+06	\N	3.17847e+06
Faisalabad	PAK	6.480765e+06	3.675e+06	6.480765e+06
Fez	MAR	1.112072e+06	\N	1.112072e+06
Fortaleza	BRA	2.609716e+06	4.019213e+06	2.609716e+06
Foshan	CHN	6.151622e+06	\N	6.151622e+06
Fukuoka	JPN	1.483052e+06	5.590378e+06	1.483052e+06
Fuzhou	CHN	7.115369e+06	\N	7.115369e+06
Giza	EGY	4.239988e+06	\N	4.239988e+06
Guadalajara	MEX	1.495189e+06	4.424252e+06	1.495189e+06
Guangzhou	CHN	1.40435e+07	4.4259e+07	1.40435e+07
Guatemala City	GTM	2.1101e+06	4.5e+06	2.1101e+06
Guayaquil	ECU	3.6e+06	5e+06	3.6e+06
Gujranwala	PAK	2.700003e+06	\N	2.700003e+06
Hamburg	DEU	1.787408e+06	\N	1.787408e+06
Hangzhou	CHN	3.560391e+06	\N	3.560391e+06
Hanoi	VNM	6.8441e+06	\N	6.8441e+06
Harare	ZWE	1.606e+06	\N	1.606e+06
Harbin	CHN	4.280701e+06	1.0635971e+07	4.280701e+06
Havana	CUB	2.106146e+06	\N	2.106146e+06
Hefei	CHN	3.352076e+06	\N	3.352076e+06
Hiroshima	JPN	1.196274e+06	\N	1.196274e+06
Ho Chi Minh City	VNM	7.6817e+06	\N	7.6817e+06
Hong Kong	CHN	7.3749e+06	\N	7.3749e+06
Houston	USA	2.489558e+06	6.49018e+06	2.489558e+06
Hyderabad (India)	IND	7.85925e+06	\N	7.85925e+06
Hyderabad	PAK	3.429471e+06	\N	3.429471e+06
Ibadan	NGA	1.338659e+06	2.837e+06	1.338659e+06
Incheon	KOR	2.978367e+06	\N	2.978367e+06
Isfahan	IRN	2.243249e+06	\N	2.243249e+06
Islamabad	PAK	1.9e+06	2.2e+06	1.9e+06
Istanbul	TUR	1.4025e+07	1.352e+07	1.4025e+07
Izmir	TUR	4.168e+06	3.019e+06	4.168e+06
Jaipur	IND	3.07335e+06	\N	3.07335e+06
Jakarta	IDN	1.007531e+07	3.0539e+07	1.007531e+07
Jeddah	SAU	3.456259e+06	\N	3.456259e+06
Jinan	CHN	2.009273e+06	5.853196e+06	2.009273e+06
Johannesburg	ZAF	4.434827e+06	\N	4.434827e+06
Kabul	AFG	3.4141e+06	\N	3.4141e+06
Kampala	UGA	1.50708e+06	\N	1.50708e+06
Kano	NGA	2.153225e+06	3.395e+06	2.153225e+06
Kanpur	IND	2.768057e+06	3.152317e+06	2.768057e+06
Kaohsiung	TWN	2.778918e+06	\N	2.778918e+06
Karachi	PAK	2.7506e+07	2.54e+07	2.7506e+07
Karaj	IRN	1.97347e+06	\N	1.97347e+06
Kawasaki	JPN	1.496035e+06	\N	1.496035e+06
Kharkov	UKR	1.439566e+06	1.65e+06	1.439566e+06
Khartoum	SDN	3.639598e+06	5.274321e+06	3.639598e+06
Kiev	UKR	2.908703e+06	\N	2.908703e+06
Kinshasa	COD	1.013e+07	1.3265e+07	1.013e+07
Kobe	JPN	1.536499e+06	\N	1.536499e+06
Kochi	IND	2.232456e+06	4.22114e+06	2.232456e+06
Kolkata	IND	4.486679e+06	1.4667e+07	4.486679e+06
Kuala Lumpur	MYS	1.768e+06	7.2e+06	1.768e+06
Kwangju	KOR	1.47778e+06	\N	1.47778e+06
Kyoto	JPN	1.47457e+06	\N	1.47457e+06
Lagos	NGA	1.6060303e+07	2.1e+07	1.6060303e+07
Lahore	PAK	1.0355e+07	1.3569e+07	1.0355e+07
Lanzhou	CHN	2.17713e+06	3.616163e+06	2.17713e+06
Lima	PER	8.852e+06	1.075e+07	8.852e+06
London	GBR	8.673713e+06	1.3879757e+07	8.673713e+06
Los Angeles	USA	3.884307e+06	1.5058e+07	3.884307e+06
Luanda	AGO	2.825311e+06	\N	2.825311e+06
Lucknow	IND	2.815601e+06	\N	2.815601e+06
Lusaka	ZMB	1.742979e+06	2.467467e+06	1.742979e+06
Madrid	ESP	3.207247e+06	\N	3.207247e+06
Makassar	IDN	1.338633e+06	1.976168e+06	1.338633e+06
Managua	NIC	2.560789e+06	\N	2.560789e+06
Mandalay	MMR	1.319452e+06	1.726889e+06	1.319452e+06
Manila	PHL	1.780148e+06	1.2877253e+07	1.780148e+06
Maputo	MOZ	1.766184e+06	1.766823e+06	1.766184e+06
Maracaibo	VEN	1.59994e+06	3.897655e+06	1.59994e+06
Mashhad	IRN	3.31209e+06	3.37266e+06	3.31209e+06
Medan	IDN	2.09761e+06	4.103696e+06	2.09761e+06
Medellin	COL	2.441123e+06	3.731447e+06	2.441123e+06
Mexico City	MEX	8.974724e+06	2.0063e+07	8.974724e+06
Milan	ITA	1.359905e+06	3.206465e+06	1.359905e+06
Minsk	BLR	1.959781e+06	\N	1.959781e+06
Monterrey	MEX	1.13096e+06	4.520329e+06	1.13096e+06
Montevideo	URY	1.305082e+06	1.947604e+06	1.305082e+06
Montreal	CAN	1.649519e+06	4.1271e+06	1.649519e+06
Moscow	RUS	1.2197596e+07	1.617e+07	1.2197596e+07
Multan	PAK	3.117e+06	\N	3.117e+06
Mumbai	IND	1.2478447e+07	1.7712e+07	1.2478447e+07
Munich	DEU	1.450381e+06	2.606021e+06	1.450381e+06
Nagoya	JPN	2.296014e+06	9.107414e+06	2.296014e+06
Nagpur	IND	2.405665e+06	2.49787e+06	2.405665e+06
Nairobi	KEN	3.138369e+06	\N	3.138369e+06
Nanjing	CHN	8.23e+06	3.436e+07	8.23e+06
New Taipei City	TWN	3.954929e+06	\N	3.954929e+06
New York City	USA	8.550405e+06	2.0182304e+07	8.550405e+06
Ningbo	CHN	3.491597e+06	7.639e+06	3.491597e+06
Nizhny Novgorod	RUS	1.250619e+06	\N	1.250619e+06
Novosibirsk	RUS	1.567087e+06	\N	1.567087e+06
Omsk	RUS	1.154116e+06	\N	1.154116e+06
Oran	DZA	1.560329e+06	3.454078e+06	1.560329e+06
Osaka	JPN	2.691742e+06	1.9341976e+07	2.691742e+06
Ouagadougou	BFA	2.2e+06	2.5e+06	2.2e+06
Palembang	IDN	1.708413e+06	\N	1.708413e+06
Paris	FRA	2.229621e+06	1.0601122e+07	2.229621e+06
Patna	IND	1.6832e+06	2.231554e+06	1.6832e+06
Peshawar	PAK	3.201e+06	\N	3.201e+06
Philadelphia	USA	1.567872e+06	6.069875e+06	1.567872e+06
Phnom Penh	KHM	2.234566e+06	\N	2.234566e+06
Phoenix	USA	1.563025e+06	4.574531e+06	1.563025e+06
Porto Alegre	BRA	1.476867e+06	\N	1.476867e+06
Prague	CZE	1.324e+06	\N	1.324e+06
Pune	IND	3.115431e+06	\N	3.115431e+06
Pyongyang	PRK	3.255388e+06	\N	3.255388e+06
Qingdao	CHN	6.1881e+06	9.0462e+06	6.1881e+06
Quanzhou	CHN	8.128533e+06	6.107475e+06	8.128533e+06
Quezon City	PHL	2.936116e+06	\N	2.936116e+06
Quito	ECU	2.671191e+06	4.7e+06	2.671191e+06
Rawalpindi	PAK	3.198911e+06	\N	3.198911e+06
Recife	BRA	1.555039e+06	3.743854e+06	1.555039e+06
Rio de Janeiro	BRA	6.429923e+06	1.2727e+07	6.429923e+06
Riyadh	SAU	5.676621e+06	\N	5.676621e+06
Rome	ITA	2.877215e+06	4.353775e+06	2.877215e+06
Rosario	ARG	1.193605e+06	1.276e+06	1.193605e+06
Rostov-on-Don	RUS	1.1199e+06	\N	1.1199e+06
Saint Petersburg	RUS	5.19169e+06	5.9e+06	5.19169e+06
Saitama	JPN	1.226656e+06	\N	1.226656e+06
Salvador	BRA	2.902927e+06	3.919864e+06	2.902927e+06
San Antonio	USA	1.469845e+06	2.454061e+06	1.469845e+06
San Diego	USA	1.394928e+06	3.095313e+06	1.394928e+06
Sana'a	YEM	1.937451e+06	2.167961e+06	1.937451e+06
Santa Cruz de la Sierra	BOL	1.453549e+06	1.749e+06	1.453549e+06
Santiago	CHL	5.743719e+06	\N	5.743719e+06
Sao Paulo	BRA	1.2038175e+07	2.1090792e+07	1.2038175e+07
Sapporo	JPN	1.918096e+06	2.58488e+06	1.918096e+06
Semarang	IDN	1.555984e+06	3.183516e+06	1.555984e+06
Seoul	KOR	9.995784e+06	1.27e+07	9.995784e+06
Shanghai	CHN	2.42568e+07	3.475e+07	2.42568e+07
Shantou	CHN	5.391028e+06	1.1535677e+07	5.391028e+06
Shenyang	CHN	8.106171e+06	\N	8.106171e+06
Shenzhen	CHN	1.07789e+07	\N	1.07789e+07
Shijiazhuang	CHN	4.3037e+06	1.07016e+07	4.3037e+06
Shiraz	IRN	1.869001e+06	\N	1.869001e+06
Singapore	SGP	5.535e+06	\N	5.535e+06
Surabaya	IDN	2.765487e+06	7.302283e+06	2.765487e+06
Surat	IND	4.462002e+06	\N	4.462002e+06
Suzhou	CHN	1.0650501e+07	\N	1.0650501e+07
T'bilisi	GEO	1.118035e+06	1.485293e+06	1.118035e+06
Tabriz	IRN	1.733033e+06	\N	1.733033e+06
Taichung	TWN	2.752413e+06	\N	2.752413e+06
Tainan	TWN	1.885252e+06	\N	1.885252e+06
Taipei	TWN	2.704974e+06	\N	2.704974e+06
Tangshan	CHN	3.187171e+06	7.536521e+06	3.187171e+06
Tashkent	UZB	2.3096e+06	\N	2.3096e+06
Tehran	IRN	8.154051e+06	1.3532e+07	8.154051e+06
Tianjin	CHN	6.859779e+06	1.54695e+07	6.859779e+06
Tijuana	MEX	1.696923e+06	1.895797e+06	1.696923e+06
Tokyo	JPN	1.3513734e+07	3.7843e+07	1.3513734e+07
Toronto	CAN	2.731571e+06	6.417516e+06	2.731571e+06
Tripoli	LBY	1.126e+06	2.267e+06	1.126e+06
Tunis	TUN	1.056247e+06	2.643695e+06	1.056247e+06
Ulsan	KOR	1.16369e+06	\N	1.16369e+06
Vienna	AUT	1.863881e+06	2.6e+06	1.863881e+06
Vijayawada	IND	1.491202e+06	\N	1.491202e+06
Visakhapatnam	IND	2.035922e+06	5.34e+06	2.035922e+06
Warsaw	POL	1.753977e+06	3.100844e+06	1.753977e+06
Wenzhou	CHN	3.039439e+06	\N	3.039439e+06
Wuhan	CHN	6.886253e+06	\N	6.886253e+06
Xi'an	CHN	8.7056e+06	1.35697e+07	8.7056e+06
Xiamen	CHN	3.531347e+06	5.114758e+06	3.531347e+06
Yangon	MMR	5.214e+06	\N	5.214e+06
Yaounde	CMR	2.440462e+06	\N	2.440462e+06
Yekaterinburg	RUS	1.428042e+06	\N	1.428042e+06
Yerevan	ARM	1.060138e+06	\N	1.060138e+06
Yokohama	JPN	3.726167e+06	\N	3.726167e+06
Zhengzhou	CHN	4.122087e+06	\N	4.122087e+06
Zhongshan	CHN	3.121275e+06	\N	3.121275e+06
Zunyi	CHN	6.127009e+06	\N	6.127009e+06
\.


--
-- TOC entry 3352 (class 0 OID 16404)
-- Dependencies: 209
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (code, name, continent, region, surface_area, indep_year, local_name, gov_form, capital, cap_long, cap_lat) FROM stdin;
AFG	Afghanistan	Asia	Southern and Central Asia	652090	1919	Afganistan/Afqanestan	Islamic Emirate	Kabul	69.1761	34.5228
NLD	Netherlands	Europe	Western Europe	41526	1581	Nederland	Constitutional Monarchy	Amsterdam	4.89095	52.3738
ALB	Albania	Europe	Southern Europe	28748	1912	Shqiperia	Republic	Tirane	19.8172	41.3317
DZA	Algeria	Africa	Northern Africa	2.38174e+06	1962	Al-Jazair/Algerie	Republic	Algiers	3.05097	36.7397
ASM	American Samoa	Oceania	Polynesia	199	\N	Amerika Samoa	US Territory	Pago Pago	-170.691	-14.2846
AND	Andorra	Europe	Southern Europe	468	1278	Andorra	Parliamentary Coprincipality	Andorra la Vella	1.5218	42.5075
AGO	Angola	Africa	Central Africa	1.2467e+06	1975	Angola	Republic	Luanda	13.242	-8.81155
ATG	Antigua and Barbuda	North America	Caribbean	442	1981	Antigua and Barbuda	Constitutional Monarchy	Saint John's	-61.8456	17.1175
ARE	United Arab Emirates	Asia	Middle East	83600	1971	Al-Imarat al-´Arabiya al-Muttahida	Emirate Federation	Abu Dhabi	54.3705	24.4764
ARG	Argentina	South America	South America	2.7804e+06	1816	Argentina	Federal Republic	Buenos Aires	-58.4173	-34.6118
ARM	Armenia	Asia	Middle East	29800	1991	Hajastan	Republic	Yerevan	44.509	40.1596
ABW	Aruba	North America	Caribbean	193	\N	Aruba	Nonmetropolitan Territory of The Netherlands	Oranjestad	-70.0167	12.5167
AUS	Australia	Oceania	Australia and New Zealand	7.74122e+06	1901	Australia	Constitutional Monarchy, Federation	Canberra	149.129	-35.282
AZE	Azerbaijan	Asia	Middle East	86600	1991	Azarbaycan	Federal Republic	Baku	49.8932	40.3834
BHS	Bahamas	North America	Caribbean	13878	1973	The Bahamas	Constitutional Monarchy	Nassau	-77.339	25.0661
BHR	Bahrain	Asia	Middle East	694	1971	Al-Bahrayn	Monarchy (Emirate)	Manama	50.5354	26.1921
BGD	Bangladesh	Asia	Southern and Central Asia	143998	1971	Bangladesh	Republic	Dhaka	90.4113	23.7055
BRB	Barbados	North America	Caribbean	430	1966	Barbados	Constitutional Monarchy	Bridgetown	-59.6105	13.0935
BEL	Belgium	Europe	Western Europe	30518	1830	Belgie/Belgique	Constitutional Monarchy, Federation	Brussels	4.36761	50.8371
BLZ	Belize	North America	Central America	22696	1981	Belize	Constitutional Monarchy	Belmopan	-88.7713	17.2534
BEN	Benin	Africa	Western Africa	112622	1960	Benin	Republic	Porto-Novo	2.6323	6.4779
BMU	Bermuda	North America	North America	53	\N	Bermuda	Dependent Territory of the UK	Hamilton	-64.706	32.3293
BTN	Bhutan	Asia	Southern and Central Asia	47000	1910	Druk-Yul	Monarchy	Thimphu	89.6177	27.5768
BOL	Bolivia	South America	South America	1.09858e+06	1825	Bolivia	Republic	La Paz	-66.1936	-13.9908
BIH	Bosnia and Herzegovina	Europe	Southern Europe	51197	1992	Bosna i Hercegovina	Federal Republic	Sarajevo	18.4214	43.8607
BWA	Botswana	Africa	Southern Africa	581730	1966	Botswana	Republic	Gaborone	25.9201	-24.6544
BRA	Brazil	South America	South America	8.5474e+06	1822	Brasil	Federal Republic	Brasilia	-47.9292	-15.7801
GBR	United Kingdom	Europe	British Islands	242900	1066	United Kingdom	Constitutional Monarchy	London	-0.126236	51.5002
VGB	Virgin Islands, British	North America	Caribbean	151	\N	British Virgin Islands	Dependent Territory of the UK	Road Town	-64.623055	18.431389
BRN	Brunei	Asia	Southeast Asia	5765	1984	Brunei Darussalam	Monarchy (Sultanate)	Bandar Seri Begawan	114.946	4.94199
BGR	Bulgaria	Europe	Eastern Europe	110994	1908	Balgarija	Republic	Sofia	23.3238	42.7105
BFA	Burkina Faso	Africa	Western Africa	274000	1960	Burkina Faso	Republic	Ouagadougou	-1.53395	12.3605
BDI	Burundi	Africa	Eastern Africa	27834	1962	Burundi/Uburundi	Republic	Bujumbura	29.3639	-3.3784
CYM	Cayman Islands	North America	Caribbean	264	\N	Cayman Islands	Dependent Territory of the UK	George Town	-81.3857	19.3022
CHL	Chile	South America	South America	756626	1810	Chile	Republic	Santiago	-70.6475	-33.475
CRI	Costa Rica	North America	Central America	51100	1821	Costa Rica	Republic	San Jose	-84.0089	9.63701
DJI	Djibouti	Africa	Eastern Africa	23200	1977	Djibouti/Jibuti	Republic	Djibouti	43.1425	11.5806
DMA	Dominica	North America	Caribbean	751	1978	Dominica	Republic	Roseau	-61.39	15.2976
DOM	Dominican Republic	North America	Caribbean	48511	1844	Republica Dominicana	Republic	Santo Domingo	-69.8908	18.479
ECU	Ecuador	South America	South America	283561	1822	Ecuador	Republic	Quito	-78.5243	-0.229498
EGY	Egypt	Africa	Northern Africa	1.00145e+06	1922	Misr	Republic	Cairo	31.2461	30.0982
SLV	El Salvador	North America	Central America	21041	1841	El Salvador	Republic	San Salvador	-89.2073	13.7034
ERI	Eritrea	Africa	Eastern Africa	117600	1993	Ertra	Republic	Asmara	38.9183	15.3315
ESP	Spain	Europe	Southern Europe	505992	1492	Espana	Constitutional Monarchy	Madrid	-3.70327	40.4167
ZAF	South Africa	Africa	Southern Africa	1.22104e+06	1910	South Africa	Republic	Pretoria	28.1871	-25.746
ETH	Ethiopia	Africa	Eastern Africa	1.1043e+06	-1000	YeItyop´iya	Republic	Addis Ababa	38.7468	9.02274
FJI	Fiji Islands	Oceania	Melanesia	18274	1970	Fiji Islands	Republic	Suva	178.399	-18.1149
PHL	Philippines	Asia	Southeast Asia	300000	1946	Pilipinas	Republic	Manila	121.035	14.5515
FRO	Faroe Islands	Europe	Nordic Countries	1399	\N	Foroyar	Part of Denmark	Torshavn	-6.91181	61.8926
GAB	Gabon	Africa	Central Africa	267668	1960	Le Gabon	Republic	Libreville	9.45162	0.38832
GMB	Gambia	Africa	Western Africa	11295	1965	The Gambia	Republic	Banjul	-16.5885	13.4495
GEO	Georgia	Asia	Middle East	69700	1991	Sakartvelo	Republic	Tbilisi	44.793	41.71
GHA	Ghana	Africa	Western Africa	238533	1957	Ghana	Republic	Accra	-0.20795	5.57045
GIB	Gibraltar	Europe	Southern Europe	6	\N	Gibraltar	Dependent Territory of the UK	\N	\N	\N
GRD	Grenada	North America	Caribbean	344	1974	Grenada	Constitutional Monarchy	Saint George's	-61.7449	12.0653
GRL	Greenland	North America	North America	2.16609e+06	\N	Kalaallit Nunaat/Gronland	Part of Denmark	Nuuk	-51.7214	64.1836
GUM	Guam	Oceania	Micronesia	549	\N	Guam	US Territory	Agana	144.794	13.4443
GTM	Guatemala	North America	Central America	108889	1821	Guatemala	Republic	Guatemala City	-90.5328	14.6248
GIN	Guinea	Africa	Western Africa	245857	1958	Guinee	Republic	Conakry	-13.7	9.51667
GNB	Guinea-Bissau	Africa	Western Africa	36125	1974	Guine-Bissau	Republic	Bissau	-15.1804	11.8037
GUY	Guyana	South America	South America	214969	1966	Guyana	Republic	Georgetown	-58.1548	6.80461
HTI	Haiti	North America	Caribbean	27750	1804	Haiti/Dayti	Republic	Port-au-Prince	-72.3288	18.5392
HND	Honduras	North America	Central America	112088	1838	Honduras	Republic	Tegucigalpa	-87.4667	15.1333
HKG	Hong Kong	Asia	Eastern Asia	1075	\N	Xianggang/Hong Kong	Special Administrative Region of China	\N	114.109	22.3964
IDN	Indonesia	Asia	Southeast Asia	1.90457e+06	1945	Indonesia	Republic	Jakarta	106.83	-6.19752
IND	India	Asia	Southern and Central Asia	3.28726e+06	1947	Bharat/India	Federal Republic	New Delhi	77.225	28.6353
IRQ	Iraq	Asia	Middle East	438317	1932	Al-´Iraq	Republic	Baghdad	44.394	33.3302
IRN	Iran	Asia	Southern and Central Asia	1.6482e+06	1906	Iran	Islamic Republic	Tehran	51.4447	35.6878
IRL	Ireland	Europe	British Islands	70273	1921	Ireland/Eire	Republic	Dublin	-6.26749	53.3441
ISL	Iceland	Europe	Nordic Countries	103000	1944	Island	Republic	Reykjavik	-21.8952	64.1353
ISR	Israel	Asia	Middle East	21056	1948	Yisrael/Israil	Republic	\N	35.2035	31.7717
ITA	Italy	Europe	Southern Europe	301316	1861	Italia	Republic	Rome	12.4823	41.8955
AUT	Austria	Europe	Western Europe	83859	1918	Osterreich	Federal Republic	Vienna	16.3798	48.2201
JAM	Jamaica	North America	Caribbean	10990	1962	Jamaica	Constitutional Monarchy	Kingston	-76.792	17.9927
JPN	Japan	Asia	Eastern Asia	377829	-660	Nihon/Nippon	Constitutional Monarchy	Tokyo	139.77	35.67
YEM	Yemen	Asia	Middle East	527968	1918	Al-Yaman	Republic	Sana'a	44.2075	15.352
JOR	Jordan	Asia	Middle East	88946	1946	Al-Urdunn	Constitutional Monarchy	Amman	35.9263	31.9497
KHM	Cambodia	Asia	Southeast Asia	181035	1953	Kampuchea	Constitutional Monarchy	Phnom Penh	104.874	11.5556
CMR	Cameroon	Africa	Central Africa	475442	1960	Cameroun/Cameroon	Republic	Yaounde	11.5174	3.8721
CAN	Canada	North America	North America	9.97061e+06	1867	Canada	Constitutional Monarchy, Federation	Ottawa	-75.6919	45.4215
CPV	Cape Verde	Africa	Western Africa	4033	1975	Cabo Verde	Republic	Praia	-23.5087	14.9218
KAZ	Kazakhstan	Asia	Southern and Central Asia	2.7249e+06	1991	Qazaqstan	Republic	Astana	71.4382	51.1879
KEN	Kenya	Africa	Eastern Africa	580367	1963	Kenya	Republic	Nairobi	36.8126	-1.27975
CAF	Central African Republic	Africa	Central Africa	622984	1960	Centrafrique/Be-Afrika	Republic	Bangui	21.6407	5.63056
CHN	China	Asia	Eastern Asia	9.5729e+06	-1523	Zhongquo	People'sRepublic	Beijing	116.286	40.0495
KGZ	Kyrgyzstan	Asia	Southern and Central Asia	199900	1991	Kyrgyzstan	Republic	Bishkek	74.6057	42.8851
KIR	Kiribati	Oceania	Micronesia	726	1979	Kiribati	Republic	Tarawa	172.979	1.32905
COL	Colombia	South America	South America	1.13891e+06	1810	Colombia	Republic	Bogota	-74.082	4.60987
COM	Comoros	Africa	Eastern Africa	1862	1975	Komori/Comores	Republic	Moroni	43.2418	-11.6986
COG	Congo	Africa	Central Africa	342000	1960	Congo	Republic	Brazzaville	15.2662	-4.2767
COD	Congo, The Democratic Republic of the	Africa	Central Africa	2.34486e+06	1960	Republique Democratique du Congo	Republic	Kinshasa	15.3222	-4.325
PRK	North Korea	Asia	Eastern Asia	120538	1948	Choson Minjujuui In´min Konghwaguk (Bukhan)	Socialistic Republic	Pyongyang	125.754	39.0319
KOR	South Korea	Asia	Eastern Asia	99434	1948	Taehan Minguk (Namhan)	Republic	Seoul	126.957	37.5323
GRC	Greece	Europe	Southern Europe	131626	1830	Ellada	Republic	Athens	23.7166	37.9792
HRV	Croatia	Europe	Southern Europe	56538	1991	Hrvatska	Republic	Zagreb	15.9614	45.8069
CUB	Cuba	North America	Caribbean	110861	1902	Cuba	Socialistic Republic	Havana	-82.3667	23.1333
KWT	Kuwait	Asia	Middle East	17818	1961	Al-Kuwayt	Constitutional Monarchy (Emirate)	Kuwait City	47.9824	29.3721
CYP	Cyprus	Asia	Middle East	9251	1960	Kypros/Kibris	Republic	Nicosia	33.3736	35.1676
LAO	Laos	Asia	Southeast Asia	236800	1953	Lao	Republic	Vientiane	102.177	18.5826
LVA	Latvia	Europe	Baltic Countries	64589	1991	Latvija	Republic	Riga	24.1048	56.9465
LSO	Lesotho	Africa	Southern Africa	30355	1966	Lesotho	Constitutional Monarchy	Maseru	27.7167	-29.5208
LBN	Lebanon	Asia	Middle East	10400	1941	Lubnan	Republic	Beirut	35.5134	33.8872
LBR	Liberia	Africa	Western Africa	111369	1847	Liberia	Republic	Monrovia	-10.7957	6.30039
LBY	Libya	Africa	Northern Africa	1.75954e+06	1951	Libiya	Socialistic State	Tripoli	13.1072	32.8578
LIE	Liechtenstein	Europe	Western Europe	160	1806	Liechtenstein	Constitutional Monarchy	Vaduz	9.52148	47.1411
LTU	Lithuania	Europe	Baltic Countries	65301	1991	Lietuva	Republic	Vilnius	25.2799	54.6896
LUX	Luxembourg	Europe	Western Europe	2586	1867	Luxembourg/Letzebuerg	Constitutional Monarchy	Luxembourg	6.1296	49.61
MAC	Macao	Asia	Eastern Asia	18	\N	Macau/Aomen	Special Administrative Region of China	\N	113.55	22.1667
MDG	Madagascar	Africa	Eastern Africa	587041	1960	Madagasikara/Madagascar	Federal Republic	Antananarivo	45.7167	-20.4667
MKD	Macedonia	Europe	Southern Europe	25713	1991	Makedonija	Republic	Skopje	21.4361	42.0024
MWI	Malawi	Africa	Eastern Africa	118484	1964	Malawi	Republic	Lilongwe	33.7703	-13.9899
MDV	Maldives	Asia	Southern and Central Asia	298	1965	Dhivehi Raajje/Maldives	Republic	Male	73.5109	4.1742
MYS	Malaysia	Asia	Southeast Asia	329758	1957	Malaysia	Constitutional Monarchy, Federation	Kuala Lumpur	101.684	3.12433
MLI	Mali	Africa	Western Africa	1.24019e+06	1960	Mali	Republic	Bamako	-7.50034	13.5667
MLT	Malta	Europe	Southern Europe	316	1964	Malta	Republic	Valletta	14.5189	35.9042
MAR	Morocco	Africa	Northern Africa	446550	1956	Al-Maghrib	Constitutional Monarchy	Rabat	-6.8704	33.9905
MHL	Marshall Islands	Oceania	Micronesia	181	1990	Marshall Islands/Majol	Republic	Majuro	171.135	7.11046
MRT	Mauritania	Africa	Western Africa	1.02552e+06	1960	Muritaniya/Mauritanie	Republic	Nouakchott	-15.9824	18.2367
MUS	Mauritius	Africa	Eastern Africa	2040	1968	Mauritius	Republic	Port Louis	57.4977	-20.1605
MEX	Mexico	North America	Central America	1.9582e+06	1810	Mexico	Federal Republic	Mexico City	-99.1276	19.427
FSM	Micronesia, Federated States of	Oceania	Micronesia	702	1990	Micronesia	Federal Republic	Palikir	158.185	6.91771
MDA	Moldova	Europe	Eastern Europe	33851	1991	Moldova	Republic	Chisinau	28.8497	47.0167
MCO	Monaco	Europe	Western Europe	1.5	1861	Monaco	Constitutional Monarchy	Monaco	7.41891	43.7325
MNG	Mongolia	Asia	Eastern Asia	1.5665e+06	1921	Mongol Uls	Republic	Ulaanbaatar	106.937	47.9129
MOZ	Mozambique	Africa	Eastern Africa	801590	1975	Mocambique	Republic	Maputo	32.5713	-25.9664
MMR	Myanmar	Asia	Southeast Asia	676578	1948	Myanma Pye	Republic	Naypyidaw	95.9562	21.914
NAM	Namibia	Africa	Southern Africa	824292	1990	Namibia	Republic	Windhoek	17.0931	-22.5648
NRU	Nauru	Oceania	Micronesia	21	1968	Naoero/Nauru	Republic	Yaren District	166.92087	-0.5477
NPL	Nepal	Asia	Southern and Central Asia	147181	1769	Nepal	Constitutional Monarchy	Kathmandu	85.3157	27.6939
NIC	Nicaragua	North America	Central America	130000	1838	Nicaragua	Republic	Managua	-86.2734	12.1475
NER	Niger	Africa	Western Africa	1.267e+06	1960	Niger	Republic	Niamey	2.1073	13.514
NGA	Nigeria	Africa	Western Africa	923768	1960	Nigeria	Federal Republic	Abuja	7.48906	9.05804
NOR	Norway	Europe	Nordic Countries	323877	1905	Norge	Constitutional Monarchy	Oslo	10.7387	59.9138
CIV	Cote d'Ivoire	Africa	Western Africa	322463	1960	Cote dIvoire	Republic	Yamoussoukro	-4.0305	5.332
OMN	Oman	Asia	Middle East	309500	1951	´Uman	Monarchy (Sultanate)	Muscat	58.5874	23.6105
PAK	Pakistan	Asia	Southern and Central Asia	796095	1947	Pakistan	Republic	Islamabad	72.8	30.5167
PLW	Palau	Oceania	Micronesia	459	1994	Belau/Palau	Republic	Koror	134.479	7.34194
PAN	Panama	North America	Central America	75517	1903	Panama	Republic	Panama City	-79.5188	8.99427
PNG	Papua New Guinea	Oceania	Melanesia	462840	1975	Papua New Guinea/Papua Niugini	Constitutional Monarchy	Port Moresby	147.194	-9.47357
PRY	Paraguay	South America	South America	406752	1811	Paraguay	Republic	Asuncion	-57.6362	-25.3005
PER	Peru	South America	South America	1.28522e+06	1821	Peru/Piruw	Republic	Lima	-77.0465	-12.0931
MNP	Northern Mariana Islands	Oceania	Micronesia	464	\N	Northern Mariana Islands	Commonwealth of the US	Saipan	145.765	15.1935
PRT	Portugal	Europe	Southern Europe	91982	1143	Portugal	Republic	Lisbon	-9.13552	38.7072
PRI	Puerto Rico	North America	Caribbean	8875	\N	Puerto Rico	Commonwealth of the US	San Juan	-66	18.23
POL	Poland	Europe	Eastern Europe	323250	1918	Polska	Republic	Warsaw	21.02	52.26
GNQ	Equatorial Guinea	Africa	Central Africa	28051	1968	Guinea Ecuatorial	Republic	Malabo	8.7741	3.7523
QAT	Qatar	Asia	Middle East	11000	1971	Qatar	Monarchy	Doha	51.5082	25.2948
FRA	France	Europe	Western Europe	551500	843	France	Republic	Paris	2.35097	48.8566
PYF	French Polynesia	Oceania	Polynesia	4000	\N	Polynesie francaise	Nonmetropolitan Territory of France	Papeete	-149.57	-17.535
RWA	Rwanda	Africa	Eastern Africa	26338	1962	Rwanda/Urwanda	Republic	Kigali	30.0587	-1.95325
SWE	Sweden	Europe	Nordic Countries	449964	836	Sverige	Constitutional Monarchy	Stockholm	18.0645	59.3327
KNA	Saint Kitts and Nevis	North America	Caribbean	261	1983	Saint Kitts and Nevis	Constitutional Monarchy	Basseterre	-62.7309	17.3
LCA	Saint Lucia	North America	Caribbean	622	1979	Saint Lucia	Constitutional Monarchy	Castries	-60.9832	14
VCT	Saint Vincent and the Grenadines	North America	Caribbean	388	1979	Saint Vincent and the Grenadines	Constitutional Monarchy	Kingstown	-61.2653	13.2035
DEU	Germany	Europe	Western Europe	357022	1955	Deutschland	Federal Republic	Berlin	13.4115	52.5235
SLB	Solomon Islands	Oceania	Melanesia	28896	1978	Solomon Islands	Constitutional Monarchy	Honiara	159.949	-9.42676
ZMB	Zambia	Africa	Eastern Africa	752618	1964	Zambia	Republic	Lusaka	28.2937	-15.3982
WSM	Samoa	Oceania	Polynesia	2831	1962	Samoa	Parlementary Monarchy	Apia	-171.752	-13.8314
SMR	San Marino	Europe	Southern Europe	61	885	San Marino	Republic	San Marino	12.4486	43.9322
STP	Sao Tome and Principe	Africa	Central Africa	964	1975	Sao Tome e Principe	Republic	Sao Tome	6.6071	0.20618
SAU	Saudi Arabia	Asia	Middle East	2.14969e+06	1932	Al-´Arabiya as-Sa´udiya	Monarchy	Riyadh	46.6977	24.6748
SEN	Senegal	Africa	Western Africa	196722	1960	Senegal/Sounougal	Republic	Dakar	-17.4734	14.7247
SYC	Seychelles	Africa	Eastern Africa	455	1976	Sesel/Seychelles	Republic	Victoria	55.4466	-4.6309
SLE	Sierra Leone	Africa	Western Africa	71740	1961	Sierra Leone	Republic	Freetown	-13.2134	8.4821
SGP	Singapore	Asia	Southeast Asia	618	1965	Singapore/Singapura/Xinjiapo/Singapur	Republic	Singapore	103.85	1.28941
SVK	Slovakia	Europe	Eastern Europe	49012	1993	Slovensko	Republic	Bratislava	17.1073	48.1484
SVN	Slovenia	Europe	Southern Europe	20256	1991	Slovenija	Republic	Ljubljana	14.5044	46.0546
SOM	Somalia	Africa	Eastern Africa	637657	1960	Soomaaliya	Republic	Mogadishu	45.3254	2.07515
LKA	Sri Lanka	Asia	Southern and Central Asia	65610	1948	Sri Lanka/Ilankai	Republic	Colombo	79.8528	6.92148
SDN	Sudan	Africa	Northern Africa	2.50581e+06	1956	As-Sudan	Islamic Republic	Khartoum	32.5363	15.5932
FIN	Finland	Europe	Nordic Countries	338145	1917	Suomi	Republic	Helsinki	24.9525	60.1608
SUR	Suriname	South America	South America	163265	1975	Suriname	Republic	Paramaribo	-55.1679	5.8232
SWZ	Swaziland	Africa	Southern Africa	17364	1968	kaNgwane	Monarchy	Mbabane	31.4659	-26.5225
CHE	Switzerland	Europe	Western Europe	41284	1499	Schweiz/Suisse/Svizzera/Svizra	Federation	Bern	7.44821	46.948
SYR	Syria	Asia	Middle East	185180	1941	Suriya	Republic	Damascus	36.3119	33.5146
TJK	Tajikistan	Asia	Southern and Central Asia	143100	1991	Tocikiston	Republic	Dushanbe	68.7864	38.5878
TZA	Tanzania	Africa	Eastern Africa	883749	1961	Tanzania	Republic	Dodoma	35.7382	-6.17486
DNK	Denmark	Europe	Nordic Countries	43094	800	Danmark	Constitutional Monarchy	Copenhagen	12.5681	55.6763
THA	Thailand	Asia	Southeast Asia	513115	1350	Prathet Thai	Constitutional Monarchy	Bangkok	100.521	13.7308
TGO	Togo	Africa	Western Africa	56785	1960	Togo	Republic	Lome	1.2255	6.1228
TON	Tonga	Oceania	Polynesia	650	1970	Tonga	Monarchy	Nuku'alofa	-175.216	-21.136
TTO	Trinidad and Tobago	North America	Caribbean	5130	1962	Trinidad and Tobago	Republic	Port-of-Spain	-61.4789	10.6596
TCD	Chad	Africa	Central Africa	1.284e+06	1960	Tchad/Tshad	Republic	N'Djamena	15.0445	12.1048
CZE	Czech Republic	Europe	Eastern Europe	78866	1993	¸esko	Republic	Prague	14.4205	50.0878
TUN	Tunisia	Africa	Northern Africa	163610	1956	Tunis/Tunisie	Republic	Tunis	10.21	36.7899
TUR	Turkey	Asia	Middle East	774815	1923	Turkiye	Republic	Ankara	32.3606	39.7153
TKM	Turkmenistan	Asia	Southern and Central Asia	488100	1991	Turkmenostan	Republic	Ashgabat	58.3794	37.9509
TCA	Turks and Caicos Islands	North America	Caribbean	430	\N	The Turks and Caicos Islands	Dependent Territory of the UK	Grand Turk	-71.14139	21.460278
TUV	Tuvalu	Oceania	Polynesia	26	1978	Tuvalu	Constitutional Monarchy	Funafuti	179.08957	-8.631488
UGA	Uganda	Africa	Eastern Africa	241038	1962	Uganda	Republic	Kampala	32.5729	0.314269
UKR	Ukraine	Europe	Eastern Europe	603700	1991	Ukrajina	Republic	Kiev	30.5038	50.4536
HUN	Hungary	Europe	Eastern Europe	93030	1918	Magyarorszag	Republic	Budapest	19.0408	47.4984
URY	Uruguay	South America	South America	175016	1828	Uruguay	Republic	Montevideo	-56.0675	-34.8941
NCL	New Caledonia	Oceania	Melanesia	18575	\N	Nouvelle-Caledonie	Nonmetropolitan Territory of France	Noum'ea	166.464	-22.2677
NZL	New Zealand	Oceania	Australia and New Zealand	270534	1907	New Zealand/Aotearoa	Constitutional Monarchy	Wellington	174.776	-41.2865
UZB	Uzbekistan	Asia	Southern and Central Asia	447400	1991	Uzbekiston	Republic	Tashkent	69.269	41.3052
BLR	Belarus	Europe	Eastern Europe	207600	1991	Belarus	Republic	Minsk	27.5766	53.9678
VUT	Vanuatu	Oceania	Melanesia	12189	1980	Vanuatu	Republic	Port-Vila	168.321	-17.7404
VEN	Venezuela	South America	South America	912050	1811	Venezuela	Federal Republic	Caracas	-69.8371	9.08165
RUS	Russian Federation	Europe	Eastern Europe	1.70754e+07	1991	Rossija	Federal Republic	Moscow	37.6176	55.7558
VNM	Vietnam	Asia	Southeast Asia	331689	1945	Viet Nam	Socialistic Republic	Hanoi	105.825	21.0069
EST	Estonia	Europe	Baltic Countries	45227	1991	Eesti	Republic	Tallinn	24.7586	59.4392
USA	United States	North America	North America	9.36352e+06	1776	United States	Federal Republic	Washington D.C.	-77.032	38.8895
VIR	Virgin Islands, U.S.	North America	Caribbean	347	\N	Virgin Islands of the United States	US Territory	Charlotte Amalie	-64.8963	18.3358
ZWE	Zimbabwe	Africa	Eastern Africa	390757	1980	Zimbabwe	Republic	Harare	31.0672	-17.8312
PSE	Palestine	Asia	Middle East	6257	\N	Filastin	Autonomous Area	\N	\N	\N
\.


--
-- TOC entry 3357 (class 0 OID 16439)
-- Dependencies: 214
-- Data for Name: countries_plus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries_plus (name, continent, code, surface_area, geosize_group) FROM stdin;
Afghanistan	Asia	AFG	652090	medium
Netherlands	Europe	NLD	41526	small
Albania	Europe	ALB	28748	small
Algeria	Africa	DZA	2.38174e+06	large
American Samoa	Oceania	ASM	199	small
Andorra	Europe	AND	468	small
Angola	Africa	AGO	1.2467e+06	medium
Antigua and Barbuda	North America	ATG	442	small
United Arab Emirates	Asia	ARE	83600	small
Argentina	South America	ARG	2.7804e+06	large
Armenia	Asia	ARM	29800	small
Aruba	North America	ABW	193	small
Australia	Oceania	AUS	7.74122e+06	large
Azerbaijan	Asia	AZE	86600	small
Bahamas	North America	BHS	13878	small
Bahrain	Asia	BHR	694	small
Bangladesh	Asia	BGD	143998	small
Barbados	North America	BRB	430	small
Belgium	Europe	BEL	30518	small
Belize	North America	BLZ	22696	small
Benin	Africa	BEN	112622	small
Bermuda	North America	BMU	53	small
Bhutan	Asia	BTN	47000	small
Bolivia	South America	BOL	1.09858e+06	medium
Bosnia and Herzegovina	Europe	BIH	51197	small
Botswana	Africa	BWA	581730	medium
Brazil	South America	BRA	8.5474e+06	large
United Kingdom	Europe	GBR	242900	small
Virgin Islands, British	North America	VGB	151	small
Brunei	Asia	BRN	5765	small
Bulgaria	Europe	BGR	110994	small
Burkina Faso	Africa	BFA	274000	small
Burundi	Africa	BDI	27834	small
Cayman Islands	North America	CYM	264	small
Chile	South America	CHL	756626	medium
Costa Rica	North America	CRI	51100	small
Djibouti	Africa	DJI	23200	small
Dominica	North America	DMA	751	small
Dominican Republic	North America	DOM	48511	small
Ecuador	South America	ECU	283561	small
Egypt	Africa	EGY	1.00145e+06	medium
El Salvador	North America	SLV	21041	small
Eritrea	Africa	ERI	117600	small
Spain	Europe	ESP	505992	medium
South Africa	Africa	ZAF	1.22104e+06	medium
Ethiopia	Africa	ETH	1.1043e+06	medium
Fiji Islands	Oceania	FJI	18274	small
Philippines	Asia	PHL	300000	small
Faroe Islands	Europe	FRO	1399	small
Gabon	Africa	GAB	267668	small
Gambia	Africa	GMB	11295	small
Georgia	Asia	GEO	69700	small
Ghana	Africa	GHA	238533	small
Gibraltar	Europe	GIB	6	small
Grenada	North America	GRD	344	small
Greenland	North America	GRL	2.16609e+06	large
Guam	Oceania	GUM	549	small
Guatemala	North America	GTM	108889	small
Guinea	Africa	GIN	245857	small
Guinea-Bissau	Africa	GNB	36125	small
Guyana	South America	GUY	214969	small
Haiti	North America	HTI	27750	small
Honduras	North America	HND	112088	small
Hong Kong	Asia	HKG	1075	small
Indonesia	Asia	IDN	1.90457e+06	medium
India	Asia	IND	3.28726e+06	large
Iraq	Asia	IRQ	438317	medium
Iran	Asia	IRN	1.6482e+06	medium
Ireland	Europe	IRL	70273	small
Iceland	Europe	ISL	103000	small
Israel	Asia	ISR	21056	small
Italy	Europe	ITA	301316	small
Austria	Europe	AUT	83859	small
Jamaica	North America	JAM	10990	small
Japan	Asia	JPN	377829	medium
Yemen	Asia	YEM	527968	medium
Jordan	Asia	JOR	88946	small
Cambodia	Asia	KHM	181035	small
Cameroon	Africa	CMR	475442	medium
Canada	North America	CAN	9.97061e+06	large
Cape Verde	Africa	CPV	4033	small
Kazakhstan	Asia	KAZ	2.7249e+06	large
Kenya	Africa	KEN	580367	medium
Central African Republic	Africa	CAF	622984	medium
China	Asia	CHN	9.5729e+06	large
Kyrgyzstan	Asia	KGZ	199900	small
Kiribati	Oceania	KIR	726	small
Colombia	South America	COL	1.13891e+06	medium
Comoros	Africa	COM	1862	small
Congo	Africa	COG	342000	small
Congo, The Democratic Republic of the	Africa	COD	2.34486e+06	large
North Korea	Asia	PRK	120538	small
South Korea	Asia	KOR	99434	small
Greece	Europe	GRC	131626	small
Croatia	Europe	HRV	56538	small
Cuba	North America	CUB	110861	small
Kuwait	Asia	KWT	17818	small
Cyprus	Asia	CYP	9251	small
Laos	Asia	LAO	236800	small
Latvia	Europe	LVA	64589	small
Lesotho	Africa	LSO	30355	small
Lebanon	Asia	LBN	10400	small
Liberia	Africa	LBR	111369	small
Libya	Africa	LBY	1.75954e+06	medium
Liechtenstein	Europe	LIE	160	small
Lithuania	Europe	LTU	65301	small
Luxembourg	Europe	LUX	2586	small
Macao	Asia	MAC	18	small
Madagascar	Africa	MDG	587041	medium
Macedonia	Europe	MKD	25713	small
Malawi	Africa	MWI	118484	small
Maldives	Asia	MDV	298	small
Malaysia	Asia	MYS	329758	small
Mali	Africa	MLI	1.24019e+06	medium
Malta	Europe	MLT	316	small
Morocco	Africa	MAR	446550	medium
Marshall Islands	Oceania	MHL	181	small
Mauritania	Africa	MRT	1.02552e+06	medium
Mauritius	Africa	MUS	2040	small
Mexico	North America	MEX	1.9582e+06	medium
Micronesia, Federated States of	Oceania	FSM	702	small
Moldova	Europe	MDA	33851	small
Monaco	Europe	MCO	1.5	small
Mongolia	Asia	MNG	1.5665e+06	medium
Mozambique	Africa	MOZ	801590	medium
Myanmar	Asia	MMR	676578	medium
Namibia	Africa	NAM	824292	medium
Nauru	Oceania	NRU	21	small
Nepal	Asia	NPL	147181	small
Nicaragua	North America	NIC	130000	small
Niger	Africa	NER	1.267e+06	medium
Nigeria	Africa	NGA	923768	medium
Norway	Europe	NOR	323877	small
Cote d'Ivoire	Africa	CIV	322463	small
Oman	Asia	OMN	309500	small
Pakistan	Asia	PAK	796095	medium
Palau	Oceania	PLW	459	small
Panama	North America	PAN	75517	small
Papua New Guinea	Oceania	PNG	462840	medium
Paraguay	South America	PRY	406752	medium
Peru	South America	PER	1.28522e+06	medium
Northern Mariana Islands	Oceania	MNP	464	small
Portugal	Europe	PRT	91982	small
Puerto Rico	North America	PRI	8875	small
Poland	Europe	POL	323250	small
Equatorial Guinea	Africa	GNQ	28051	small
Qatar	Asia	QAT	11000	small
France	Europe	FRA	551500	medium
French Polynesia	Oceania	PYF	4000	small
Rwanda	Africa	RWA	26338	small
Sweden	Europe	SWE	449964	medium
Saint Kitts and Nevis	North America	KNA	261	small
Saint Lucia	North America	LCA	622	small
Saint Vincent and the Grenadines	North America	VCT	388	small
Germany	Europe	DEU	357022	medium
Solomon Islands	Oceania	SLB	28896	small
Zambia	Africa	ZMB	752618	medium
Samoa	Oceania	WSM	2831	small
San Marino	Europe	SMR	61	small
Sao Tome and Principe	Africa	STP	964	small
Saudi Arabia	Asia	SAU	2.14969e+06	large
Senegal	Africa	SEN	196722	small
Seychelles	Africa	SYC	455	small
Sierra Leone	Africa	SLE	71740	small
Singapore	Asia	SGP	618	small
Slovakia	Europe	SVK	49012	small
Slovenia	Europe	SVN	20256	small
Somalia	Africa	SOM	637657	medium
Sri Lanka	Asia	LKA	65610	small
Sudan	Africa	SDN	2.50581e+06	large
Finland	Europe	FIN	338145	small
Suriname	South America	SUR	163265	small
Swaziland	Africa	SWZ	17364	small
Switzerland	Europe	CHE	41284	small
Syria	Asia	SYR	185180	small
Tajikistan	Asia	TJK	143100	small
Tanzania	Africa	TZA	883749	medium
Denmark	Europe	DNK	43094	small
Thailand	Asia	THA	513115	medium
Togo	Africa	TGO	56785	small
Tonga	Oceania	TON	650	small
Trinidad and Tobago	North America	TTO	5130	small
Chad	Africa	TCD	1.284e+06	medium
Czech Republic	Europe	CZE	78866	small
Tunisia	Africa	TUN	163610	small
Turkey	Asia	TUR	774815	medium
Turkmenistan	Asia	TKM	488100	medium
Turks and Caicos Islands	North America	TCA	430	small
Tuvalu	Oceania	TUV	26	small
Uganda	Africa	UGA	241038	small
Ukraine	Europe	UKR	603700	medium
Hungary	Europe	HUN	93030	small
Uruguay	South America	URY	175016	small
New Caledonia	Oceania	NCL	18575	small
New Zealand	Oceania	NZL	270534	small
Uzbekistan	Asia	UZB	447400	medium
Belarus	Europe	BLR	207600	small
Vanuatu	Oceania	VUT	12189	small
Venezuela	South America	VEN	912050	medium
Russian Federation	Europe	RUS	1.70754e+07	large
Vietnam	Asia	VNM	331689	small
Estonia	Europe	EST	45227	small
United States	North America	USA	9.36352e+06	large
Virgin Islands, U.S.	North America	VIR	347	small
Zimbabwe	Africa	ZWE	390757	medium
Palestine	Asia	PSE	6257	small
\.


--
-- TOC entry 3355 (class 0 OID 16425)
-- Dependencies: 212
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currencies (curr_id, code, basic_unit, curr_code, frac_unit, frac_perbasic) FROM stdin;
1	AFG	Afghan afghani	AFN	Pul	100
2	ALB	Albanian lek	ALL	Qindarke	100
3	DZA	Algerian dinar	DZD	Santeem	100
4	AND	Euro	EUR	Cent	100
5	AGO	Angolan kwanza	AOA	Centimo	100
6	AIA	East Caribbean dollar	XCD	Cent	100
7	ATG	East Caribbean dollar	XCD	Cent	100
8	ARG	Argentine peso	ARS	Centavo	100
9	ARM	Armenian dram	AMD	Luma	100
10	ABW	Aruban florin	AWG	Cent	100
11	AUS	Australian dollar	AUD	Cent	100
12	AUT	Euro	EUR	Cent	100
13	AZE	Azerbaijani manat	AZN	Qəpik	100
14	BHR	Bahraini dinar	BHD	Fils	1000
15	BGD	Bangladeshi taka	BDT	Paisa	100
16	BRB	Barbadian dollar	BBD	Cent	100
17	BLR	New Belarusian ruble	BYN	Kapyeyka	100
18	BLR	Old Belarusian ruble	BYR	Kapyeyka	100
19	BEL	Euro	EUR	Cent	100
20	BLZ	Belize dollar	BZD	Cent	100
21	BEN	West African CFA franc	XOF	Centime	100
22	BMU	Bermudian dollar	BMD	Cent	100
23	BTN	Bhutanese ngultrum	BTN	Chetrum	100
24	BTN	Indian rupee	INR	Paisa	100
25	BOL	Bolivian boliviano	BOB	Centavo	100
26	BIH	Bosnia and Herzegovina convertible mark	BAM	Fening	100
27	BWA	Botswana pula	BWP	Thebe	100
28	BRA	Brazilian real	BRL	Centavo	100
29	IOT	United States dollar	USD	Cent	100
30	BRN	Brunei dollar	BND	Sen	100
31	BRN	Singapore dollar	SGD	Cent	100
32	BGR	Bulgarian lev	BGN	Stotinka	100
33	BFA	West African CFA franc	XOF	Centime	100
34	BDI	Burundian franc	BIF	Centime	100
35	KHM	Cambodian riel	KHR	Sen	100
36	KHM	United States dollar	USD	Cent	100
37	CMR	Central African CFA franc	XAF	Centime	100
38	CAN	Canadian dollar	CAD	Cent	100
39	CPV	Cape Verdean escudo	CVE	Centavo	100
40	CYM	Cayman Islands dollar	KYD	Cent	100
41	CAF	Central African CFA franc	XAF	Centime	100
42	TCD	Central African CFA franc	XAF	Centime	100
43	CHL	Chilean peso	CLP	Centavo	100
44	CHN	Chinese yuan	CNY	Fen	100
45	CCK	Australian dollar	AUD	Cent	100
46	COL	Colombian peso	COP	Centavo	100
47	COM	Comorian franc	KMF	Centime	100
48	COD	Congolese franc	CDF	Centime	100
49	COG	Central African CFA franc	XAF	Centime	100
50	COK	New Zealand dollar	NZD	Cent	100
51	CRI	Costa Rican colon	CRC	Centimo	100
52	CIV	West African CFA franc	XOF	Centime	100
53	HRV	Croatian kuna	HRK	Lipa	100
54	CUB	Cuban convertible peso	CUC	Centavo	100
55	CUB	Cuban peso	CUP	Centavo	100
56	CYP	Euro	EUR	Cent	100
57	CZE	Czech koruna	CZK	Haler	100
58	DNK	Danish krone	DKK	Ore	100
59	DJI	Djiboutian franc	DJF	Centime	100
60	DMA	East Caribbean dollar	XCD	Cent	100
61	DOM	Dominican peso	DOP	Centavo	100
62	TMP	United States dollar	USD	Cent	100
63	ECU	United States dollar	USD	Cent	100
64	EGY	Egyptian pound	EGP	Piastre	100
65	SLV	United States dollar	USD	Cent	100
66	GNQ	Central African CFA franc	XAF	Centime	100
67	ERI	Eritrean nakfa	ERN	Cent	100
68	EST	Euro	EUR	Cent	100
69	ETH	Ethiopian birr	ETB	Santim	100
70	FLK	Falkland Islands pound	FKP	Penny	100
71	FRO	Danish krone	DKK	Ore	100
72	FIN	Euro	EUR	Cent	100
73	FRA	Euro	EUR	Cent	100
74	PYF	CFP franc	XPF	Centime	100
75	GAB	Central African CFA franc	XAF	Centime	100
76	GEO	Georgian lari	GEL	Tetri	100
77	DEU	Euro	EUR	Cent	100
78	GHA	Ghanaian cedi	GHS	Pesewa	100
79	GIB	Gibraltar pound	GIP	Penny	100
80	GRC	Euro	EUR	Cent	100
81	GRD	East Caribbean dollar	XCD	Cent	100
82	GTM	Guatemalan quetzal	GTQ	Centavo	100
83	GIN	Guinean franc	GNF	Centime	100
84	GNB	West African CFA franc	XOF	Centime	100
85	GUY	Guyanese dollar	GYD	Cent	100
86	HTI	Haitian gourde	HTG	Centime	100
87	HND	Honduran lempira	HNL	Centavo	100
88	HKG	Hong Kong dollar	HKD	Cent	100
89	HUN	Hungarian forint	HUF	Filler	100
90	ISL	Icelandic krona	ISK	Eyrir	100
91	IND	Indian rupee	INR	Paisa	100
92	IDN	Indonesian rupiah	IDR	Sen	100
93	IRN	Iranian rial	IRR	Dinar	100
94	IRQ	Iraqi dinar	IQD	Fils	1000
95	IRL	Euro	EUR	Cent	100
96	ISR	Israeli new shekel	ILS	Agora	100
97	ITA	Euro	EUR	Cent	100
98	JAM	Jamaican dollar	JMD	Cent	100
99	JPN	Japanese yen	JPY	Sen	100
100	JOR	Jordanian dinar	JOD	Piastre	100
101	KAZ	Kazakhstani tenge	KZT	Tiin	100
102	KEN	Kenyan shilling	KES	Cent	100
103	KIR	Australian dollar	AUD	Cent	100
104	PRK	North Korean won	KPW	Chon	100
105	KOR	South Korean won	KRW	Jeon	100
106	KWT	Kuwaiti dinar	KWD	Fils	1000
107	KGZ	Kyrgyzstani som	KGS	Tyiyn	100
108	LAO	Lao kip	LAK	Att	100
109	LVA	Euro	EUR	Cent	100
110	LBN	Lebanese pound	LBP	Piastre	100
111	LSO	Lesotho loti	LSL	Sente	100
112	LSO	South African rand	ZAR	Cent	100
113	LBR	Liberian dollar	LRD	Cent	100
114	LBY	Libyan dinar	LYD	Dirham	1000
115	LIE	Swiss franc	CHF	Rappen	100
116	LTU	Euro	EUR	Cent	100
117	LUX	Euro	EUR	Cent	100
118	MDG	Malagasy ariary	MGA	Iraimbilanja	5
119	MWI	Malawian kwacha	MWK	Tambala	100
120	MYS	Malaysian ringgit	MYR	Sen	100
121	MDV	Maldivian rufiyaa	MVR	Laari	100
122	MLI	West African CFA franc	XOF	Centime	100
123	MLT	Euro	EUR	Cent	100
124	MHL	United States dollar	USD	Cent	100
125	MRT	Mauritanian ouguiya	MRO	Khoums	5
126	MUS	Mauritian rupee	MUR	Cent	100
127	MEX	Mexican peso	MXN	Centavo	100
128	MDA	Moldovan leu	MDL	Ban	100
129	MCO	Euro	EUR	Cent	100
130	MNG	Mongolian togrog	MNT	Mongo	100
131	MSR	East Caribbean dollar	XCD	Cent	100
132	MAR	Moroccan dirham	MAD	Centime	100
133	MOZ	Mozambican metical	MZN	Centavo	100
134	MMR	Burmese kyat	MMK	Pya	100
135	NAM	Namibian dollar	NAD	Cent	100
136	NAM	South African rand	ZAR	Cent	100
137	NRU	Australian dollar	AUD	Cent	100
138	NPL	Nepalese rupee	NPR	Paisa	100
139	NLD	Euro	EUR	Cent	100
140	NCL	CFP franc	XPF	Centime	100
141	NZL	New Zealand dollar	NZD	Cent	100
142	NIC	Nicaraguan cordoba	NIO	Centavo	100
143	NER	West African CFA franc	XOF	Centime	100
144	NGA	Nigerian naira	NGN	Kobo	100
145	NIU	New Zealand dollar	NZD	Cent	100
146	NOR	Norwegian krone	NOK	Ore	100
147	OMN	Omani rial	OMR	Baisa	1000
148	PAK	Pakistani rupee	PKR	Paisa	100
149	PLW	United States dollar	USD	Cent	100
150	PSE	Israeli new shekel	ILS	Agora	100
151	PSE	Jordanian dinar	JOD	Piastre	100
152	PAN	Panamanian balboa	PAB	Centesimo	100
153	PAN	United States dollar	USD	Cent	100
154	PNG	Papua New Guinean kina	PGK	Toea	100
155	PRY	Paraguayan guarani	PYG	Centimo	100
156	PER	Peruvian sol	PEN	Centimo	100
157	PHL	Philippine peso	PHP	Centavo	100
158	POL	Polish zloty	PLN	Grosz	100
159	PRT	Euro	EUR	Cent	100
160	QAT	Qatari riyal	QAR	Dirham	100
161	ROM	Romanian leu	RON	Ban	100
162	RUS	Russian ruble	RUB	Kopek	100
163	RWA	Rwandan franc	RWF	Centime	100
164	SHN	Saint Helena pound	SHP	Penny	100
165	KNA	East Caribbean dollar	XCD	Cent	100
166	LCA	East Caribbean dollar	XCD	Cent	100
167	VCT	East Caribbean dollar	XCD	Cent	100
168	WSM	Samoan tala	WST	Sene	100
169	SMR	Euro	EUR	Cent	100
170	SAU	Saudi riyal	SAR	Halala	100
171	SEN	West African CFA franc	XOF	Centime	100
172	SYC	Seychellois rupee	SCR	Cent	100
173	SLE	Sierra Leonean leone	SLL	Cent	100
174	SGP	Brunei dollar	BND	Sen	100
175	SGP	Singapore dollar	SGD	Cent	100
176	SVK	Euro	EUR	Cent	100
177	SVN	Euro	EUR	Cent	100
178	SLB	Solomon Islands dollar	SBD	Cent	100
179	SOM	Somali shilling	SOS	Cent	100
180	ZAF	South African rand	ZAR	Cent	100
181	SGS	British pound	GBP	Penny	100
182	ESP	Euro	EUR	Cent	100
183	LKA	Sri Lankan rupee	LKR	Cent	100
184	SDN	Sudanese pound	SDG	Piastre	100
185	SUR	Surinamese dollar	SRD	Cent	100
186	SWZ	Swazi lilangeni	SZL	Cent	100
187	SWE	Swedish krona	SEK	Ore	100
188	CHE	Swiss franc	CHF	Rappen	100
189	SYR	Syrian pound	SYP	Piastre	100
190	TWN	New Taiwan dollar	TWD	Cent	100
191	TJK	Tajikistani somoni	TJS	Diram	100
192	TZA	Tanzanian shilling	TZS	Cent	100
193	THA	Thai baht	THB	Satang	100
194	TGO	West African CFA franc	XOF	Centime	100
195	TON	Tongan paʻanga	TOP	Seniti	100
196	TTO	Trinidad and Tobago dollar	TTD	Cent	100
197	TUN	Tunisian dinar	TND	Millime	1000
198	TUR	Turkish lira	TRY	Kurus	100
199	TKM	Turkmenistan manat	TMT	Tennesi	100
200	TCA	United States dollar	USD	Cent	100
201	TUV	Australian dollar	AUD	Cent	100
202	TUV	Tuvaluan dollar	TVD	Cent	100
203	UGA	Ugandan shilling	UGX	Cent	100
204	UKR	Ukrainian hryvnia	UAH	Kopiyka	100
205	UKR	Russian ruble	RUB	Kopek	100
206	ARE	United Arab Emirates dirham	AED	Fils	100
207	GBR	British pound	GBP	Penny	100
208	USA	United States dollar	USD	Cent	100
209	URY	Uruguayan peso	UYU	Centesimo	100
210	UZB	Uzbekistani soʻm	UZS	Tiyin	100
211	VUT	Vanuatu vatu	VUV	\N	\N
212	VEN	Venezuelan bolivar	VEF	Centimo	100
213	VNM	Vietnamese dong	VND	Hao	10
214	WLF	CFP franc	XPF	Centime	100
215	YEM	Yemeni rial	YER	Fils	100
216	ZMB	Zambian kwacha	ZMW	Ngwee	100
217	ZWE	Botswana pula	BWP	Thebe	100
218	ZWE	British pound	GBP	Penny	100
219	ZWE	Chinese yuan	CNY	Fen	100
220	ZWE	Euro	EUR	Cent	100
221	ZWE	Indian rupee	INR	Paisa	100
222	ZWE	Japanese yen	JPY	Sen	100
223	ZWE	South African rand	ZAR	Cent	100
224	ZWE	United States dollar	USD	Cent	100
\.


--
-- TOC entry 3354 (class 0 OID 16418)
-- Dependencies: 211
-- Data for Name: economies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.economies (econ_id, code, year, income_group, gdp_percapita, gross_savings, inflation_rate, total_investment, unemployment_rate, exports, imports) FROM stdin;
1	AFG	2010	Low income	539.667	37.133	2.179	30.402	\N	46.394	24.381
2	AFG	2015	Low income	615.091	21.466	-1.549	18.602	\N	-49.11	-7.294
3	AGO	2010	Upper middle income	3599.27	23.534	14.48	14.433	\N	-3.266	-21.076
4	AGO	2015	Upper middle income	3876.2	-0.425	10.287	9.552	\N	6.721	-21.778
5	ALB	2010	Upper middle income	4098.13	20.011	3.605	31.305	14	10.645	-8.013
6	ALB	2015	Upper middle income	3943.22	13.84	1.896	24.598	17.1	1.827	0.574
7	ARE	2010	High income	34628.63	27.073	0.878	27.372	\N	3.843	-0.981
8	ARE	2015	High income	38649.91	34.106	4.07	27.477	\N	7.32	2.17
9	ARG	2010	Upper middle income	10412.95	17.361	10.461	17.706	7.75	13.931	39.877
10	ARG	2015	Upper middle income	14643.92	14.111	\N	16.89	\N	-1.658	3.105
11	ARM	2010	Lower middle income	3121.78	15.797	7.274	29.419	19	30.183	4.09
12	ARM	2015	Lower middle income	3520.95	18.306	3.731	20.956	18.5	15.729	-9.647
13	ATG	2010	High income	13531.78	13.398	3.37	\N	\N	-3.241	-14.113
14	ATG	2015	High income	15155.16	18.754	0.969	\N	\N	6.026	-24.307
15	AUS	2010	High income	56362.84	23.584	2.863	27.089	5.208	5.782	15.208
16	AUS	2015	High income	51363.9	22.111	1.461	26.304	6.058	6.022	1.99
17	AUT	2010	High income	46757.13	25.521	1.694	22.654	4.8	13.84	11.989
18	AUT	2015	High income	43749.55	25.353	0.81	23.507	5.75	3.558	3.382
19	AZE	2010	Upper middle income	5847.26	46.567	5.666	18.532	6.048	-1.792	-1.459
20	AZE	2015	Upper middle income	5396.41	26.4	4.049	26.783	6.048	4.08	0.186
21	BDI	2010	Low income	242.84	3.723	6.496	15.086	\N	33.917	86.968
22	BDI	2015	Low income	318.611	-11.014	5.553	11	\N	-8.678	-20.535
23	BEL	2010	High income	44691.32	24.456	2.334	22.692	8.317	8.121	6.385
24	BEL	2015	High income	40520.1	23.653	0.62	23.211	8.492	1.154	-0.093
25	BEN	2010	Low income	734.278	14.905	2.179	23.132	\N	-1.008	9.397
26	BEN	2015	Low income	763.882	17.567	0.271	25.972	\N	-8.991	-19.18
27	BFA	2010	Low income	588.584	15.788	-0.608	18.02	\N	175.541	44.066
28	BFA	2015	Low income	619.861	5.31	0.914	13.34	\N	-14.969	-0.968
29	BGD	2010	Lower middle income	807.531	29.141	9.365	26.874	\N	18.81	22.43
30	BGD	2015	Lower middle income	1292.93	29.707	6.161	29.149	\N	8.787	10.5
31	BGR	2010	Upper middle income	6743.74	20.845	3.039	22.568	10.306	11.046	-0.932
32	BGR	2015	Upper middle income	7017.11	21.056	-1.067	21.19	9.235	5.737	5.443
33	BHR	2010	High income	20823.22	36.206	1.97	27.286	3.6	2.083	5.06
34	BHR	2015	High income	24057.58	21.955	1.836	24.372	\N	0.397	-14.177
35	BHS	2010	High income	22957.79	15.141	1.621	25.214	15.082	2.549	-4.618
36	BHS	2015	High income	24309.57	11.243	1.879	27.222	13.379	-9.46	-5.834
37	BIH	2010	Upper middle income	4404.37	10.115	2.123	15.553	27.202	11.05	-1.953
38	BIH	2015	Upper middle income	4206.69	10.217	-1.018	15.907	27.7	7.606	2.101
39	BLR	2010	Upper middle income	6023.15	26.186	7.743	40.656	0.827	7.669	12.225
40	BLR	2015	Upper middle income	5941.24	25.419	13.523	29.035	0.912	1.304	-12.183
41	BLZ	2010	Upper middle income	4321.29	10.33	0.918	12.792	13.502	8.491	6.964
42	BLZ	2015	Upper middle income	4757.11	12.155	-0.862	22.014	10.114	2.025	6.743
43	BOL	2010	Lower middle income	1994.91	24.969	2.502	17.007	4.375	28.526	8.836
44	BOL	2015	Lower middle income	3099.22	13.31	4.061	19.237	4	-8.427	-2.965
45	BRA	2010	Upper middle income	11297.84	18.368	5.039	21.801	8.556	7.124	34.532
46	BRA	2015	Upper middle income	8810.5	15.865	9.03	19.133	8.3	8.085	-13.47
47	BRB	2010	High income	16079.89	8.12	5.824	13.564	10.25	4.769	-0.489
48	BRB	2015	High income	15808.09	7.473	-1.061	13.391	11.3	6.952	12.81
49	BRN	2010	High income	35437.22	\N	0.216	41.711	\N	11.705	-3.108
50	BRN	2015	High income	30994.98	\N	-0.423	35.247	6.9	-13.765	-24.068
51	BTN	2010	Lower middle income	1998.75	44.674	5.726	66.906	3.3	-0.579	25.991
52	BTN	2015	Lower middle income	2603.1	32.024	6.336	60.362	3.2	1.505	15.832
53	BWA	2010	Upper middle income	6853.67	32.162	6.95	35.353	\N	16.022	6.481
54	BWA	2015	Upper middle income	6780.97	40.026	3.054	32.11	\N	-17.111	0.37
55	CAF	2010	Low income	456.564	4.115	1.491	14.266	\N	10.301	13.882
56	CAF	2015	Low income	332.366	4.882	4.5	13.923	\N	0.465	12.874
57	CAN	2010	High income	47512.68	19.898	1.769	23.508	8	6.645	13.774
58	CAN	2015	High income	43349.62	20.416	1.132	23.817	6.9	3.393	0.336
59	CHE	2010	High income	74570.66	38.881	0.684	24.027	3.516	12.547	7.882
60	CHE	2015	High income	81410.02	34.52	-1.14	22.995	3.178	2.168	4.303
61	CHL	2010	High income	12789.76	24.839	1.408	23.144	8.153	2.357	25.554
62	CHL	2015	High income	13469.47	21.306	4.349	23.291	6.214	-1.872	-2.802
63	CHN	2010	Upper middle income	4524.06	51.802	3.3	47.881	4.14	25.641	19.925
64	CHN	2015	Upper middle income	8166.76	47.457	1.441	44.748	4.05	-2.216	-0.478
65	CIV	2010	Lower middle income	1195.44	16.765	1.366	14.901	\N	-7.681	1.856
66	CIV	2015	Lower middle income	1381.81	16.82	1.244	17.804	\N	2.774	19.427
67	CMR	2010	Lower middle income	1158.78	17.524	1.279	20.281	\N	-4.699	-1.617
68	CMR	2015	Lower middle income	1230.38	17.088	2.683	21.336	\N	16.087	2.879
69	COD	2010	Low income	292.955	15.574	23.464	13.75	\N	54.001	35.575
70	COD	2015	Low income	471.306	16.495	0.959	20.403	\N	-4.995	-3.984
71	COG	2010	Lower middle income	3183.68	27.651	0.392	19.848	\N	13.299	21.024
72	COG	2015	Lower middle income	1958.1	-8.049	2.742	34.83	\N	-6.289	2.196
73	COL	2010	Upper middle income	6305.29	19.107	2.272	22.126	11.792	1.264	10.845
74	COL	2015	Upper middle income	6047.97	20.23	4.99	26.72	8.925	-3.225	-6.321
75	COM	2010	Low income	789.466	15.22	3.899	15.403	\N	8.524	2.157
76	COM	2015	Low income	736.406	19.221	2	18.411	\N	7.238	-3.58
77	CPV	2010	Lower middle income	3413.26	25.257	2.079	37.684	10.7	0.873	-0.6
78	CPV	2015	Lower middle income	3001.29	37.094	0.125	41.483	10	-4.248	-19.31
79	CRI	2010	Upper middle income	8300.69	16.489	5.665	19.715	7.345	9.099	18.711
80	CRI	2015	Upper middle income	11435.97	15.725	0.802	20.218	9.249	0.001	4.629
81	CYP	2010	High income	31262.53	12.507	2.557	23.663	6.283	4.452	7.965
82	CYP	2015	High income	23105.4	11.55	-1.539	13.956	14.892	0.032	2.128
83	CZE	2010	High income	19787.29	23.588	1.491	27.174	7.279	14.847	14.899
84	CZE	2015	High income	17569.89	28.266	0.335	27.357	5.046	7.703	8.22
85	DEU	2010	High income	42641.68	25.241	1.149	19.626	6.942	14.534	12.85
86	DEU	2015	High income	41197.41	27.571	0.134	19.243	4.608	5.161	5.467
87	DJI	2010	Lower middle income	1306.54	24.089	3.954	21.259	\N	1.368	-20.199
88	DJI	2015	Lower middle income	1788.36	19.039	2.104	50.82	\N	12.843	31.171
89	DMA	2010	Upper middle income	6975.99	2.462	2.81	18.38	\N	11.788	-6.675
90	DMA	2015	Upper middle income	7311.65	8.814	-0.794	16.787	\N	8.783	5.578
91	DNK	2010	High income	58177.16	24.639	2.311	18.076	7.483	2.94	0.541
92	DNK	2015	High income	53237.28	28.91	0.452	19.755	6.192	1.833	1.261
93	DOM	2010	Upper middle income	5685.77	18.745	6.33	26.178	5.001	12.363	14.755
94	DOM	2015	Upper middle income	6833.24	21.447	0.837	23.494	5.94	7.284	10.571
95	DZA	2010	Upper middle income	4480.72	49.869	3.913	42.328	9.961	-3.218	-1.781
96	DZA	2015	Upper middle income	4123.3	34.738	4.784	51.299	11.214	5.733	-7.507
97	ECU	2010	Upper middle income	4633.25	25.757	3.552	28.037	5.019	1.109	14.283
98	ECU	2015	Upper middle income	6153.8	24.657	3.97	26.854	4.77	2.195	-7.794
99	EGY	2010	Lower middle income	2921.76	19.421	11.69	21.298	9.21	3.628	11.663
100	EGY	2015	Lower middle income	3731.18	10.62	10.994	14.289	12.859	12.456	10.42
101	ERI	2010	Low income	395.645	-9.257	11.228	9.299	\N	18.085	11.854
102	ERI	2015	Low income	741.363	1.329	9	7.614	\N	-16.905	0.809
103	ESP	2010	High income	30802.85	19.628	1.799	23.549	19.858	9.43	6.92
104	ESP	2015	High income	25717.56	21.429	-0.497	20.06	22.058	4.862	5.637
105	EST	2010	High income	14654.28	23.087	2.741	21.265	16.707	24.282	21.218
106	EST	2015	High income	17111.3	25.422	0.068	24.745	6.104	-0.61	-1.404
107	ETH	2010	Low income	360.829	24.494	8.134	25.524	\N	15.711	33.327
108	ETH	2015	Low income	720.617	31.269	10.115	39.417	\N	2.161	26.761
109	FIN	2010	High income	46391.71	22.843	1.686	21.6	8.5	6.179	6.5
110	FIN	2015	High income	42487.05	20.728	-0.156	21.144	9.375	2.004	3.123
111	FJI	2010	Upper middle income	3780.24	\N	3.689	18.102	8.9	\N	\N
112	FJI	2015	Upper middle income	4928.9	\N	1.376	16.281	8.75	\N	\N
113	FRA	2010	High income	42249.06	21.075	1.737	21.911	9.258	9.016	8.865
114	FRA	2015	High income	37612.91	22.163	0.09	22.363	10.367	6.149	6.633
115	FSM	2010	Lower middle income	2888.18	\N	3.701	\N	\N	\N	\N
116	FSM	2015	Lower middle income	3079.22	\N	-0.158	\N	\N	\N	\N
117	GAB	2010	Upper middle income	8917.32	41.009	1.447	26.105	\N	8.5	12.244
118	GAB	2015	Upper middle income	7746.75	29.315	-0.143	34.821	\N	19.776	-10.492
119	GBR	2010	High income	38737.56	13.233	3.302	15.976	7.9	5.793	8.155
120	GBR	2015	High income	43976.42	12.952	0.05	17.18	5.4	6.064	5.505
121	GEO	2010	Upper middle income	2951.24	11.64	7.111	21.586	16.291	5.994	-0.239
122	GEO	2015	Upper middle income	3761.91	20.136	4.005	32.06	11.95	1.772	9.838
123	GHA	2010	Lower middle income	1357.64	17.276	6.698	25.885	\N	13.58	32.634
124	GHA	2015	Lower middle income	1390.11	17.146	17.153	24.83	\N	-8.625	-1.159
125	GIN	2010	Low income	435.728	0.135	15.466	9.42	\N	-9.893	9.111
126	GIN	2015	Low income	545.779	-9.697	8.151	10.538	\N	-0.851	12.326
127	GMB	2010	Low income	562.2	5.026	5.049	21.319	\N	0.299	7.804
128	GMB	2015	Low income	448.158	4.687	6.808	19.699	\N	-11.794	6.161
129	GNB	2010	Low income	582.54	-2.057	1.071	6.579	\N	1.986	8.125
130	GNB	2015	Low income	639.508	9.374	1.481	9.912	\N	-6.844	10.651
131	GNQ	2010	Upper middle income	23411.83	41.231	5.32	70.449	\N	-5.481	33.042
132	GNQ	2015	Upper middle income	17286.92	54.939	1.695	74.17	\N	0.924	8.22
133	GRC	2010	High income	26972.87	5.664	4.704	17.048	12.725	4.861	-3.431
134	GRC	2015	High income	17955.19	9.783	-1.094	9.829	24.9	3.359	0.309
135	GRD	2010	Upper middle income	7365.67	-1.702	3.437	22.012	\N	-11.5	0.642
136	GRD	2015	Upper middle income	9221.75	0.231	-0.589	17.966	\N	5.952	17.768
137	GTM	2010	Lower middle income	2875.31	12.575	3.86	13.938	\N	3.667	9.244
138	GTM	2015	Lower middle income	3921.87	13.115	2.389	13.433	\N	4.29	15.124
139	GUY	2010	Upper middle income	3004.23	7.88	4.302	17.484	\N	-4.566	2.84
140	GUY	2015	Upper middle income	4150.57	8.214	-0.865	13.911	\N	7.358	21.614
141	HKG	2010	High income	32421.07	30.892	2.312	23.89	4.322	17.57	18.228
142	HKG	2015	High income	42327.59	24.858	3.037	21.541	3.296	-1.377	-1.751
143	HND	2010	Lower middle income	2096.2	17.547	4.699	21.88	4.8	19.957	3.68
144	HND	2015	Lower middle income	2567.05	18.403	3.158	24.633	4	1.977	9.353
145	HRV	2010	High income	13505.03	20.278	1.031	21.35	17.167	6.168	-2.468
146	HRV	2015	High income	11578.54	23.894	-0.464	18.794	17.067	10.046	9.429
147	HTI	2010	Low income	662.013	23.869	4.136	25.407	\N	-4.112	40.547
148	HTI	2015	Low income	809.672	29.277	7.524	32.399	\N	7.658	10.177
149	HUN	2010	High income	13007.56	20.992	4.867	20.713	11.251	11.304	10.154
150	HUN	2015	High income	12344.16	25.102	-0.07	21.715	6.848	7.671	6.104
151	IDN	2010	Lower middle income	3178.13	33.582	5.14	32.88	7.14	3.109	18.251
152	IDN	2015	Lower middle income	3370.93	32.14	6.363	34.174	6.18	0.397	-6.225
153	IND	2010	Lower middle income	1429.6	33.689	9.497	36.502	\N	26.023	14.74
154	IND	2015	Lower middle income	1615.79	31.689	4.908	32.747	\N	-4.437	1.961
155	IRL	2010	High income	48439.1	16.039	-1.636	17.24	13.917	5.71	0.813
156	IRL	2015	High income	60896.18	31.998	-0.017	21.763	9.442	34.452	21.674
157	IRN	2010	Upper middle income	6252.52	41.522	12.403	37.131	13.5	5.768	-0.075
158	IRN	2015	Upper middle income	4709.65	34.511	11.915	32.101	11	23.77	-8.313
159	IRQ	2010	Upper middle income	4473.71	23.736	2.445	\N	\N	\N	\N
160	IRQ	2015	Upper middle income	5114.49	17.971	1.393	\N	\N	\N	\N
161	ISL	2010	High income	41622.66	7.256	5.396	13.857	7.558	0.984	4.408
162	ISL	2015	High income	50472.94	24.552	1.633	19.081	3.992	9.172	13.503
163	ISR	2010	High income	30673.39	22.064	2.694	18.499	8.25	15.195	15.116
164	ISR	2015	High income	35743.46	24.296	-0.632	19.948	5.275	-4.3	-0.501
165	ITA	2010	High income	35969.19	17.121	1.62	20.538	8.35	11.786	12.392
166	ITA	2015	High income	30032.11	18.934	0.108	17.314	11.908	4.352	6.821
167	JAM	2010	Upper middle income	4812.07	13.41	12.613	20.199	12.375	-14.814	-17.316
168	JAM	2015	Upper middle income	5052.68	12.111	3.683	14.614	13.5	21.67	20.353
169	JOR	2010	Upper middle income	4322.82	18.381	4.846	25.514	12.5	12.452	-4.01
170	JOR	2015	Upper middle income	5505.7	10.146	-0.877	19.243	13.075	-7.433	-3.135
171	JPN	2010	High income	44673.61	25.174	-0.721	21.298	5.058	24.911	11.173
172	JPN	2015	High income	34513.36	26.99	0.793	23.896	3.375	3.03	0.128
173	KAZ	2010	Upper middle income	9008.71	26.309	7.126	25.374	5.783	24.996	8.207
174	KAZ	2015	Upper middle income	10427.66	26.533	6.656	29.496	5.042	-28.015	-6.335
175	KEN	2010	Lower middle income	1038.95	14.809	4.309	20.735	\N	8.744	8.113
176	KEN	2015	Lower middle income	1439.46	14.392	6.582	21.206	\N	-0.863	-1.168
177	KGZ	2010	Lower middle income	875.264	24.869	7.968	27.054	8.644	-11.447	-13.785
178	KGZ	2015	Lower middle income	1109.43	18.333	6.503	29.407	7.554	-6.98	-14.544
179	KHM	2010	Lower middle income	781.912	10.521	3.997	17.368	\N	33.854	8.385
180	KHM	2015	Lower middle income	1144.5	11.798	1.225	22.4	\N	12.522	12.504
181	KIR	2010	Lower middle income	1490.9	\N	-3.9	\N	\N	-17.912	-9.924
182	KIR	2015	Lower middle income	1409.63	\N	0.572	\N	\N	4.058	9.646
183	KNA	2010	High income	13466.83	13.133	0.851	33.552	\N	13.827	-4.746
184	KNA	2015	High income	15765.53	17.742	-2.302	26.209	\N	13.052	10.902
185	KOR	2010	High income	22086.95	34.659	2.939	32.023	3.725	12.697	17.256
186	KOR	2015	High income	27105.08	36.58	0.706	28.918	3.642	-0.131	2.094
187	KWT	2010	High income	32216.41	50.831	4.496	17.659	2.072	-0.497	6.33
188	KWT	2015	High income	27756.41	31.649	3.233	25.004	2.072	0.961	5.095
189	LAO	2010	Lower middle income	1069.75	\N	5.984	\N	\N	15.707	9.241
190	LAO	2015	Lower middle income	1786.94	\N	1.292	\N	\N	6.652	-0.952
191	LBN	2010	Upper middle income	8755.85	3.847	3.983	\N	\N	-18.267	-1.825
192	LBN	2015	Upper middle income	11156.01	3.82	-3.749	\N	\N	14.12	9.557
193	LBR	2010	Low income	341.985	\N	7.291	\N	\N	-0.398	10.189
194	LBR	2015	Low income	474.357	\N	7.742	\N	\N	0.328	-2.613
195	LBY	2010	Upper middle income	12149.59	\N	2.458	39.086	\N	-0.838	9.906
196	LBY	2015	Upper middle income	4708.14	\N	9.839	44.578	\N	-12.88	17.56
197	LCA	2010	Upper middle income	7491.66	11.734	3.25	28.06	\N	5.423	18.427
198	LCA	2015	Upper middle income	8256.22	17.103	-0.985	19.671	\N	12.683	1.26
199	LKA	2010	Lower middle income	2779.74	28.457	6.218	30.352	5	13.791	16.52
200	LKA	2015	Lower middle income	3849.22	27.586	0.932	30.059	4	2.715	16.55
201	LSO	2010	Lower middle income	1364.36	16.421	3.382	8.992	\N	6.135	2.384
202	LSO	2015	Lower middle income	1223.37	30.116	4.958	9.442	\N	14.6	9.266
203	LTU	2010	High income	12010.68	17.671	1.191	18	17.814	18.942	18.671
204	LTU	2015	High income	14259.6	17.555	-0.677	19.89	9.119	-0.376	6.2
205	LUX	2010	High income	105573.58	24.899	2.795	18.19	5.867	6.498	6.775
206	LUX	2015	High income	100950.49	24.865	0.061	19.625	6.804	12.812	14.046
207	LVA	2010	High income	11228.13	21.365	-1.224	19.314	19.467	13.443	12.412
208	LVA	2015	High income	13614.47	21.325	0.213	22.091	9.877	2.576	2.07
209	MAC	2010	High income	50921.11	\N	2.795	13.302	2.825	\N	\N
210	MAC	2015	High income	70214.9	\N	4.564	25.087	1.825	\N	\N
211	MAR	2010	Lower middle income	2926.67	29.7	0.994	34.074	9.063	24.673	-1.514
212	MAR	2015	Lower middle income	3002.5	28.079	1.545	30.232	9.707	1.753	-2.077
213	MDA	2010	Lower middle income	1632.78	16.001	7.358	23.524	7.4	17	14
214	MDA	2015	Lower middle income	1828.37	17.961	9.628	22.917	4.9	1	-5
215	MDG	2010	Low income	414.143	13.74	9.247	23.424	\N	-5.288	-25.476
216	MDG	2015	Low income	402.067	11.15	7.404	13.057	\N	-3.018	-3.427
217	MDV	2010	Upper middle income	7259.49	6.844	6.159	15	\N	-1.116	31.342
218	MDV	2015	Upper middle income	9178.05	9.798	1.367	20	\N	-5.757	0.225
219	MEX	2010	Upper middle income	9199.8	21.555	4.155	22.056	5.273	20.547	20.461
220	MEX	2015	Upper middle income	9512.27	20.019	2.72	22.916	4.35	10.3	8.641
221	MHL	2010	Upper middle income	3113.18	\N	1.768	\N	\N	25.911	\N
222	MHL	2015	Upper middle income	3325.76	\N	-2.169	\N	\N	6.204	\N
223	MKD	2010	Upper middle income	4576.23	22.443	1.508	\N	32.05	23.68	10.367
224	MKD	2015	Upper middle income	4854.21	29.029	-0.3	\N	26.05	6.717	5.24
225	MLI	2010	Low income	764.957	13.306	1.289	24.026	\N	-2.423	18.875
226	MLI	2015	Low income	804.357	10.118	1.442	17.407	\N	17.083	44.032
227	MLT	2010	High income	21150.42	18.954	2.041	23.611	6.867	6.883	7.634
228	MLT	2015	High income	23972.98	29.024	1.176	23.796	5.408	4.099	7.48
229	MMR	2010	Lower middle income	996.632	23.184	8.223	16.013	4	10.299	15.211
230	MMR	2015	Lower middle income	1148.39	19.313	10.005	24.465	4	-2.507	4.986
231	MNE	2010	Upper middle income	6694.34	-1.246	0.576	21.77	\N	15.434	-2.994
232	MNE	2015	Upper middle income	6464.74	6.702	1.204	20.021	\N	9.405	9.443
233	MNG	2010	Lower middle income	2608.31	26.881	10.165	42.087	9.9	70.109	108.436
234	MNG	2015	Lower middle income	3946.25	21.122	5.889	25.125	8.011	-15.38	-25.959
235	MOZ	2010	Low income	429.948	8.081	12.699	18.728	\N	-24.696	-3.721
236	MOZ	2015	Low income	529.243	14.228	2.392	53.621	\N	2.259	-2.354
237	MRT	2010	Lower middle income	1318.07	30.703	6.262	39.193	\N	14.015	12.698
238	MRT	2015	Lower middle income	1307.15	18.915	0.486	38.652	\N	-0.456	-13.295
239	MUS	2010	Upper middle income	7772.13	14.27	2.929	23.726	7.8	12.231	7.111
240	MUS	2015	Upper middle income	9114.97	16.312	1.285	21.199	7.9	-6.845	4.532
241	MWI	2010	Low income	442.765	26.25	7.409	22.823	\N	41.052	42.722
242	MWI	2015	Low income	353.794	2.676	21.858	12.121	\N	-4.16	1.118
243	MYS	2010	Upper middle income	8920.48	33.468	1.72	23.386	3.3	3.622	12.117
244	MYS	2015	Upper middle income	9500.52	28.087	2.104	25.092	3.1	4.428	2.08
245	NAM	2010	Upper middle income	5410.98	20.709	4.875	24.124	\N	1.997	7.834
246	NAM	2015	Upper middle income	5041.11	20.514	3.396	34.186	\N	1.626	1.281
247	NER	2010	Low income	378.205	25.45	-2.786	49.524	\N	20.873	22.132
248	NER	2015	Low income	406.592	24.479	1.006	42.57	\N	-2.084	7.651
249	NGA	2010	Lower middle income	2365.01	20.843	13.742	17.291	5.092	10.744	23.227
250	NGA	2015	Lower middle income	2763.2	12.298	9.01	15.49	9	8.818	2.966
251	NIC	2010	Lower middle income	1523.48	15.542	5.455	24.585	8	9.801	8.664
252	NIC	2015	Lower middle income	2086.89	23.627	3.997	31.862	5.957	-1.763	11.665
253	NLD	2010	High income	50433.31	27.798	0.932	20.42	4.995	9.029	7.918
254	NLD	2015	High income	44322.83	27.854	0.22	19.272	6.891	4.957	5.749
255	NOR	2010	High income	87309.3	36.27	2.419	25.341	3.584	0.66	8.309
256	NOR	2015	High income	74264.43	36.88	2.171	28.208	4.374	3.728	1.612
257	NPL	2010	Low income	595.395	35.909	9.565	38.271	\N	\N	\N
258	NPL	2015	Low income	747.485	43.787	7.212	38.779	\N	\N	\N
259	NRU	2010	High income	4936.67	\N	-1.968	\N	\N	\N	\N
260	NRU	2015	High income	8052.68	\N	9.784	\N	\N	\N	\N
261	NZL	2010	High income	33221.93	24.648	2.302	20.235	6.15	3.287	10.795
262	NZL	2015	High income	37281.09	20.123	0.293	22.747	5.35	6.945	3.701
263	OMN	2010	High income	20327.06	33.761	3.256	25.418	\N	8.105	3.84
264	OMN	2015	High income	18186.31	18.347	0.065	33.822	\N	2.072	2.21
265	PAK	2010	Lower middle income	1026.63	13.577	10.104	15.805	5.55	5.557	-3.292
266	PAK	2015	Lower middle income	1427.56	14.48	4.526	15.479	5.9	3.716	12.254
267	PAN	2010	Upper middle income	7896.91	26.436	3.491	37.201	6.516	-8.446	10.822
268	PAN	2015	Upper middle income	13113.71	39.271	0.134	46.557	5.052	2.082	5.898
269	PER	2010	Upper middle income	5008.68	22.505	1.53	24.898	7.88	1.4	27.198
270	PER	2015	Upper middle income	6176.68	19.703	3.548	24.59	6.44	1.796	0.329
271	PHL	2010	Lower middle income	2155.41	24.138	3.784	20.541	7.325	19.567	16.515
272	PHL	2015	Lower middle income	2862.9	23.036	1.409	20.552	6.275	0.716	13.48
273	PLW	2010	Upper middle income	10059.33	\N	1.448	21.82	\N	13.287	-0.218
274	PLW	2015	Upper middle income	15907.4	\N	0.947	23.206	\N	6.673	9.784
275	PNG	2010	Lower middle income	2151.07	\N	5.102	\N	\N	4.768	50.69
276	PNG	2015	Lower middle income	2746.19	\N	5.996	\N	\N	14.205	-31.234
277	POL	2010	High income	12601.91	15.913	2.583	21.313	9.635	12.864	14.012
278	POL	2015	High income	12552.29	19.832	-0.933	20.447	7.499	7.694	6.608
279	PRI	2010	High income	26435.74	\N	2.474	9.16	16.4	\N	\N
280	PRI	2015	High income	29620.21	\N	-0.751	8.703	12	\N	\N
281	PRT	2010	High income	22580.68	10.709	1.391	21.081	10.77	0.704	-2.681
282	PRT	2015	High income	19225.67	15.521	0.508	15.451	12.444	6.199	7.972
283	PRY	2010	Upper middle income	3199.48	15.905	4.651	16.187	5.674	23.746	36.481
284	PRY	2015	Upper middle income	4038.42	15.781	3.129	16.835	5.337	-3.204	-0.298
285	QAT	2010	High income	76413.23	50.419	-2.406	\N	\N	31.268	-1.425
286	QAT	2015	High income	68004.02	46.556	1.814	\N	\N	-1.392	-9.173
287	ROU	2010	Upper middle income	8277.34	21.755	6.113	26.836	6.939	15.229	12.566
288	ROU	2015	Upper middle income	8934.01	23.747	-0.596	24.962	6.812	5.404	9.19
289	RUS	2010	Upper middle income	11445.13	24.417	6.854	20.3	7.3	8.475	28.987
290	RUS	2015	Upper middle income	9521.08	27.175	15.532	22.123	5.575	-0.412	-25.036
291	RWA	2010	Low income	577.411	6.369	2.306	22.958	\N	11.592	3.364
292	RWA	2015	Low income	732.372	8.687	2.507	26.511	\N	-3.727	11.987
293	SAU	2010	High income	19112.69	43.414	3.801	30.743	5.548	7.464	-0.402
294	SAU	2015	High income	21013.58	26.174	2.189	34.877	5.591	4.125	1.287
295	SDN	2010	Lower middle income	1627.5	17.259	12.99	19.323	13.733	7.895	2.199
296	SDN	2015	Lower middle income	2118.98	9.263	16.91	17.104	21.6	-1.006	23.193
297	SEN	2010	Low income	999.775	17.708	1.229	22.098	\N	-0.328	-5.261
298	SEN	2015	Low income	913.05	16.576	0.129	23.992	\N	-5.531	-5.84
299	SGP	2010	High income	46569.4	51.68	2.823	28.238	2.175	17.439	16.3
300	SGP	2015	High income	53628.76	44.88	-0.523	26.77	1.9	2.63	8.813
301	SLB	2010	Lower middle income	1275.88	12.799	0.951	46.154	\N	25.612	44.357
302	SLB	2015	Lower middle income	1922.78	17.332	-0.559	19.99	\N	2.767	3.494
303	SLE	2010	Low income	448.198	9.581	17.782	31.089	\N	12.41	62.114
304	SLE	2015	Low income	718.893	0.947	8.969	16.003	\N	-25.493	-25.162
305	SLV	2010	Lower middle income	3546.08	10.831	1.179	13.318	7.05	15.92	8.373
306	SLV	2015	Lower middle income	4217	10.425	-0.731	13.983	7	2.864	8.193
307	SMR	2010	High income	64631.16	\N	2.595	22.504	4.945	\N	\N
308	SMR	2015	High income	46185.02	\N	0.14	17.926	9.18	\N	\N
309	SRB	2010	Upper middle income	5353.56	12.102	6.143	18.469	20	12.054	2.482
310	SRB	2015	Upper middle income	5244.31	14.141	1.392	18.852	18.2	10.209	9.143
311	SSD	2010	Low income	\N	\N	\N	\N	\N	\N	\N
312	SSD	2015	Low income	1049.77	7.304	52.813	14.528	\N	\N	\N
313	STP	2010	Lower middle income	1107.87	32.965	13.339	55.894	13.711	5.791	10.419
314	STP	2015	Lower middle income	1566.7	19.363	5.256	32.313	13.033	-0.441	3.336
315	SUR	2010	Upper middle income	8224.07	50.552	6.948	37.539	7.565	9.858	-13.849
316	SUR	2015	Upper middle income	8767.97	50.155	6.896	66.722	8.333	-7.2	15.571
317	SVK	2010	High income	16634.74	19.303	0.699	24.013	14.475	15.735	14.719
318	SVK	2015	High income	16105.13	23.415	-0.336	23.202	11.492	7.001	8.123
319	SVN	2010	High income	23499.59	22.121	1.801	22.24	7.267	10.155	6.837
320	SVN	2015	High income	20746.9	25.243	-0.526	20.064	9	5.551	4.623
321	SWE	2010	High income	51869.16	28.876	1.907	22.913	8.575	11.144	11.676
322	SWE	2015	High income	50319.11	28.902	0.702	24.207	7.4	5.926	5.442
323	SWZ	2010	Lower middle income	4267.04	3.179	4.509	14.293	\N	3.792	-9.507
324	SWZ	2015	Lower middle income	3511.76	22.994	4.96	12.169	\N	7.584	-5.528
325	SYC	2010	High income	10805.1	17.241	-2.405	36.622	4.605	-11.214	-5.267
326	SYC	2015	High income	14554.42	15.005	4.042	33.851	2.684	15.03	7.161
327	SYR	2010	Lower middle income	2806.69	23.845	4.398	26.688	8.613	11.328	5.364
328	SYR	2015	Lower middle income	\N	\N	\N	\N	\N	\N	\N
329	TCD	2010	Low income	1046.89	25.871	-2.109	34.388	\N	-5.485	16.804
330	TCD	2015	Low income	946.877	14.605	6.758	26.905	\N	29.216	-21.443
331	TGO	2010	Low income	497.408	17.634	1.438	23.928	\N	-1.176	1.115
332	TGO	2015	Low income	569.764	15.912	1.8	26.983	\N	7.56	8.217
333	THA	2010	Upper middle income	5065.38	28.724	3.286	25.357	1.05	14.22	22.956
334	THA	2015	Upper middle income	5799.39	30.301	-0.9	22.248	0.889	1.831	0.853
335	TJK	2010	Lower middle income	740.733	6.999	6.463	16.575	2.2	25.161	0.948
336	TJK	2015	Lower middle income	926.877	12.495	5.781	18.478	\N	11.91	-7.859
337	TKM	2010	Upper middle income	4479.01	\N	4.447	\N	\N	23.823	-6.603
338	TKM	2015	Upper middle income	6690.38	\N	7.405	\N	\N	-3.957	-12.175
339	TLS	2010	Lower middle income	4001.28	\N	5.178	11.273	\N	\N	\N
340	TLS	2015	Lower middle income	2462.09	\N	0.553	20.701	\N	\N	\N
341	TON	2010	Lower middle income	3843.11	\N	3.865	\N	\N	13.224	10.736
342	TON	2015	Lower middle income	3973.68	\N	-0.283	\N	\N	-9.11	5.403
343	TTO	2010	High income	16683.99	13.168	10.525	\N	5.925	9.07	-17.689
344	TTO	2015	High income	17321.77	11.131	4.659	\N	3.425	-7.143	13.824
345	TUN	2010	Lower middle income	4176.93	20.825	3.339	25.631	13.048	5.476	-2.077
346	TUN	2015	Lower middle income	3884.35	12.528	4.851	21.447	15	-2.818	-2.54
347	TUR	2010	Upper middle income	10475.61	21.334	8.566	26.973	11.127	9.077	17.463
348	TUR	2015	Upper middle income	10909.69	24.743	7.671	28.347	10.279	1.472	1.258
349	TUV	2010	Upper middle income	3076.88	\N	-1.853	\N	\N	\N	\N
350	TUV	2015	Upper middle income	3020.4	\N	3.228	\N	\N	\N	\N
351	TZA	2010	Low income	725.765	21.248	7.192	27.296	\N	7.039	6.095
352	TZA	2015	Low income	957.105	24.079	5.588	27.875	\N	15.185	0.441
353	UGA	2010	Low income	594.461	18.7	3.716	26.734	\N	-12.216	-10.44
354	UGA	2015	Low income	629.536	17.888	5.416	24.534	\N	6.913	13.038
355	UKR	2010	Lower middle income	2982.81	18.654	9.365	20.873	8.097	9.293	15.014
356	UKR	2015	Lower middle income	2135.18	15.657	48.684	15.933	9.143	-12.687	-28.81
357	URY	2010	High income	11859.9	17.593	6.699	19.408	7.033	14.309	11.893
358	URY	2015	High income	15317.58	17.713	8.666	19.821	7.508	-6.231	-9.154
359	USA	2010	High income	48310.34	15.086	1.637	18.394	9.608	11.896	12.714
360	USA	2015	High income	56174.94	19.107	0.12	20.348	5.258	0.109	4.583
361	UZB	2010	Lower middle income	1367.13	37.267	12.304	30.667	\N	-3.105	-9.187
362	UZB	2015	Lower middle income	2111.74	30.29	8.464	30.834	\N	7.49	-2.499
363	VCT	2010	Upper middle income	6224.22	-1.591	0.752	28.988	\N	2.231	-8.083
364	VCT	2015	Upper middle income	6706.46	2.483	-1.726	23.637	\N	2.218	7.98
365	VEN	2010	Upper middle income	10316.83	31.591	28.187	21.972	8.508	-12.877	-2.891
366	VEN	2015	Upper middle income	8493.97	31.787	121.738	42.136	7.4	-0.863	-23.102
367	VNM	2010	Lower middle income	1297.23	31.902	9.21	35.694	4.29	6.577	4.404
368	VNM	2015	Lower middle income	2086.53	28.055	0.631	27.581	2.4	9.796	15.617
369	VUT	2010	Lower middle income	2923.25	\N	2.763	34.66	\N	\N	\N
370	VUT	2015	Lower middle income	2747.3	\N	2.483	42.363	\N	\N	\N
371	WSM	2010	Lower middle income	3434.1	\N	-0.201	\N	\N	\N	\N
372	WSM	2015	Lower middle income	4158.97	\N	1.923	\N	\N	\N	\N
373	YEM	2010	Lower middle income	1266.79	8.25	11.175	11.661	\N	6.907	-6.212
374	YEM	2015	Lower middle income	1334.12	-3.715	39.403	1.779	\N	-37.593	-15.092
375	ZAF	2010	Upper middle income	7361.94	18.012	4.264	19.513	24.875	7.718	10.794
376	ZAF	2015	Upper middle income	5721.15	16.46	4.575	20.892	25.35	3.858	5.367
377	ZMB	2010	Lower middle income	1456.16	37.404	8.5	29.878	\N	20.521	32.638
378	ZMB	2015	Lower middle income	1310.35	39.177	10.107	42.791	\N	-11.1	3.726
379	ZWE	2010	Low income	765.418	16.109	3.045	23.921	\N	\N	\N
380	ZWE	2015	Low income	1002.56	5.563	-2.41	13.822	\N	\N	\N
\.


--
-- TOC entry 3358 (class 0 OID 16446)
-- Dependencies: 215
-- Data for Name: economies2010; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.economies2010 (code, year, income_group, gross_savings) FROM stdin;
AFG	2010	Low income	37.133
AGO	2010	Upper middle income	23.534
ALB	2010	Upper middle income	20.011
ARE	2010	High income	27.073
ARG	2010	Upper middle income	17.361
ARM	2010	Lower middle income	15.797
ATG	2010	High income	13.398
AUS	2010	High income	23.584
AUT	2010	High income	25.521
AZE	2010	Upper middle income	46.567
BDI	2010	Low income	3.723
BEL	2010	High income	24.456
BEN	2010	Low income	14.905
BFA	2010	Low income	15.788
BGD	2010	Lower middle income	29.141
BGR	2010	Upper middle income	20.845
BHR	2010	High income	36.206
BHS	2010	High income	15.141
BIH	2010	Upper middle income	10.115
BLR	2010	Upper middle income	26.186
BLZ	2010	Upper middle income	10.33
BOL	2010	Lower middle income	24.969
BRA	2010	Upper middle income	18.368
BRB	2010	High income	8.12
BRN	2010	High income	\N
BTN	2010	Lower middle income	44.674
BWA	2010	Upper middle income	32.162
CAF	2010	Low income	4.115
CAN	2010	High income	19.898
CHE	2010	High income	38.881
CHL	2010	High income	24.839
CHN	2010	Upper middle income	51.802
CIV	2010	Lower middle income	16.765
CMR	2010	Lower middle income	17.524
COD	2010	Low income	15.574
COG	2010	Lower middle income	27.651
COL	2010	Upper middle income	19.107
COM	2010	Low income	15.22
CPV	2010	Lower middle income	25.257
CRI	2010	Upper middle income	16.489
CYP	2010	High income	12.507
CZE	2010	High income	23.588
DEU	2010	High income	25.241
DJI	2010	Lower middle income	24.089
DMA	2010	Upper middle income	2.462
DNK	2010	High income	24.639
DOM	2010	Upper middle income	18.745
DZA	2010	Upper middle income	49.869
ECU	2010	Upper middle income	25.757
EGY	2010	Lower middle income	19.421
ERI	2010	Low income	-9.257
ESP	2010	High income	19.628
EST	2010	High income	23.087
ETH	2010	Low income	24.494
FIN	2010	High income	22.843
FJI	2010	Upper middle income	\N
FRA	2010	High income	21.075
FSM	2010	Lower middle income	\N
GAB	2010	Upper middle income	41.009
GBR	2010	High income	13.233
GEO	2010	Upper middle income	11.64
GHA	2010	Lower middle income	17.276
GIN	2010	Low income	0.135
GMB	2010	Low income	5.026
GNB	2010	Low income	-2.057
GNQ	2010	Upper middle income	41.231
GRC	2010	High income	5.664
GRD	2010	Upper middle income	-1.702
GTM	2010	Lower middle income	12.575
GUY	2010	Upper middle income	7.88
HKG	2010	High income	30.892
HND	2010	Lower middle income	17.547
HRV	2010	High income	20.278
HTI	2010	Low income	23.869
HUN	2010	High income	20.992
IDN	2010	Lower middle income	33.582
IND	2010	Lower middle income	33.689
IRL	2010	High income	16.039
IRN	2010	Upper middle income	41.522
IRQ	2010	Upper middle income	23.736
ISL	2010	High income	7.256
ISR	2010	High income	22.064
ITA	2010	High income	17.121
JAM	2010	Upper middle income	13.41
JOR	2010	Upper middle income	18.381
JPN	2010	High income	25.174
KAZ	2010	Upper middle income	26.309
KEN	2010	Lower middle income	14.809
KGZ	2010	Lower middle income	24.869
KHM	2010	Lower middle income	10.521
KIR	2010	Lower middle income	\N
KNA	2010	High income	13.133
KOR	2010	High income	34.659
KWT	2010	High income	50.831
LAO	2010	Lower middle income	\N
LBN	2010	Upper middle income	3.847
LBR	2010	Low income	\N
LBY	2010	Upper middle income	\N
LCA	2010	Upper middle income	11.734
LKA	2010	Lower middle income	28.457
LSO	2010	Lower middle income	16.421
LTU	2010	High income	17.671
LUX	2010	High income	24.899
LVA	2010	High income	21.365
MAC	2010	High income	\N
MAR	2010	Lower middle income	29.7
MDA	2010	Lower middle income	16.001
MDG	2010	Low income	13.74
MDV	2010	Upper middle income	6.844
MEX	2010	Upper middle income	21.555
MHL	2010	Upper middle income	\N
MKD	2010	Upper middle income	22.443
MLI	2010	Low income	13.306
MLT	2010	High income	18.954
MMR	2010	Lower middle income	23.184
MNE	2010	Upper middle income	-1.246
MNG	2010	Lower middle income	26.881
MOZ	2010	Low income	8.081
MRT	2010	Lower middle income	30.703
MUS	2010	Upper middle income	14.27
MWI	2010	Low income	26.25
MYS	2010	Upper middle income	33.468
NAM	2010	Upper middle income	20.709
NER	2010	Low income	25.45
NGA	2010	Lower middle income	20.843
NIC	2010	Lower middle income	15.542
NLD	2010	High income	27.798
NOR	2010	High income	36.27
NPL	2010	Low income	35.909
NRU	2010	High income	\N
NZL	2010	High income	24.648
OMN	2010	High income	33.761
PAK	2010	Lower middle income	13.577
PAN	2010	Upper middle income	26.436
PER	2010	Upper middle income	22.505
PHL	2010	Lower middle income	24.138
PLW	2010	Upper middle income	\N
PNG	2010	Lower middle income	\N
POL	2010	High income	15.913
PRI	2010	High income	\N
PRT	2010	High income	10.709
PRY	2010	Upper middle income	15.905
QAT	2010	High income	50.419
ROU	2010	Upper middle income	21.755
RUS	2010	Upper middle income	24.417
RWA	2010	Low income	6.369
SAU	2010	High income	43.414
SDN	2010	Lower middle income	17.259
SEN	2010	Low income	17.708
SGP	2010	High income	51.68
SLB	2010	Lower middle income	12.799
SLE	2010	Low income	9.581
SLV	2010	Lower middle income	10.831
SMR	2010	High income	\N
SRB	2010	Upper middle income	12.102
SSD	2010	Low income	\N
STP	2010	Lower middle income	32.965
SUR	2010	Upper middle income	50.552
SVK	2010	High income	19.303
SVN	2010	High income	22.121
SWE	2010	High income	28.876
SWZ	2010	Lower middle income	3.179
SYC	2010	High income	17.241
SYR	2010	Lower middle income	23.845
TCD	2010	Low income	25.871
TGO	2010	Low income	17.634
THA	2010	Upper middle income	28.724
TJK	2010	Lower middle income	6.999
TKM	2010	Upper middle income	\N
TLS	2010	Lower middle income	\N
TON	2010	Lower middle income	\N
TTO	2010	High income	13.168
TUN	2010	Lower middle income	20.825
TUR	2010	Upper middle income	21.334
TUV	2010	Upper middle income	\N
TZA	2010	Low income	21.248
UGA	2010	Low income	18.7
UKR	2010	Lower middle income	18.654
URY	2010	High income	17.593
USA	2010	High income	15.086
UZB	2010	Lower middle income	37.267
VCT	2010	Upper middle income	-1.591
VEN	2010	Upper middle income	31.591
VNM	2010	Lower middle income	31.902
VUT	2010	Lower middle income	\N
WSM	2010	Lower middle income	\N
YEM	2010	Lower middle income	8.25
ZAF	2010	Upper middle income	18.012
ZMB	2010	Lower middle income	37.404
ZWE	2010	Low income	16.109
\.


--
-- TOC entry 3359 (class 0 OID 16453)
-- Dependencies: 216
-- Data for Name: economies2015; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.economies2015 (code, year, income_group, gross_savings) FROM stdin;
AFG	2015	Low income	21.466
AGO	2015	Upper middle income	-0.425
ALB	2015	Upper middle income	13.84
ARE	2015	High income	34.106
ARG	2015	Upper middle income	14.111
ARM	2015	Lower middle income	18.306
ATG	2015	High income	18.754
AUS	2015	High income	22.111
AUT	2015	High income	25.353
AZE	2015	Upper middle income	26.4
BDI	2015	Low income	-11.014
BEL	2015	High income	23.653
BEN	2015	Low income	17.567
BFA	2015	Low income	5.31
BGD	2015	Lower middle income	29.707
BGR	2015	Upper middle income	21.056
BHR	2015	High income	21.955
BHS	2015	High income	11.243
BIH	2015	Upper middle income	10.217
BLR	2015	Upper middle income	25.419
BLZ	2015	Upper middle income	12.155
BOL	2015	Lower middle income	13.31
BRA	2015	Upper middle income	15.865
BRB	2015	High income	7.473
BRN	2015	High income	\N
BTN	2015	Lower middle income	32.024
BWA	2015	Upper middle income	40.026
CAF	2015	Low income	4.882
CAN	2015	High income	20.416
CHE	2015	High income	34.52
CHL	2015	High income	21.306
CHN	2015	Upper middle income	47.457
CIV	2015	Lower middle income	16.82
CMR	2015	Lower middle income	17.088
COD	2015	Low income	16.495
COG	2015	Lower middle income	-8.049
COL	2015	Upper middle income	20.23
COM	2015	Low income	19.221
CPV	2015	Lower middle income	37.094
CRI	2015	Upper middle income	15.725
CYP	2015	High income	11.55
CZE	2015	High income	28.266
DEU	2015	High income	27.571
DJI	2015	Lower middle income	19.039
DMA	2015	Upper middle income	8.814
DNK	2015	High income	28.91
DOM	2015	Upper middle income	21.447
DZA	2015	Upper middle income	34.738
ECU	2015	Upper middle income	24.657
EGY	2015	Lower middle income	10.62
ERI	2015	Low income	1.329
ESP	2015	High income	21.429
EST	2015	High income	25.422
ETH	2015	Low income	31.269
FIN	2015	High income	20.728
FJI	2015	Upper middle income	\N
FRA	2015	High income	22.163
FSM	2015	Lower middle income	\N
GAB	2015	Upper middle income	29.315
GBR	2015	High income	12.952
GEO	2015	Upper middle income	20.136
GHA	2015	Lower middle income	17.146
GIN	2015	Low income	-9.697
GMB	2015	Low income	4.687
GNB	2015	Low income	9.374
GNQ	2015	Upper middle income	54.939
GRC	2015	High income	9.783
GRD	2015	Upper middle income	0.231
GTM	2015	Lower middle income	13.115
GUY	2015	Upper middle income	8.214
HKG	2015	High income	24.858
HND	2015	Lower middle income	18.403
HRV	2015	High income	23.894
HTI	2015	Low income	29.277
HUN	2015	High income	25.102
IDN	2015	Lower middle income	32.14
IND	2015	Lower middle income	31.689
IRL	2015	High income	31.998
IRN	2015	Upper middle income	34.511
IRQ	2015	Upper middle income	17.971
ISL	2015	High income	24.552
ISR	2015	High income	24.296
ITA	2015	High income	18.934
JAM	2015	Upper middle income	12.111
JOR	2015	Upper middle income	10.146
JPN	2015	High income	26.99
KAZ	2015	Upper middle income	26.533
KEN	2015	Lower middle income	14.392
KGZ	2015	Lower middle income	18.333
KHM	2015	Lower middle income	11.798
KIR	2015	Lower middle income	\N
KNA	2015	High income	17.742
KOR	2015	High income	36.58
KWT	2015	High income	31.649
LAO	2015	Lower middle income	\N
LBN	2015	Upper middle income	3.82
LBR	2015	Low income	\N
LBY	2015	Upper middle income	\N
LCA	2015	Upper middle income	17.103
LKA	2015	Lower middle income	27.586
LSO	2015	Lower middle income	30.116
LTU	2015	High income	17.555
LUX	2015	High income	24.865
LVA	2015	High income	21.325
MAC	2015	High income	\N
MAR	2015	Lower middle income	28.079
MDA	2015	Lower middle income	17.961
MDG	2015	Low income	11.15
MDV	2015	Upper middle income	9.798
MEX	2015	Upper middle income	20.019
MHL	2015	Upper middle income	\N
MKD	2015	Upper middle income	29.029
MLI	2015	Low income	10.118
MLT	2015	High income	29.024
MMR	2015	Lower middle income	19.313
MNE	2015	Upper middle income	6.702
MNG	2015	Lower middle income	21.122
MOZ	2015	Low income	14.228
MRT	2015	Lower middle income	18.915
MUS	2015	Upper middle income	16.312
MWI	2015	Low income	2.676
MYS	2015	Upper middle income	28.087
NAM	2015	Upper middle income	20.514
NER	2015	Low income	24.479
NGA	2015	Lower middle income	12.298
NIC	2015	Lower middle income	23.627
NLD	2015	High income	27.854
NOR	2015	High income	36.88
NPL	2015	Low income	43.787
NRU	2015	High income	\N
NZL	2015	High income	20.123
OMN	2015	High income	18.347
PAK	2015	Lower middle income	14.48
PAN	2015	Upper middle income	39.271
PER	2015	Upper middle income	19.703
PHL	2015	Lower middle income	23.036
PLW	2015	Upper middle income	\N
PNG	2015	Lower middle income	\N
POL	2015	High income	19.832
PRI	2015	High income	\N
PRT	2015	High income	15.521
PRY	2015	Upper middle income	15.781
QAT	2015	High income	46.556
ROU	2015	Upper middle income	23.747
RUS	2015	Upper middle income	27.175
RWA	2015	Low income	8.687
SAU	2015	High income	26.174
SDN	2015	Lower middle income	9.263
SEN	2015	Low income	16.576
SGP	2015	High income	44.88
SLB	2015	Lower middle income	17.332
SLE	2015	Low income	0.947
SLV	2015	Lower middle income	10.425
SMR	2015	High income	\N
SRB	2015	Upper middle income	14.141
SSD	2015	Low income	7.304
STP	2015	Lower middle income	19.363
SUR	2015	Upper middle income	50.155
SVK	2015	High income	23.415
SVN	2015	High income	25.243
SWE	2015	High income	28.902
SWZ	2015	Lower middle income	22.994
SYC	2015	High income	15.005
SYR	2015	Lower middle income	\N
TCD	2015	Low income	14.605
TGO	2015	Low income	15.912
THA	2015	Upper middle income	30.301
TJK	2015	Lower middle income	12.495
TKM	2015	Upper middle income	\N
TLS	2015	Lower middle income	\N
TON	2015	Lower middle income	\N
TTO	2015	High income	11.131
TUN	2015	Lower middle income	12.528
TUR	2015	Upper middle income	24.743
TUV	2015	Upper middle income	\N
TZA	2015	Low income	24.079
UGA	2015	Low income	17.888
UKR	2015	Lower middle income	15.657
URY	2015	High income	17.713
USA	2015	High income	19.107
UZB	2015	Lower middle income	30.29
VCT	2015	Upper middle income	2.483
VEN	2015	Upper middle income	31.787
VNM	2015	Lower middle income	28.055
VUT	2015	Lower middle income	\N
WSM	2015	Lower middle income	\N
YEM	2015	Lower middle income	-3.715
ZAF	2015	Upper middle income	16.46
ZMB	2015	Lower middle income	39.177
ZWE	2015	Low income	5.563
\.


--
-- TOC entry 3353 (class 0 OID 16411)
-- Dependencies: 210
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.languages (lang_id, code, name, percent, official) FROM stdin;
1	AFG	Dari	50	t
2	AFG	Pashto	35	t
3	AFG	Turkic	11	f
4	AFG	Other	4	f
5	ALB	Albanian	98.8	t
6	ALB	Greek	0.5	f
7	ALB	Other	0.6	f
8	ALB	unspecified	0.1	f
9	DZA	Arabic	\N	t
10	DZA	French	\N	f
11	DZA	Berber or Tamazight	\N	t
12	DZA	Shawiya	\N	f
13	DZA	Mzab	\N	f
14	DZA	Tuareg	\N	f
15	ASM	Samoan	88.6	f
16	ASM	English	3.9	f
17	ASM	Tongan	2.7	f
18	ASM	Other	3	f
19	ASM	Other	1.8	f
20	AND	Catalan	\N	t
21	AND	French	\N	f
22	AND	Castilian	\N	f
23	AND	Portuguese	\N	f
24	AGO	Portuguese	71.2	t
25	AGO	Umbundu	23	f
26	AGO	Kikongo	8.2	f
27	AGO	Kimbundu	7.8	f
28	AGO	Chokwe	6.5	f
29	AGO	Nhaneca	3.4	f
30	AGO	Nganguela	3.1	f
31	AGO	Fiote	2.4	f
32	AGO	Kwanhama	2.3	f
33	AGO	Muhumbi	2.1	f
34	AGO	Luvale	1	f
35	AGO	Other	3.6	f
36	AIA	English	\N	t
37	ATG	English	\N	t
38	ATG	Antiguan creole	\N	f
39	ARG	Spanish	\N	t
40	ARG	Italian	\N	f
41	ARG	English	\N	f
42	ARG	German	\N	f
43	ARG	French	\N	f
44	ARG	indigenous	\N	f
45	ARM	Armenian	97.9	t
46	ARM	Kurdish	1	f
47	ARM	Other	1	f
48	ABW	Papiamento	69.4	t
49	ABW	Spanish	13.7	f
50	ABW	English	7.1	f
51	ABW	Dutch	6.1	t
52	ABW	Chinese	1.5	f
53	ABW	Other	1.7	f
54	ABW	unspecified	0.4	f
55	AUS	English	76.8	f
56	AUS	Mandarin	1.6	f
57	AUS	Italian	1.4	f
58	AUS	Arabic	1.3	f
59	AUS	Greek	1.2	f
60	AUS	Cantonese	1.2	f
61	AUS	Vietnamese	1.1	f
62	AUS	Other	10.4	f
63	AUS	unspecified	5	f
64	AUT	German	88.6	t
65	AUT	Turkish	2.3	f
66	AUT	Serbian	2.2	f
67	AUT	Croatian	1.6	t
68	AUT	Other	5.3	f
69	AZE	Azerbaijani	92.5	t
70	AZE	Russian	1.4	f
71	AZE	Armenian	1.4	f
72	AZE	Other	4.7	f
73	BHS	English	\N	t
74	BHS	Creole	\N	f
75	BHR	Arabic	\N	t
76	BHR	English	\N	f
77	BHR	Farsi	\N	f
78	BHR	Urdu	\N	f
79	BGD	Bangla	98.8	t
80	BGD	Other	1.2	f
81	BRB	English	\N	t
82	BRB	Bajan	\N	f
83	BLR	Russian	70.2	t
84	BLR	Belarusian	23.4	t
85	BLR	Other	3.1	f
86	BLR	unspecified	3.3	f
87	BEL	Dutch	60	t
88	BEL	French	40	t
89	BEL	German	1	t
90	BLZ	English	62.9	t
91	BLZ	Spanish	56.6	f
92	BLZ	Creole	44.6	f
93	BLZ	Maya	10.5	f
94	BLZ	German	3.2	f
95	BLZ	Garifuna	2.9	f
96	BLZ	Other	1.8	f
97	BLZ	unknown	0.3	f
98	BLZ	none	0.2	f
99	BEN	French	\N	t
100	BEN	Fon and Yoruba	\N	f
101	BEN	Tribal Languages	\N	f
102	BMU	English	\N	t
103	BMU	Portuguese	\N	f
104	BTN	Sharchhopka	28	f
105	BTN	Dzongkha	24	t
106	BTN	Lhotshamkha	22	f
107	BTN	Other	26	f
108	BOL	Spanish	60.7	t
109	BOL	Quechua	21.2	t
110	BOL	Aymara	14.6	t
111	BOL	Foreign Languages	2.4	f
112	BOL	Guarani	0.6	t
113	BOL	Other	0.4	f
114	BOL	none	0.1	f
115	BIH	Bosnian	52.9	t
116	BIH	Serbian	30.8	t
117	BIH	Croatian	14.6	t
118	BIH	Other	1.6	f
119	BIH	No Answer	0.2	f
120	BWA	Setswana	77.3	f
121	BWA	Sekalanga	7.4	f
122	BWA	Shekgalagadi	3.4	f
123	BWA	English	2.8	t
124	BWA	Zezuru	2	f
125	BWA	Sesarwa	1.7	f
126	BWA	Sembukushu	1.6	f
127	BWA	Ndebele	1	f
128	BWA	Other	2.8	f
129	BRA	Portuguese	\N	t
130	BRN	Malay	\N	t
131	BRN	English	\N	f
132	BRN	Chinese	\N	f
133	BGR	Bulgarian	76.8	t
134	BGR	Turkish	8.2	f
135	BGR	Romani	3.8	f
136	BGR	Other	0.7	f
137	BGR	unspecified	10.5	f
138	BFA	French	\N	t
139	BFA	Sudanic family	90	f
140	MMR	Burmese	\N	t
141	BDI	Kirundi	38.8	t
142	BDI	French	0.3	t
143	BDI	Swahili	0.2	f
144	BDI	English	0.06	t
145	BDI	Other	3.7	f
146	BDI	unspecified	56.9	f
147	KHM	Khmer	96.3	t
148	KHM	Other	3.7	f
149	CMR	Other	\N	f
150	CMR	English	\N	t
151	CMR	French	\N	t
152	CAN	English	58.7	t
153	CAN	French	22	t
154	CAN	Punjabi	1.4	f
155	CAN	Italian	1.3	f
156	CAN	Spanish	1.3	f
157	CAN	German	1.3	f
158	CAN	Cantonese	1.2	f
159	CAN	Tagalog	1.2	f
160	CAN	Arabic	1.1	f
161	CAN	Other	10.5	f
162	CYM	English	90.9	t
163	CYM	Spanish	4	f
164	CYM	Filipino	3.3	f
165	CYM	Other	1.7	f
166	CYM	unspecified	0.1	f
167	CAF	French	\N	t
168	CAF	Sangho	\N	f
169	CAF	tribal	\N	f
170	TCD	French	\N	t
171	TCD	Arabic	\N	t
172	TCD	Sara	\N	f
173	TCD	Other	\N	f
174	CHL	Spanish	99.5	t
175	CHL	English	10.2	f
176	CHL	indigenous	1	f
177	CHL	Other	2.3	f
178	CHL	unspecified	0.2	f
179	CHN	Mandarin	\N	t
180	CHN	Yue	\N	f
181	CHN	Wu	\N	f
182	CHN	Minbei	\N	f
183	CHN	Minnan	\N	f
184	CHN	Xiang	\N	f
185	CHN	Gan	\N	f
186	CHN	Hakka	\N	f
187	CHN	Other	\N	f
188	CXR	English	\N	t
189	CXR	Chinese	\N	f
190	CXR	Malay	\N	f
191	CCK	Malay	\N	f
192	CCK	English	\N	f
193	COL	Spanish	\N	t
194	COM	Arabic	\N	t
195	COM	French	\N	t
196	COM	Shikomoro	\N	t
197	COD	French	\N	t
198	COD	Lingala	\N	f
199	COD	Kingwana	\N	f
200	COD	Kikongo	\N	f
201	COD	Tshiluba	\N	f
202	COG	French	\N	t
203	COG	Lingala	\N	f
204	COG	Other	\N	f
205	COK	English	86.4	t
206	COK	Rarotongan	76.2	t
207	COK	Other	8.3	f
208	CRI	Spanish	\N	t
209	CRI	English	\N	f
210	CIV	French	\N	t
211	CIV	Other	\N	f
212	HRV	Croatian	95.6	t
213	HRV	Serbian	1.2	f
214	HRV	Other	3	f
215	HRV	unspecified	0.2	f
216	CUB	Spanish	\N	t
217	CYP	Greek	80.9	t
218	CYP	Turkish	0.2	t
219	CYP	English	4.1	f
220	CYP	Romanian	2.9	f
221	CYP	Russian	2.5	f
222	CYP	Bulgarian	2.2	f
223	CYP	Arabic	1.2	f
224	CYP	Filipino	1.1	f
225	CYP	Other	4.3	f
226	CYP	unspecified	0.6	f
227	DNK	Danish	\N	f
228	DNK	Faroese	\N	f
229	DNK	Greenlandic	\N	f
230	DNK	German	\N	f
231	DJI	French	\N	t
232	DJI	Arabic	\N	t
233	DJI	Somali	\N	f
234	DJI	Afar	\N	f
235	DMA	English	\N	t
236	DMA	French patois	\N	f
237	DOM	Spanish	\N	t
238	ECU	Spanish	93	t
239	ECU	Quechua	4.1	f
240	ECU	Other	0.7	f
241	ECU	foreign	2.2	f
242	EGY	Arabic	\N	t
243	EGY	English	\N	f
244	SLV	Spanish	\N	t
245	SLV	Nawat	\N	f
246	GNQ	Spanish	67.6	t
247	GNQ	Other	\N	t
248	GNQ	Fang	\N	f
249	GNQ	Bubi	32.4	f
250	ERI	Tigrinya	\N	t
251	ERI	Arabic	\N	t
252	ERI	English	\N	t
253	ERI	Tigre	\N	f
254	ERI	Kunama	\N	f
255	ERI	Afar	\N	f
256	ERI	Other	\N	f
257	EST	Estonian	68.5	t
258	EST	Russian	29.6	f
259	EST	Ukrainian	0.6	f
260	EST	Other	1.2	f
261	EST	unspecified	0.1	f
262	ETH	Oromo	33.8	t
263	ETH	Amharic	29.3	t
264	ETH	Somali	6.2	t
265	ETH	Tigrigna	5.9	t
266	ETH	Sidamo	4	f
267	ETH	Wolaytta	2.2	f
268	ETH	Gurage	2	f
269	ETH	Afar	1.7	t
270	ETH	Hadiyya	1.7	f
271	ETH	Gamo	1.5	f
272	ETH	Gedeo	1.3	f
273	ETH	Opuuo	1.2	f
274	ETH	Kafa	1.1	f
275	ETH	Other	8.1	f
276	ETH	English	\N	f
277	ETH	Arabic	\N	f
278	FRO	Faroese	93.8	f
279	FRO	Danish	3.2	f
280	FRO	Other	3	f
281	FIN	Finnish	88.3	t
282	FIN	Swedish	5.3	t
283	FIN	Russian	1.4	f
284	FIN	Other	5	f
285	FRA	French	100	t
286	FRA	Provencal	\N	f
287	FRA	Breton	\N	f
288	FRA	Alsatian	\N	f
289	FRA	Corsican	\N	f
290	FRA	Catalan	\N	f
291	FRA	Basque	\N	f
292	FRA	Flemish	\N	f
293	FRA	Occitan	\N	f
294	FRA	Picard	\N	f
295	FRA	French	\N	f
296	FRA	Creole patois	\N	f
297	FRA	Mahorian	\N	f
298	PYF	French	70	t
299	PYF	Polynesian	28.2	t
300	PYF	Other	1.8	f
301	GAB	French	\N	t
302	GAB	Fang	\N	f
303	GAB	Myene	\N	f
304	GAB	Nzebi	\N	f
305	GAB	Bapounou/Eschira	\N	f
306	GAB	Bandjabi	\N	f
307	GMB	English	\N	t
308	GMB	Mandinka	\N	f
309	GMB	Wolof	\N	f
310	GMB	Fula	\N	f
311	GMB	Other	\N	f
312	GEO	Georgian	87.6	t
313	GEO	Azeri	6.2	f
314	GEO	Armenian	3.9	f
315	GEO	Russian	1.2	f
316	GEO	Other	1	f
317	DEU	German	\N	t
318	GHA	Asante	16	f
319	GHA	Ewe	14	f
320	GHA	Fante	11.6	f
321	GHA	Boron	4.9	f
322	GHA	Dagomba	4.4	f
323	GHA	Dangme	4.2	f
324	GHA	Dagarte	3.9	f
325	GHA	Kokomba	3.5	f
326	GHA	Akyem	3.2	f
327	GHA	Ga	3.1	f
328	GHA	Other	31.2	f
329	GIB	English	\N	t
330	GIB	Spanish	\N	f
331	GIB	Italian	\N	f
332	GIB	Portuguese	\N	f
333	GRC	Greek	99	t
334	GRC	Other	1	f
335	GRL	Greenlandic	\N	t
336	GRL	Danish	\N	t
337	GRL	English	\N	f
338	GRD	English	\N	t
339	GRD	French patois	\N	f
340	GUM	English	43.6	f
341	GUM	Filipino	21.2	f
342	GUM	Chamorro	17.8	f
343	GUM	Other Pacific Islander	10	f
344	GUM	Asian	6.3	f
345	GUM	Other	1.1	f
346	GTM	Spanish	60	t
347	GTM	Amerindian	40	f
348	GIN	French	\N	t
349	GNB	Crioulo	\N	f
350	GNB	Portuguese	\N	t
351	GNB	Pular	\N	f
352	GNB	Mandingo	\N	f
353	GUY	English	\N	t
354	GUY	Guyanese Creole	\N	f
355	GUY	Amerindian	\N	f
356	GUY	Indian	\N	f
357	GUY	Chinese	\N	f
358	HTI	French	\N	t
359	HTI	Creole	\N	t
360	HND	Spanish	\N	t
361	HND	Amerindian	\N	f
362	HKG	Cantonese	89.5	t
363	HKG	English	3.5	t
364	HKG	Mandarin	1.4	t
365	HKG	Other Chinese	4	f
366	HKG	Other	1.6	f
367	HUN	Hungarian	99.6	t
368	HUN	English	16	f
369	HUN	German	11.2	f
370	HUN	Russian	1.6	f
371	HUN	Romanian	1.3	f
372	HUN	French	1.2	f
373	HUN	Other	4.2	f
374	ISL	Icelandic	\N	f
375	ISL	English	\N	f
376	ISL	Nordic	\N	f
377	ISL	German	\N	f
378	IND	Hindi	41	f
379	IND	Bengali	8.1	f
380	IND	Telugu	7.2	f
381	IND	Marathi	7	f
382	IND	Tamil	5.9	f
383	IND	Urdu	5	f
384	IND	Gujarati	4.5	f
385	IND	Kannada	3.7	f
386	IND	Malayalam	3.2	f
387	IND	Oriya	3.2	f
388	IND	Punjabi	2.8	f
389	IND	Assamese	1.3	f
390	IND	Maithili	1.2	f
391	IND	Other	5.9	f
392	IDN	Bahasa	\N	t
393	IDN	English	\N	f
394	IDN	Dutch	\N	f
395	IDN	Other	\N	f
396	IRN	Persian	\N	t
397	IRN	Turkic	\N	f
398	IRN	Kurdish	\N	f
399	IRN	Gilaki and Mazandarani	\N	f
400	IRN	Luri	\N	f
401	IRN	Balochi	\N	f
402	IRN	Arabic	\N	f
403	IRN	Other	\N	f
404	IRQ	Arabic	\N	t
405	IRQ	Kurdish	\N	t
406	IRQ	Turkmen	\N	f
407	IRQ	Syriac	\N	t
408	IRQ	Armenian	\N	t
409	IRL	English	61.3	t
410	IRL	Irish	38.7	t
411	ISR	Hebrew	\N	t
412	ISR	Arabic	\N	t
413	ISR	English	\N	f
414	ITA	Italian	\N	t
415	ITA	German	\N	f
416	ITA	French	\N	f
417	ITA	Slovene	\N	f
418	JAM	English	\N	f
419	JAM	English patois	\N	f
420	JPN	Japanese	\N	f
421	JOR	Arabic	\N	t
422	JOR	English	\N	f
423	KAZ	Kazakh	74	t
424	KAZ	Russian	94.4	t
425	KEN	English	\N	t
426	KEN	Kiswahili	\N	t
427	KEN	Other	\N	f
428	KIR	Kiribati	\N	f
429	KIR	English	\N	t
430	PRK	Korean	\N	f
431	KOR	Korean	\N	f
432	KOR	English	\N	f
433	KWT	Arabic	\N	t
434	KWT	English	\N	f
435	KGZ	Kyrgyz	71.4	t
436	KGZ	Uzbek	14.4	f
437	KGZ	Russian	9	t
438	KGZ	Other	5.2	f
439	LAO	Lao	\N	t
440	LAO	French	\N	f
441	LAO	English	\N	f
442	LAO	Other	\N	f
443	LVA	Latvian	56.3	t
444	LVA	Russian	33.8	f
445	LVA	Other	0.6	f
446	LVA	unspecified	9.4	f
447	LBN	Arabic	\N	t
448	LBN	French	\N	f
449	LBN	English	\N	f
450	LBN	Armenian	\N	f
451	LSO	Sesotho	\N	t
452	LSO	English	\N	t
453	LSO	Zulu	\N	f
454	LSO	Xhosa	\N	f
455	LBR	English	20	t
456	LBR	Other	\N	f
457	LBY	Arabic	\N	t
458	LBY	Italian	\N	f
459	LBY	English	\N	f
460	LBY	Berber	\N	f
461	LIE	German	94.5	t
462	LIE	Italian	1.1	f
463	LIE	Other	4.3	f
464	LTU	Lithuanian	82	t
465	LTU	Russian	8	f
466	LTU	Polish	5.6	f
467	LTU	Other	0.9	f
468	LTU	unspecified	3.5	f
469	LUX	Luxembourgish	88.8	t
470	LUX	French	4.2	t
471	LUX	Portuguese	2.3	f
472	LUX	German	1.1	t
473	LUX	Other	3.5	f
474	MKD	Macedonian	66.5	t
475	MKD	Albanian	25.1	f
476	MKD	Turkish	3.5	f
477	MKD	Romani	1.9	f
478	MKD	Serbian	1.2	f
479	MKD	Other	1.8	f
480	MDG	French	\N	t
481	MDG	Malagasy	\N	t
482	MDG	English	\N	f
483	MWI	English	\N	t
484	MWI	Chichewa	\N	f
485	MWI	Chinyanja	\N	f
486	MWI	Chiyao	\N	f
487	MWI	Chitumbuka	\N	f
488	MWI	Chilomwe	\N	f
489	MWI	Chinkhonde	\N	f
490	MWI	Chingoni	\N	f
491	MWI	Chisena	\N	f
492	MWI	Chitonga	\N	f
493	MWI	Chinyakyusa	\N	f
494	MWI	Chilambya	\N	f
495	MYS	Bahasa Malaysia	\N	t
496	MYS	English	\N	f
497	MYS	Chinese	\N	f
498	MYS	Tamil	\N	f
499	MYS	Telugu	\N	f
500	MYS	Malayalam	\N	f
501	MYS	Panjabi	\N	f
502	MYS	Thai	\N	f
503	MDV	Dhivehi	\N	t
504	MDV	English	\N	t
505	MLI	French	\N	t
506	MLI	Bambara	46.3	f
507	MLI	Peul/Foulfoulbe	9.4	f
508	MLI	Dogon	7.2	f
509	MLI	Maraka/Soninke	6.4	f
510	MLI	Malinke	5.6	f
511	MLI	Sonrhai/Djerma	5.6	f
512	MLI	Minianka	4.3	f
513	MLI	Tamacheq	3.5	f
514	MLI	Senoufo	2.6	f
515	MLI	Bobo	2.1	f
516	MLI	unspecified	0.7	f
517	MLI	Other	6.3	f
518	MLT	Maltese	90.1	t
519	MLT	English	6	t
520	MLT	multilingual	3	f
521	MLT	Other	0.9	f
522	MHL	Marshallese	98.2	t
523	MHL	Other	1.8	f
524	MRT	Arabic	\N	t
525	MRT	Pular	\N	f
526	MRT	Soninke	\N	f
527	MRT	Wolof	\N	f
528	MRT	French	\N	f
529	MUS	Creole	86.5	f
530	MUS	Bhojpuri	5.3	f
531	MUS	French	4.1	f
532	MUS	Other	2.6	f
533	MUS	unspecified	0.1	f
534	MEX	Spanish	92.7	f
535	MEX	indigenous	0.8	f
536	MEX	unspecified	0.8	f
537	FSM	English	\N	t
538	FSM	Chuukese	\N	f
539	FSM	Kosrean	\N	f
540	FSM	Pohnpeian	\N	f
541	FSM	Yapese	\N	f
542	FSM	Ulithian	\N	f
543	FSM	Woleaian	\N	f
544	FSM	Nukuoro	\N	f
545	FSM	Kapingamarangi	\N	f
546	MDA	Romanian	80.2	t
547	MDA	Russian	9.7	f
548	MDA	Gagauz	4.2	f
549	MDA	Ukrainian	3.9	f
550	MDA	Bulgarian	1.5	f
551	MDA	Romani	0.3	f
552	MDA	Other	0.2	f
553	MCO	French	\N	t
554	MCO	English	\N	f
555	MCO	Italian	\N	f
556	MCO	Monegasque	\N	f
557	MNG	Mongolian	90	t
558	MNG	Turkic	\N	f
559	MNG	Russian	\N	f
560	MSR	English	\N	f
561	MAR	Arabic	\N	t
562	MAR	Berber	\N	t
563	MAR	Tachelhit	\N	f
564	MAR	Tarifit	\N	f
565	MAR	French	\N	f
566	MAR	government	\N	f
567	MAR	and	\N	f
568	MOZ	Emakhuwa	25.3	f
569	MOZ	Portuguese	10.7	t
570	MOZ	Xichangana	10.3	f
571	MOZ	Cisena	7.5	f
572	MOZ	Elomwe	7	f
573	MOZ	Echuwabo	5.1	f
574	MOZ	Other	30.4	f
575	MOZ	unspecified	3.7	f
576	NAM	Oshivambo	48.9	f
577	NAM	Nama	11.3	f
578	NAM	Afrikaans	10.4	f
579	NAM	Otjiherero	8.6	f
580	NAM	Kavango	8.5	f
581	NAM	Caprivi	4.8	f
582	NAM	English	3.4	t
583	NAM	Other	2.3	f
584	NAM	Other	1.7	f
585	NRU	Nauruan	93	t
586	NRU	English	2	f
587	NRU	Other	5	f
588	NPL	Nepali	44.6	t
589	NPL	Maithali	11.7	f
590	NPL	Bhojpuri	6	f
591	NPL	Tharu	5.8	f
592	NPL	Tamang	5.1	f
593	NPL	Newar	3.2	f
594	NPL	Magar	3	f
595	NPL	Bajjika	3	f
596	NPL	Urdu	2.6	f
597	NPL	Avadhi	1.9	f
598	NPL	Limbu	1.3	f
599	NPL	Gurung	1.2	f
600	NPL	Other	10.4	f
601	NPL	unspecified	0.2	f
602	NLD	Dutch	\N	t
603	NCL	French	\N	t
604	NCL	Other	\N	f
605	NZL	English	89.8	t
606	NZL	Maori	3.5	t
607	NZL	Samoan	2	f
608	NZL	Hindi	1.6	f
609	NZL	French	1.2	f
610	NZL	Northern Chinese	1.2	f
611	NZL	Yue	1	f
612	NZL	Other	20.5	f
613	NZL	New Zealand Sign	\N	t
614	NIC	Spanish	95.3	t
615	NIC	Miskito	2.2	f
616	NIC	Mestizo	2	f
617	NIC	Other	0.5	f
618	NER	French	\N	t
619	NER	Hausa	\N	f
620	NER	Djerma	\N	f
621	NGA	English	\N	t
622	NGA	Hausa	\N	f
623	NGA	Yoruba	\N	f
624	NGA	Igbo	\N	f
625	NGA	Fulani	\N	f
626	NGA	Other	\N	f
627	NIU	Niuean	46	t
628	NIU	Niuean	32	f
629	NIU	English	11	t
630	NIU	Niuean	5	f
631	NIU	Other	6	f
632	NFK	English	67.6	t
633	NFK	Other	32.4	f
634	MNP	Philippine	32.8	f
635	MNP	Chamorro	24.1	t
636	MNP	English	17	t
637	MNP	Other Pacific Island	10.1	f
638	MNP	Chinese	6.8	f
639	MNP	Other Asian	7.3	f
640	MNP	Other	1.9	f
641	NOR	Bokmal	\N	t
642	NOR	Nynorsk	\N	t
643	NOR	Other	\N	f
644	OMN	Arabic	\N	t
645	OMN	English	\N	f
646	OMN	Baluchi	\N	f
647	OMN	Urdu	\N	f
648	OMN	Indian	\N	f
649	PAK	Punjabi	48	f
650	PAK	Sindhi	12	f
651	PAK	Saraiki	10	f
652	PAK	Pashto	8	f
653	PAK	Urdu	8	t
654	PAK	Balochi	3	f
655	PAK	Hindko	2	f
656	PAK	Brahui	1	f
657	PAK	English	\N	t
658	PAK	Burushaski	\N	f
659	PAK	Other	\N	f
660	PLW	Palauan	65.2	t
661	PLW	Other	1.9	f
662	PLW	English	19.1	t
663	PLW	Filipino	9.9	f
664	PLW	Chinese	1.2	f
665	PLW	Other	2.8	f
666	PAN	Spanish	\N	t
667	PAN	indigenous	\N	f
668	PAN	Panamanian English Creole	\N	f
669	PAN	English	\N	f
670	PAN	Chinese	\N	f
671	PAN	Arabic	\N	f
672	PAN	French	\N	f
673	PAN	Other	\N	f
674	PAN	Hebrew	\N	f
675	PAN	Korean	\N	f
676	PAN	Japanese	\N	f
677	PNG	Tok Pisin	\N	t
678	PNG	English	\N	t
679	PNG	Hiri	\N	t
680	PNG	Other	\N	f
681	PRY	Spanish	\N	t
682	PRY	Guarani	\N	t
683	PER	Spanish	84.1	t
684	PER	Quechua	13	t
685	PER	Aymara	1.7	t
686	PER	Ashaninka	0.3	f
687	PER	Other Native	0.7	f
688	PER	Other	0.2	f
689	PHL	Filipino	\N	t
690	PHL	English	\N	t
691	PHL	Other	\N	f
692	POL	Polish	98.2	t
693	POL	Silesian	1.4	f
694	POL	Other	1.1	f
695	POL	unspecified	1.3	f
696	PRT	Portuguese	\N	t
697	PRT	Mirandese	\N	t
698	PRI	Spanish	\N	f
699	PRI	English	\N	f
700	QAT	Arabic	\N	t
701	QAT	English	\N	f
702	ROM	Romanian	85.4	t
703	ROM	Hungarian	6.3	f
704	ROM	Romani	1.2	f
705	ROM	Other	1	f
706	ROM	unspecified	6.1	f
707	RUS	Russian	85.7	t
708	RUS	Tatar	3.2	f
709	RUS	Chechen	1	f
710	RUS	Other	10.1	f
711	RWA	Kinyarwanda	99.4	t
712	RWA	French	0.1	t
713	RWA	English	0.1	t
714	RWA	Swahili	0.02	f
715	RWA	Other	0.03	f
716	RWA	unspecified	0.3	f
717	KNA	English	\N	t
718	LCA	English	\N	t
719	LCA	French patois	\N	f
720	SPM	French	\N	t
721	VCT	English	\N	f
722	VCT	French patois	\N	f
723	WSM	Samoan	\N	t
724	WSM	English	\N	f
725	SMR	Italian	\N	f
726	STP	Portuguese	98.4	t
727	STP	Forro	36.2	f
728	STP	Cabo	8.5	f
729	STP	French	6.8	f
730	STP	Angolar	6.6	f
731	STP	English	4.9	f
732	STP	Lunguie	1	f
733	STP	Other	2.4	f
734	SAU	Arabic	\N	t
735	SEN	French	\N	t
736	SEN	Wolof	\N	f
737	SEN	Pular	\N	f
738	SEN	Jola	\N	f
739	SEN	Mandinka	\N	f
740	SEN	Serer	\N	f
741	SEN	Soninke	\N	f
742	SYC	Seychellois	89.1	t
743	SYC	English	5.1	t
744	SYC	French	0.7	t
745	SYC	Other	3.8	f
746	SYC	unspecified	1.4	f
747	SLE	English	\N	t
748	SLE	Mende	\N	f
749	SLE	Temne	\N	f
750	SLE	Krio	10	f
751	SGP	Mandarin	36.3	t
752	SGP	English	29.8	t
753	SGP	Malay	11.9	t
754	SGP	Hokkien	8.1	f
755	SGP	Cantonese	4.1	f
756	SGP	Tamil	3.2	t
757	SGP	Teochew	3.2	f
758	SGP	Other Indian	1.2	f
759	SGP	Other Chinese	1.1	f
760	SGP	Other	1.1	f
761	SVK	Slovak	78.6	t
762	SVK	Hungarian	9.4	f
763	SVK	Roma	2.3	f
764	SVK	Ruthenian	1	f
765	SVK	Other	8.8	f
766	SVN	Slovenian	91.1	t
767	SVN	Serbo	4.5	f
768	SVN	Other	4.4	f
769	SVN	Italian	\N	t
770	SVN	Hungarian	\N	t
771	SLB	Melanesian pidgin	\N	f
772	SLB	English	1	t
773	SLB	indigenous	\N	f
774	SOM	Somali	\N	t
775	SOM	Arabic	\N	t
776	SOM	Italian	\N	f
777	SOM	English	\N	f
778	ZAF	IsiZulu	22.7	t
779	ZAF	IsiXhosa	16	t
780	ZAF	Afrikaans	13.5	t
781	ZAF	English	9.6	t
782	ZAF	Sepedi	9.1	t
783	ZAF	Setswana	8	t
784	ZAF	Sesotho	7.6	t
785	ZAF	Xitsonga	4.5	t
786	ZAF	siSwati	2.5	t
787	ZAF	Tshivenda	2.4	t
788	ZAF	isiNdebele	2.1	t
789	ZAF	sign	0.5	f
790	ZAF	Other	1.6	f
791	ESP	Castilian Spanish	74	t
792	ESP	Catalan	17	t
793	ESP	Galician	7	t
794	ESP	Basque	2	t
795	ESP	Aranese	\N	t
796	LKA	Sinhala	74	t
797	LKA	Tamil	18	t
798	LKA	Other	8	f
799	SDN	Arabic	\N	t
800	SDN	English	\N	t
801	SDN	Nubian	\N	f
802	SDN	Ta Bedawie	\N	f
803	SDN	Fur	\N	f
804	SUR	Dutch	\N	t
805	SUR	English	\N	f
806	SUR	Sranang Tongo	\N	f
807	SUR	Caribbean Hindustani	\N	f
808	SUR	Javanese	\N	f
809	SWZ	English	\N	t
810	SWZ	siSwati	\N	t
811	SWE	Swedish	\N	t
812	CHE	German	63	t
813	CHE	French	22.7	t
814	CHE	Italian	8.1	t
815	CHE	English	4.9	f
816	CHE	Portuguese	3.7	f
817	CHE	Albanian	3	f
818	CHE	Serbo-Croatian	2.4	f
819	CHE	Spanish	2.2	f
820	CHE	Romansch	0.5	t
821	CHE	Other	7.1	f
822	SYR	Arabic	\N	t
823	SYR	Kurdish	\N	f
824	SYR	Armenian	\N	f
825	SYR	Aramaic	\N	f
826	SYR	Circassian	\N	f
827	SYR	French	\N	f
828	SYR	English	\N	f
829	TWN	Mandarin	\N	t
830	TWN	Taiwanese	\N	f
831	TWN	Hakka	\N	f
832	TJK	Tajik	\N	t
833	TJK	Russian	\N	f
834	TZA	Kiswahili	\N	t
835	TZA	English	\N	t
836	TZA	Arabic	\N	f
837	TZA	many	\N	f
838	THA	Thai	90.7	t
839	THA	Burmese	1.3	f
840	THA	Other	8	f
841	TGO	French	\N	t
842	TGO	Ewe	\N	f
843	TGO	Kabye	\N	f
844	TGO	Mina	\N	f
845	TGO	Dagomba	\N	f
846	TKL	Tokelauan	88.1	f
847	TKL	English	48.6	f
848	TKL	Samoan	26.7	f
849	TKL	Tuvaluan	11.2	f
850	TKL	Kiribati	1.5	f
851	TKL	Other	2.8	f
852	TKL	none	2.8	f
853	TKL	unspecified	0.8	f
854	TON	Tongan	\N	t
855	TON	English	\N	t
856	TON	Other	1.1	f
857	TON	unspecified	0.03	f
858	TTO	English	\N	t
859	TTO	Caribbean Hindustani	\N	f
860	TTO	French	\N	f
861	TTO	Spanish	\N	f
862	TTO	Chinese	\N	f
863	TUN	Arabic	\N	t
864	TUN	French	\N	f
865	TUN	Berber	\N	f
866	TUR	Turkish	\N	t
867	TUR	Kurdish	\N	f
868	TUR	Other	\N	f
869	TKM	Turkmen	72	t
870	TKM	Russian	12	f
871	TKM	Uzbek	9	f
872	TKM	Other	7	f
873	TCA	English	\N	t
874	TUV	Tuvaluan	\N	t
875	TUV	English	\N	t
876	TUV	Samoan	\N	f
877	TUV	Kiribati	\N	f
878	UGA	English	\N	t
879	UGA	Ganda	\N	f
880	UGA	Other	\N	f
881	UGA	Nilo	\N	f
882	UGA	Swahili	\N	f
883	UGA	Arabic	\N	f
884	UKR	Ukrainian	67.5	t
885	UKR	Russian	29.6	f
886	UKR	Other	2.9	f
887	ARE	Arabic	\N	t
888	ARE	Persian	\N	f
889	ARE	English	\N	f
890	ARE	Hindi	\N	f
891	ARE	Urdu	\N	f
892	GBR	English	\N	f
893	USA	English	79.2	f
894	USA	Spanish	12.9	f
895	USA	Other	8	f
896	URY	Spanish	\N	t
897	URY	Portunol	\N	f
898	URY	Brazilero	\N	f
899	UZB	Uzbek	74.3	t
900	UZB	Russian	14.2	f
901	UZB	Tajik	4.4	f
902	UZB	Other	7.1	f
903	VUT	Tribal Languages	63.2	f
904	VUT	Bislama	33.7	t
905	VUT	English	2	t
906	VUT	French	0.6	t
907	VUT	Other	0.5	f
908	VEN	Spanish	\N	t
909	VEN	indigenous	\N	f
910	VNM	Vietnamese	\N	t
911	VNM	English	\N	f
912	VNM	Other	\N	f
913	WLF	Wallisian	58.9	f
914	WLF	Futunian	30.1	f
915	WLF	French	10.8	t
916	WLF	Other	0.2	f
917	ESH	Standard	\N	f
918	ESH	Hassaniya	\N	f
919	ESH	Moroccan	\N	f
920	YEM	Arabic	\N	t
921	ZMB	Bembe	33.4	f
922	ZMB	Nyanja	14.7	f
923	ZMB	Tonga	11.4	f
924	ZMB	Lozi	5.5	f
925	ZMB	Chewa	4.5	f
926	ZMB	Nsenga	2.9	f
927	ZMB	Tumbuka	2.5	f
928	ZMB	Lunda	1.9	f
929	ZMB	Kaonde	1.8	f
930	ZMB	Lala	1.8	f
931	ZMB	Lamba	1.8	f
932	ZMB	English	1.7	t
933	ZMB	Luvale	1.5	f
934	ZMB	Mambwe	1.3	f
935	ZMB	Namwanga	1.2	f
936	ZMB	Lenje	1.1	f
937	ZMB	Bisa	1	f
938	ZMB	Other	9.7	f
939	ZMB	unspecified	0.2	f
940	ZWE	Shona	\N	t
941	ZWE	Ndebele	\N	t
942	ZWE	English	\N	t
943	ZWE	Chewa	\N	t
944	ZWE	Chibarwe	\N	t
945	ZWE	Kalanga	\N	t
946	ZWE	Koisan	\N	t
947	ZWE	Nambya	\N	t
948	ZWE	Ndau	\N	t
949	ZWE	Shangani	\N	t
950	ZWE	sign	\N	t
951	ZWE	Sotho	\N	t
952	ZWE	Tonga	\N	t
953	ZWE	Tswana	\N	t
954	ZWE	Venda	\N	t
955	ZWE	Xhosa	\N	t
\.


--
-- TOC entry 3356 (class 0 OID 16432)
-- Dependencies: 213
-- Data for Name: populations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.populations (pop_id, country_code, year, fertility_rate, life_expectancy, size) FROM stdin;
20	ABW	2010	1.704	74.95354	101597
19	ABW	2015	1.647	75.573586	103889
2	AFG	2010	5.746	58.97083	2.7962208e+07
1	AFG	2015	4.653	60.71717	3.2526562e+07
12	AGO	2010	6.416	50.65417	2.1219954e+07
11	AGO	2015	5.996	52.666096	2.5021974e+07
4	ALB	2010	1.663	77.03695	2.913021e+06
3	ALB	2015	1.793	78.014465	2.889167e+06
10	AND	2010	1.27	\N	84419
9	AND	2015	\N	\N	70473
409	ARE	2010	1.868	76.67525	8.329453e+06
408	ARE	2015	1.767	77.541245	9.156963e+06
16	ARG	2010	2.37	75.48498	4.1222876e+07
15	ARG	2015	2.308	76.33422	4.3416756e+07
18	ARM	2010	1.648	74.22634	2.963496e+06
17	ARM	2015	1.517	74.79712	3.017712e+06
8	ASM	2010	\N	\N	55636
7	ASM	2015	\N	\N	55538
14	ATG	2010	2.13	75.30878	87233
13	ATG	2015	2.063	76.10022	91818
22	AUS	2010	1.928	81.69512	2.203175e+07
21	AUS	2015	1.833	82.45122	2.3789752e+07
24	AUT	2010	1.44	80.58049	8.363404e+06
23	AUT	2015	1.47	81.8439	8.638366e+06
26	AZE	2010	1.92	70.45132	9.054332e+06
25	AZE	2015	1.97	70.84878	9.649341e+06
64	BDI	2010	6.302	54.829197	9.461117e+06
63	BDI	2015	5.863	57.107048	1.1178921e+07
38	BEL	2010	1.86	80.18293	1.0895586e+07
37	BEL	2015	1.74	81.2878	1.124942e+07
42	BEN	2010	5.094	58.729706	9.509798e+06
41	BEN	2015	4.688	59.720707	1.0879829e+07
62	BFA	2010	5.867	57.05139	1.5632066e+07
61	BFA	2015	5.437	58.931293	1.810557e+07
32	BGD	2010	2.332	70.08029	1.5161678e+08
31	BGD	2015	2.144	72.0012	1.6099565e+08
60	BGR	2010	1.57	73.51219	7.395599e+06
59	BGR	2015	1.53	74.46585	7.177991e+06
30	BHR	2010	2.142	76.12756	1.261319e+06
29	BHR	2015	2.035	76.8191	1.377237e+06
28	BHS	2010	1.904	74.59239	360830
27	BHS	2015	1.861	75.39683	388019
50	BIH	2010	1.288	75.807686	3.835258e+06
49	BIH	2015	1.253	76.588585	3.810416e+06
36	BLR	2010	1.494	70.40488	9.490583e+06
35	BLR	2015	1.724	73.62439	9.489616e+06
40	BLZ	2010	2.714	69.78205	321609
39	BLZ	2015	2.546	70.19237	359287
44	BMU	2010	1.76	79.288536	65124
43	BMU	2015	1.62	81.01219	65235
48	BOL	2010	3.2	66.40775	9.918245e+06
47	BOL	2015	2.923	68.73961	1.0724705e+07
54	BRA	2010	1.838	73.264145	1.9861421e+08
53	BRA	2015	1.778	74.67588	2.0784752e+08
34	BRB	2010	1.781	74.84529	279566
33	BRB	2015	1.796	75.65844	284215
58	BRN	2010	1.953	77.59827	393302
57	BRN	2015	1.856	79.04083	423188
46	BTN	2010	2.331	67.89242	720246
45	BTN	2015	1.984	69.832855	774830
52	BWA	2010	2.893	63.402294	2.047831e+06
51	BWA	2015	2.799	64.48741	2.262485e+06
76	CAF	2010	4.624	47.625317	4.444973e+06
75	CAF	2015	4.206	51.41912	4.900274e+06
72	CAN	2010	1.6269	81.19756	3.4005272e+07
71	CAN	2015	1.6	82.137634	3.5848608e+07
377	CHE	2010	1.52	82.24634	7.824909e+06
376	CHE	2015	1.54	83.19756	8.28143e+06
80	CHI	2010	1.436	80.01037	159583
79	CHI	2015	1.473	80.751686	163692
82	CHL	2010	1.824	80.2758	1.7015048e+07
81	CHL	2015	1.749	81.78756	1.794814e+07
84	CHN	2010	1.539	75.007416	1.337705e+09
83	CHN	2015	1.569	75.98634	1.37122e+09
96	CIV	2010	5.231	50.151463	2.0131708e+07
95	CIV	2015	4.937	51.919758	2.2701556e+07
70	CMR	2010	5.017	53.694828	2.0590666e+07
69	CMR	2015	4.63	55.93439	2.334418e+07
90	COD	2010	6.386	56.896145	6.5938712e+07
89	COD	2015	5.908	59.023903	7.7266816e+07
92	COG	2010	5.02	59.143124	4.066078e+06
91	COG	2015	4.811	62.867657	4.62033e+06
86	COL	2010	2.01	73.277855	4.59181e+07
85	COL	2015	1.875	74.18202	4.8228704e+07
88	COM	2010	4.755	61.830513	698695
87	COM	2015	4.418	63.554024	788474
66	CPV	2010	2.464	72.5979	490379
65	CPV	2015	2.268	73.35564	520502
94	CRI	2010	1.922	78.736046	4.545273e+06
93	CRI	2015	1.8	79.586464	4.80785e+06
100	CUB	2010	1.635	78.93563	1.1308133e+07
99	CUB	2015	1.606	79.54642	1.1389562e+07
102	CUW	2010	2.2	\N	148703
101	CUW	2015	1.9	\N	157979
74	CYM	2010	\N	\N	55509
73	CYM	2015	\N	\N	59967
104	CYP	2010	1.481	79.38195	1.103685e+06
103	CYP	2015	1.438	80.3071	1.1653e+06
106	CZE	2010	1.51	77.42439	1.047441e+07
105	CZE	2015	1.53	79.47317	1.0546059e+07
145	DEU	2010	1.39	79.98781	8.177693e+07
144	DEU	2015	1.5	81.09024	8.167977e+07
110	DJI	2010	3.484	60.360683	830802
109	DJI	2015	3.131	62.28566	887861
112	DMA	2010	\N	\N	71167
111	DMA	2015	\N	\N	72680
108	DNK	2010	1.87	79.1	5.547683e+06
107	DNK	2015	1.69	81.1	5.683483e+06
114	DOM	2010	2.597	72.7498	9.897983e+06
113	DOM	2015	2.451	73.67668	1.0528391e+07
6	DZA	2010	2.873	73.80405	3.603616e+07
5	DZA	2015	2.805	75.042534	3.966652e+07
116	ECU	2010	2.656	75.02981	1.4934692e+07
115	ECU	2015	2.513	76.10293	1.6144363e+07
118	EGY	2010	3.184	70.340294	8.204099e+07
117	EGY	2015	3.314	71.31695	9.150808e+07
123	ERI	2010	4.605	61.466145	4.689664e+06
434	ERI	2015	4.207	64.1009	\N
357	ESP	2010	1.37	81.62683	4.6576896e+07
356	ESP	2015	1.32	83.380486	4.6443992e+07
125	EST	2010	1.72	75.42927	1.331475e+06
124	EST	2015	1.54	77.13171	1.314608e+06
127	ETH	2010	4.903	61.296124	8.7561816e+07
126	ETH	2015	4.275	64.57805	9.939075e+07
133	FIN	2010	1.87	79.870735	5.363352e+06
132	FIN	2015	1.71	81.38537	5.479531e+06
131	FJI	2010	2.669	69.38437	859952
130	FJI	2015	2.54	70.25627	892145
135	FRA	2010	2.03	81.663414	6.5027512e+07
134	FRA	2015	2.01	82.67073	6.6538392e+07
129	FRO	2010	2.5	80.63902	48567
128	FRO	2015	2.4	81.63415	48199
257	FSM	2010	3.46	68.61227	103619
256	FSM	2015	3.193	69.234245	104460
139	GAB	2010	4.083	62.12083	1.541936e+06
138	GAB	2015	3.849	64.89034	1.725292e+06
411	GBR	2010	1.92	80.402435	6.2766364e+07
410	GBR	2015	1.81	81.60488	6.512886e+07
143	GEO	2010	1.82	74.00244	3.926e+06
142	GEO	2015	1.815	74.81741	3.7171e+06
147	GHA	2010	4.272	60.609974	2.4317734e+07
146	GHA	2015	4.117	61.491734	2.7409892e+07
149	GIB	2010	\N	\N	30732
148	GIB	2015	\N	\N	32217
161	GIN	2010	5.337	56.30505	1.1012406e+07
160	GIN	2015	4.932	59.19344	1.260859e+07
141	GMB	2010	5.796	59.34061	1.693002e+06
140	GMB	2015	5.674	60.46768	1.990924e+06
163	GNB	2010	5.091	53.814365	1.634196e+06
162	GNB	2015	4.761	55.467316	1.844325e+06
122	GNQ	2010	5.176	55.971	728710
121	GNQ	2015	4.745	57.963413	845060
151	GRC	2010	1.48	80.3878	1.1121341e+07
150	GRC	2015	1.3	81.58781	1.0820883e+07
155	GRD	2010	2.24	72.56751	104677
154	GRD	2015	2.127	73.523	106825
153	GRL	2010	2.195	70.85707	56905
152	GRL	2015	2	\N	56114
159	GTM	2010	3.434	70.77547	1.4732261e+07
158	GTM	2015	3.159	71.95649	1.6342897e+07
157	GUM	2010	2.472	78.100876	159440
156	GUM	2015	2.366	79.379	169885
165	GUY	2010	2.68	66.04271	753362
164	GUY	2015	2.532	66.507515	767085
171	HKG	2010	1.127	82.97805	7.0242e+06
170	HKG	2015	1.195	84.278046	7.3057e+06
169	HND	2010	2.695	72.393974	7.503875e+06
168	HND	2015	2.332	73.33312	8.07506e+06
98	HRV	2010	1.55	76.47561	4.417781e+06
97	HRV	2015	1.46	77.27561	4.203604e+06
167	HTI	2010	3.325	61.240124	9.999617e+06
166	HTI	2015	2.973	63.073757	1.0711067e+07
173	HUN	2010	1.25	74.20731	1.0000023e+07
172	HUN	2015	1.44	75.960976	9.843028e+06
179	IDN	2010	2.513	68.147194	2.4161312e+08
178	IDN	2015	2.437	69.071686	2.5756381e+08
187	IMN	2010	\N	\N	84327
186	IMN	2015	\N	\N	87780
177	IND	2010	2.622	66.50615	1.2309844e+09
176	IND	2015	2.395	68.348564	1.3110505e+09
185	IRL	2010	2.05	80.743904	4.560155e+06
184	IRL	2015	1.94	81.50244	4.64374e+06
181	IRN	2010	1.765	73.98317	7.4253376e+07
180	IRN	2015	1.685	75.59134	7.910927e+07
183	IRQ	2010	4.659	68.49012	3.0868156e+07
182	IRQ	2015	4.515	69.59027	3.6423396e+07
175	ISL	2010	2.2	81.89756	318041
174	ISL	2015	1.93	82.86098	330815
189	ISR	2010	3.03	81.60244	7.6236e+06
188	ISR	2015	3.09	82.051216	8.3801e+06
191	ITA	2010	1.46	82.03658	5.9277416e+07
190	ITA	2015	1.37	83.49024	6.0730584e+07
193	JAM	2010	2.174	74.84749	2.741253e+06
192	JAM	2015	2.025	75.79817	2.793335e+06
197	JOR	2010	3.553	73.43583	6.517912e+06
196	JOR	2015	3.366	74.20334	7.594547e+06
195	JPN	2010	1.39	82.84268	1.2807e+08
194	JPN	2015	1.46	83.84366	1.2695847e+08
199	KAZ	2010	2.6	68.295364	1.6321581e+07
198	KAZ	2015	2.73	72	1.7544126e+07
201	KEN	2010	4.629	58.71861	4.0328312e+07
200	KEN	2015	4.263	62.13373	4.6050304e+07
213	KGZ	2010	3.1	69.3	5.4479e+06
212	KGZ	2015	3.2	70.65122	5.9569e+06
68	KHM	2010	2.875	66.38566	1.4363586e+07
67	KHM	2015	2.595	68.65614	1.5577899e+07
203	KIR	2010	3.843	65.30278	102648
202	KIR	2015	3.69	66.14785	112423
361	KNA	2010	\N	\N	52352
360	KNA	2015	\N	\N	55572
207	KOR	2010	1.226	80.551216	4.9410368e+07
206	KOR	2015	1.239	82.15585	5.0617044e+07
211	KWT	2010	2.353	74.11663	3.059473e+06
210	KWT	2015	2.072	74.6979	3.892115e+06
215	LAO	2010	3.293	64.33363	6.260544e+06
214	LAO	2015	2.923	66.53988	6.802023e+06
219	LBN	2010	1.613	78.46536	4.337156e+06
218	LBN	2015	1.722	79.62861	5.850743e+06
223	LBR	2010	5.024	59.44129	3.95799e+06
222	LBR	2015	4.647	61.16095	4.503438e+06
225	LBY	2010	2.603	71.73739	6.265697e+06
224	LBY	2015	2.426	71.82632	6.278438e+06
363	LCA	2010	1.982	74.4711	177397
362	LCA	2015	1.869	75.18451	184999
227	LIE	2010	1.4	81.84146	36276
226	LIE	2015	1.59	82.07317	37531
359	LKA	2010	2.203	74.33924	2.0119e+07
358	LKA	2015	2.062	74.95319	2.0966e+07
221	LSO	2010	3.303	47.483414	2.010586e+06
220	LSO	2015	3.142	49.96122	2.135022e+06
229	LTU	2010	1.5	73.268295	3.097282e+06
228	LTU	2015	1.63	75.119514	2.90491e+06
231	LUX	2010	1.63	80.63171	506953
230	LUX	2015	1.5	82.22927	569604
217	LVA	2010	1.36	73.482925	2.097555e+06
216	LVA	2015	1.64	74.12439	1.977527e+06
233	MAC	2010	1.061	79.69039	534626
232	MAC	2015	1.276	80.766075	587606
365	MAF	2010	1.82	78.721954	30235
364	MAF	2015	1.81	79.47073	31754
267	MAR	2010	2.535	72.57693	3.210774e+07
266	MAR	2015	2.486	74.289314	3.4377512e+07
261	MCO	2010	\N	\N	36845
260	MCO	2015	\N	\N	37731
259	MDA	2010	1.274	69.70927	3.562045e+06
258	MDA	2015	1.248	71.62644	3.554108e+06
237	MDG	2010	4.654	63.361732	2.1079532e+07
236	MDG	2015	4.35	65.48278	2.423539e+07
243	MDV	2010	2.209	76.200485	367000
242	MDV	2015	2.088	76.979	409163
255	MEX	2010	2.356	76.02678	1.18617544e+08
254	MEX	2015	2.213	76.920685	1.27017224e+08
249	MHL	2010	\N	\N	52428
248	MHL	2015	\N	\N	52993
235	MKD	2010	1.471	74.72263	2.062443e+06
234	MKD	2015	1.535	75.49534	2.078453e+06
245	MLI	2010	6.547	56.179806	1.5167286e+07
244	MLI	2015	6.143	58.45722	1.7599694e+07
247	MLT	2010	1.36	81.39756	414508
246	MLT	2015	1.42	81.94634	431874
271	MMR	2010	2.386	64.91749	5.1733012e+07
270	MMR	2015	2.177	66.042076	5.3897152e+07
265	MNE	2010	1.767	75.045296	619428
264	MNE	2015	1.676	76.33771	622159
263	MNG	2010	2.555	67.60383	2.712657e+06
262	MNG	2015	2.638	69.821266	2.959134e+06
291	MNP	2010	\N	\N	53860
290	MNP	2015	\N	\N	55070
269	MOZ	2010	5.564	53.226902	2.4321456e+07
268	MOZ	2015	5.295	55.371243	2.7977864e+07
251	MRT	2010	4.835	62.006172	3.5914e+06
250	MRT	2015	4.543	63.202827	4.067564e+06
253	MUS	2010	1.57	72.967316	1.2504e+06
252	MUS	2015	1.36	74.35317	1.262605e+06
239	MWI	2010	5.531	56.836243	1.4769824e+07
238	MWI	2015	5.048	63.796852	1.7215232e+07
241	MYS	2010	1.998	74.15778	2.81195e+07
240	MYS	2015	1.931	74.87517	3.0331008e+07
273	NAM	2010	3.605	62.480293	2.193643e+06
272	NAM	2015	3.473	64.915436	2.45883e+06
281	NCL	2010	2.17	77.47317	250000
280	NCL	2015	2.22	77.77317	273000
287	NER	2010	7.667	58.259	1.629199e+07
286	NER	2015	7.567	61.969025	1.989912e+07
289	NGA	2010	5.84	51.329514	1.5942474e+08
288	NGA	2015	5.587	53.048878	1.8220197e+08
285	NIC	2010	2.428	73.58173	5.737722e+06
284	NIC	2015	2.231	75.09812	6.082032e+06
279	NLD	2010	1.79	80.70244	1.6615394e+07
278	NLD	2015	1.71	81.70731	1.6939924e+07
293	NOR	2010	1.95	80.99756	4.889252e+06
292	NOR	2015	1.75	82.1	5.190239e+06
277	NPL	2010	2.606	67.97149	2.687591e+07
276	NPL	2015	2.167	69.97334	2.85137e+07
275	NRU	2010	\N	\N	10025
274	NRU	2015	\N	\N	12475
283	NZL	2010	2.17	80.70244	4.3507e+06
282	NZL	2015	1.99	81.45683	4.5957e+06
295	OMN	2010	2.888	76.0528	2.943747e+06
294	OMN	2015	2.712	77.324196	4.490541e+06
297	PAK	2010	3.855	65.16256	1.7004392e+08
296	PAK	2015	3.55	66.376976	1.8892488e+08
301	PAN	2010	2.513	76.86363	3.620506e+06
300	PAN	2015	2.421	77.767296	3.929141e+06
307	PER	2010	2.545	73.63981	2.9373644e+07
306	PER	2015	2.427	74.78073	3.137667e+07
309	PHL	2010	3.133	67.78332	9.3038904e+07
308	PHL	2015	2.944	68.40675	1.0069939e+08
299	PLW	2010	\N	\N	20470
298	PLW	2015	2.21	\N	21291
303	PNG	2010	3.985	61.99483	6.847517e+06
302	PNG	2015	3.705	62.776684	7.619321e+06
311	POL	2010	1.41	76.24634	3.8042792e+07
310	POL	2015	1.32	78.20488	3.7986412e+07
315	PRI	2010	1.6235	78.41164	3.721526e+06
314	PRI	2015	1.432	79.57232	3.474182e+06
205	PRK	2010	2.003	68.900024	2.4500506e+07
204	PRK	2015	1.968	70.33793	2.5155316e+07
313	PRT	2010	1.39	79.02683	1.05731e+07
312	PRT	2015	1.23	81.52195	1.0358076e+07
305	PRY	2010	2.73	72.30129	6.209877e+06
304	PRY	2015	2.509	73.025635	6.639123e+06
427	PSE	2010	4.433	72.21493	3.811102e+06
426	PSE	2015	4.11	73.074196	4.422143e+06
137	PYF	2010	2.11	75.69539	268065
136	PYF	2015	2.027	76.75241	282764
317	QAT	2010	2.104	77.825516	1.765513e+06
316	QAT	2015	2.007	78.76259	2.235355e+06
319	ROU	2010	1.59	73.458534	2.0246872e+07
318	ROU	2015	1.52	74.960976	1.9815308e+07
321	RUS	2010	1.567	68.84122	1.4284946e+08
320	RUS	2015	1.75	70.90854	1.4409686e+08
323	RWA	2010	4.441	61.40178	1.0293669e+07
322	RWA	2015	3.8	64.524536	1.1609666e+07
331	SAU	2010	2.987	73.70161	2.8090648e+07
330	SAU	2015	2.713	74.49334	3.1540372e+07
369	SDN	2010	4.636	62.042583	3.6114884e+07
368	SDN	2015	4.286	63.71073	4.023488e+07
333	SEN	2010	5.174	64.01444	1.2956791e+07
332	SEN	2015	5.031	66.80441	1.5129273e+07
341	SGP	2010	1.15	81.541466	5.076732e+06
340	SGP	2015	1.24	82.59512	5.535002e+06
349	SLB	2010	4.236	67.06566	526177
348	SLB	2015	3.904	68.14624	583591
339	SLE	2010	5.151	48.22895	5.775902e+06
338	SLE	2015	4.516	51.30817	6.453184e+06
120	SLV	2010	2.078	71.67061	6.038306e+06
119	SLV	2015	1.909	73.0011	6.126583e+06
327	SMR	2010	\N	83.15938	30690
326	SMR	2015	\N	\N	31781
351	SOM	2010	6.868	54.02366	9.581714e+06
350	SOM	2015	6.364	55.685585	1.0787104e+07
335	SRB	2010	1.4	74.336586	7.291436e+06
334	SRB	2015	1.46	75.48781	7.095383e+06
355	SSD	2010	5.376	53.6649	1.0056475e+07
354	SSD	2015	4.937	56.11151	1.2339812e+07
329	STP	2010	4.789	65.85468	170880
328	STP	2015	4.516	66.51371	190344
371	SUR	2010	2.465	70.36273	518141
370	SUR	2015	2.336	71.294174	542975
345	SVK	2010	1.43	75.1122	5.391428e+06
344	SVK	2015	1.37	77.2122	5.423801e+06
347	SVN	2010	1.57	79.42195	2.048583e+06
346	SVN	2015	1.58	81.07805	2.063531e+06
375	SWE	2010	1.98	81.45122	9.378126e+06
374	SWE	2015	1.88	82.551216	9.799186e+06
373	SWZ	2010	3.559	48.345757	1.193148e+06
372	SWZ	2015	3.201	48.87395	1.28697e+06
343	SXM	2010	\N	\N	35474
342	SXM	2015	\N	\N	38824
337	SYC	2010	2.1	73.19756	89770
336	SYC	2015	2.3	73.22927	93419
379	SYR	2010	3.093	72.30744	2.0720602e+07
378	SYR	2015	2.903	70.08932	1.8502412e+07
401	TCA	2010	\N	\N	30993
400	TCA	2015	\N	\N	34339
78	TCD	2010	6.594	49.862072	1.189638e+07
77	TCD	2015	6.05	51.873318	1.4037472e+07
389	TGO	2010	4.868	57.281563	6.390851e+06
388	TGO	2015	4.514	60.120754	7.304578e+06
385	THA	2010	1.547	73.69437	6.6692024e+07
384	THA	2015	1.497	74.6012	6.795936e+07
381	TJK	2010	3.514	68.56339	7.581696e+06
380	TJK	2015	3.454	69.76844	8.481855e+06
399	TKM	2010	2.411	65.02124	5.041995e+06
398	TKM	2015	2.275	65.73644	5.373502e+06
387	TLS	2010	6.235	67.30839	1.057122e+06
386	TLS	2015	5.615	68.52641	1.184765e+06
391	TON	2010	3.913	72.18261	103947
390	TON	2015	3.678	72.944046	106170
393	TTO	2010	1.806	69.79756	1.328095e+06
392	TTO	2015	1.766	70.55771	1.360088e+06
395	TUN	2010	2.098	74.61171	1.0639194e+07
394	TUN	2015	2.132	74.975975	1.1253554e+07
397	TUR	2010	2.134	74.09093	7.2310416e+07
396	TUR	2015	2.052	75.426216	7.866583e+07
403	TUV	2010	\N	\N	9827
402	TUV	2015	\N	\N	9916
383	TZA	2010	5.427	61.62561	4.5648524e+07
382	TZA	2015	5.078	65.48749	5.347042e+07
405	UGA	2010	6.154	55.83666	3.3149416e+07
404	UGA	2015	5.682	59.179073	3.9032384e+07
407	UKR	2010	1.443	70.265366	4.58707e+07
406	UKR	2015	1.506	71.189514	4.5154028e+07
415	URY	2010	2.078	76.39461	3.374414e+06
414	URY	2015	2.007	77.13822	3.431555e+06
413	USA	2010	1.931	78.541466	3.0934685e+08
412	USA	2015	1.843	78.74146	3.2141882e+08
417	UZB	2010	2.342	67.86129	2.85624e+07
416	UZB	2015	2.491	68.45307	3.12989e+07
367	VCT	2010	2.07	72.34639	109316
366	VCT	2015	1.952	73.05237	109462
421	VEN	2010	2.472	73.67161	2.8995744e+07
420	VEN	2015	2.34	74.40961	3.1108084e+07
56	VGB	2010	\N	\N	27223
55	VGB	2015	\N	\N	30117
425	VIR	2010	1.81	79.17317	106267
424	VIR	2015	1.74	79.87317	103574
423	VNM	2010	1.946	74.990364	8.6932496e+07
422	VNM	2015	1.96	75.77773	9.1713296e+07
419	VUT	2010	3.499	70.84995	236299
418	VUT	2015	3.31	72.157364	264652
325	WSM	2010	4.338	72.417	186029
324	WSM	2015	4.028	73.76488	193228
209	XKX	2010	2.29	69.9	1.77568e+06
208	XKX	2015	2.09	71.346344	1.8018e+06
429	YEM	2010	4.703	62.76873	2.3591972e+07
428	YEM	2015	4.043	64.03139	2.6832216e+07
353	ZAF	2010	2.467	54.390755	5.0979432e+07
352	ZAF	2015	2.339	57.440903	5.5011976e+07
431	ZMB	2010	5.687	56.383854	1.3917439e+07
430	ZMB	2015	5.284	60.785683	1.6211767e+07
433	ZWE	2010	4.048	49.574657	1.3973897e+07
432	ZWE	2015	3.856	59.16107	1.5602751e+07
\.


--
-- TOC entry 3212 (class 2606 OID 16504)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (name);


--
-- TOC entry 3196 (class 2606 OID 16410)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (code);


--
-- TOC entry 3206 (class 2606 OID 16445)
-- Name: countries_plus countries_plus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries_plus
    ADD CONSTRAINT countries_plus_pkey PRIMARY KEY (code);


--
-- TOC entry 3202 (class 2606 OID 16431)
-- Name: currencies currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (curr_id);


--
-- TOC entry 3208 (class 2606 OID 16452)
-- Name: economies2010 economies2010_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economies2010
    ADD CONSTRAINT economies2010_pkey PRIMARY KEY (code);


--
-- TOC entry 3210 (class 2606 OID 16459)
-- Name: economies2015 economies2015_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economies2015
    ADD CONSTRAINT economies2015_pkey PRIMARY KEY (code);


--
-- TOC entry 3200 (class 2606 OID 16424)
-- Name: economies economies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economies
    ADD CONSTRAINT economies_pkey PRIMARY KEY (econ_id);


--
-- TOC entry 3198 (class 2606 OID 16417)
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (lang_id);


--
-- TOC entry 3204 (class 2606 OID 16438)
-- Name: populations populations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.populations
    ADD CONSTRAINT populations_pkey PRIMARY KEY (pop_id);


-- Completed on 2021-12-18 11:07:29

--
-- PostgreSQL database dump complete
--

