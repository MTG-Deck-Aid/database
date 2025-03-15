--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: Card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Card" (
    id integer NOT NULL,
    deckid integer NOT NULL,
    cardname character varying(200) NOT NULL,
    sideboard boolean DEFAULT false,
    cardtype character varying(20),
    count integer DEFAULT 1 NOT NULL
);


ALTER TABLE public."Card" OWNER TO postgres;

--
-- Name: Card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Card_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Card_id_seq" OWNER TO postgres;

--
-- Name: Card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Card_id_seq" OWNED BY public."Card".id;


--
-- Name: Deck; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Deck" (
    "deckType" character varying(100) NOT NULL,
    "deckName" character varying(100) NOT NULL,
    "DID" integer NOT NULL,
    commander character varying(100),
    "userId" character varying NOT NULL
);


ALTER TABLE public."Deck" OWNER TO postgres;

--
-- Name: Deck_DID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Deck_DID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Deck_DID_seq" OWNER TO postgres;

--
-- Name: Deck_DID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Deck_DID_seq" OWNED BY public."Deck"."DID";


--
-- Name: Card id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Card" ALTER COLUMN id SET DEFAULT nextval('public."Card_id_seq"'::regclass);


--
-- Name: Deck DID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Deck" ALTER COLUMN "DID" SET DEFAULT nextval('public."Deck_DID_seq"'::regclass);


--
-- Data for Name: Card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Card" (id, deckid, cardname, sideboard, cardtype, count) FROM stdin;
278	1	Akroma, Vision of Ixidor	f	creature	1
279	1	Ishai, Ojutai Dragonspeaker	f	creature	1
280	1	Abandoned Campground	f	land	1
281	1	Adarkar Wastes	f	land	1
282	1	Aegis Turtle	f	creature	1
283	1	Aetherize	f	instant	1
284	1	Ajani’s Pridemate	f	creature	1
285	1	Alluring Siren	f	creature	1
286	1	Angel of the Dawn	f	creature	1
287	1	Angel of Vitality	f	creature	1
288	1	Arcane Signet	f	artifact	1
289	1	Authority of the Consuls	f	enchantment	1
290	1	Azorius Guildgate	f	land	1
291	1	Basri’s Solidarity	f	sorcery	1
292	1	Burnished Hart	f	creature	1
293	1	Cloudblazer	f	creature	1
294	1	Commander’s Sphere	f	artifact	1
295	1	Convolute	f	instant	1
296	1	Crystal Barricade	f	creature	1
297	1	Curator of Destinies	f	creature	1
298	1	Dazzling Angel	f	creature	1
299	1	Dissipate	f	instant	1
300	1	Divine Favor	f	enchantment	1
301	1	Divine Resilience	f	instant	1
302	1	Downpour	f	instant	1
303	1	Drogskol Reaver	f	creature	1
304	1	Empyrean Eagle	f	creature	1
305	1	Essence Scatter	f	instant	1
306	1	Faebloom Trick	f	instant	1
307	1	Felidar Savior	f	creature	1
308	1	Fleeting Flight	f	instant	1
309	1	Fortify	f	instant	1
310	1	Giada, Font of Hope	f	creature	1
311	1	Glimmerburst	f	instant	1
312	1	Glorious Anthem	f	enchantment	1
313	1	Griffin Guide	f	enchantment	1
314	1	Illusory Angel	f	creature	1
315	1	Inspiring Overseer	f	creature	1
316	1	Inspiring Paladin	f	creature	1
317	1	Leyline of Hope	f	enchantment	1
318	1	Linden, the Steadfast Queen	f	creature	1
319	1	Lofty Denial	f	instant	1
320	1	Lyra Dawnbringer	f	creature	1
321	1	Oji, the Exquisite Blade	f	creature	1
322	1	Portent	f	instant	1
323	1	Return to Dust	f	instant	1
324	1	Run Away Together	f	instant	1
325	1	Secluded Courtyard	f	land	1
326	1	Serra Avatar	f	creature	1
327	1	Serra Avenger	f	creature	1
328	1	Serra’s Guardian	f	creature	1
329	1	Sire of Seven Deaths	f	creature	1
330	1	Sleep	f	sorcery	1
331	1	Sol Ring	f	artifact	1
332	1	Solemn Simulacrum	f	creature	1
333	1	Split Up	f	sorcery	1
334	1	Stasis Snare	f	enchantment	1
335	1	Surgical Skullbomb	f	artifact	1
336	1	Temple of Enlightenment	f	land	1
337	1	Think Twice	f	instant	1
338	1	Tranquil Cove	f	land	1
339	1	Twinblade Blessing	f	enchantment	1
340	1	Twist Reality	f	instant	1
341	1	Valorous Stance	f	instant	1
342	1	Vanguard Seraph	f	creature	1
343	1	Warden of Evos Isle	f	creature	1
344	1	Windreader Sphinx	f	creature	1
345	1	Witness Protection	f	enchantment	1
346	1	Youthful Valkyrie	f	creature	1
347	1	Plains	f	land	16
348	1	Island	f	land	15
349	2	Gluntch, the Bestower	f	creature	1
350	2	Abzan Battle Priest	f	creature	1
351	2	Academy Manufactor	f	creature	1
352	2	Ajani, Mentor of Heroes	f	planeswalker	1
353	2	Arcane Signet	f	artifact	1
354	2	Argent Dais	f	artifact	1
355	2	Avacyn's Pilgrim	f	creature	1
356	2	Carnivorous Canopy	f	sorcery	1
357	2	Champion of Lambholt	f	creature	1
358	2	Circuitous Route	f	sorcery	1
359	2	Conclave Mentor	f	creature	1
360	2	Contagion Clasp	f	artifact	1
361	2	Cultivate	f	sorcery	1
362	2	Divine Resilience	f	enchantment	1
363	2	Elite Scaleguard	f	creature	1
364	2	End-Raze Forerunners	f	creature	1
365	2	Evolution Sage	f	creature	1
366	2	Expand the Sphere	f	sorcery	1
367	2	Felidar Retreat	f	enchantment	1
368	2	Fertilid	f	creature	1
369	2	Fertilid's Favor	f	sorcery	1
370	2	Flumph	f	creature	1
371	2	Fog	f	instant	1
372	2	Forest	f	land	19
373	2	Forgotten Ancient	f	creature	1
374	2	Garruk Wildspeaker	f	planeswalker	1
375	2	Genesis Wave	f	sorcery	1
376	2	Ghalta, Primal Hunger	f	creature	1
377	2	Gilded Lotus	f	artifact	1
378	2	Good-Fortune Unicorn	f	creature	1
379	2	Grow from the Ashes	f	sorcery	1
380	2	Hardened Scales	f	enchantment	1
381	2	High Sentinels of Arashin	f	creature	1
382	2	Howling Golem	f	artifact	1
383	2	Insidious Fungus	f	creature	1
384	2	Inspiring Paladin	f	creature	1
385	2	Kalonian Hydra	f	creature	1
386	2	Karametra, God of Harvests	f	creature	1
387	2	Llanowar Elves	f	creature	1
388	2	Mangara, the Diplomat	f	creature	1
389	2	Mikaeus, the Lunarch	f	creature	1
390	2	Monologue Tax	f	enchantment	1
391	2	Overrun	f	sorcery	1
392	2	Ozolith, the Shattered Spire	f	artifact	1
393	2	Plains	f	land	16
13480	5454	Marchesa, the Black Rose	f	\N	1
394	2	Preposterous Proportions	f	enchantment	1
395	2	Reliquary Tower	f	land	1
396	2	Renata, Called to the Hunt	f	creature	1
397	2	Return to Dust	f	instant	1
398	2	Revoke Existence	f	sorcery	1
399	2	Scavenging Ooze	f	creature	1
400	2	Selfless Spirit	f	creature	1
401	2	Selvala, Explorer Returned	f	creature	1
402	2	Sergeant John Benton	f	creature	1
403	2	Slurrk, All-Ingesting	f	creature	1
404	2	Sol Ring	f	artifact	1
405	2	Solemn Simulacrum	f	artifact	1
406	2	Spore Frog	f	creature	1
407	2	Stocking the Pantry	f	sorcery	1
408	2	Thought Vessel	f	artifact	1
409	2	Tuskguard Captain	f	creature	1
410	2	Unbreakable Formation	f	instant	1
411	2	Verdant Confluence	f	sorcery	1
412	2	Vivien Reid	f	planeswalker	1
413	2	Wildwood Scourge	f	creature	1
414	2	Your Temple Is Under Attack	f	instant	1
415	2	Zenith Chronicler	f	artifact	1
416	2	Aether Vial	t	artifact	1
417	2	Akroma's Will	t	instant	1
418	2	Angel of Serenity	t	creature	1
419	2	Apothecary Stomper	t	creature	1
420	2	Astral Cornucopia	t	artifact	1
421	2	Bushwhack	t	sorcery	1
422	2	Chimeric Mass	t	artifact	1
423	2	Commander's Sphere	t	artifact	1
424	2	Eager Trufflesnout	t	creature	1
425	2	Elfsworn Giant	t	creature	1
426	2	Elvish Mystic	t	creature	1
427	2	Fear of Exposure	t	instant	1
428	2	Felidar Savior	t	creature	1
429	2	Fleeting Flight	t	sorcery	1
430	2	Flesh Burrower	t	creature	1
431	2	Frantic Strength	t	instant	1
432	2	Ghirapur Orrery	t	artifact	1
433	2	Griffin Guide	t	enchantment	1
434	2	Heartwood Storyteller	t	creature	1
435	2	Hunter's Bow	t	artifact	1
436	2	Joust Through	t	instant	1
437	2	Keeper of Fables	t	creature	1
438	2	Lifecrafter's Bestiary	t	artifact	1
439	2	Mossborn Hydra	t	creature	1
440	2	Needletooth Pack	t	creature	1
441	2	Nessian Hornbeetle	t	creature	1
442	2	Orzhov Advokist	t	creature	1
443	2	Requiem Angel	t	creature	1
444	2	Reya Dawnbringer	t	creature	1
445	2	Rites of Flourishing	t	enchantment	1
446	2	Scurry Oak	t	creature	1
447	2	Secret Rendezvous	t	sorcery	1
448	2	Shrike Force	t	creature	1
449	2	Sigarda, Host of Herons	t	creature	1
450	2	Slavering Branchsnapper	t	creature	1
451	2	Smothering Tithe	t	enchantment	1
452	2	Snakeskin Veil	t	instant	1
453	2	Spinner of Souls	t	creature	1
454	2	Tenuous Truce	t	enchantment	1
455	2	Terra Stomper	t	creature	1
456	2	Tireless Provisioner	t	creature	1
457	2	Trostani, Selesnya's Voice	t	creature	1
458	2	Vorinclex, Monstrous Raider	t	creature	1
459	2	Weathered Runestone	t	artifact	1
460	2	Windborn Muse	t	creature	1
461	2	Yotian Dissident	t	creature	1
462	3	Forest	f	land	10
463	3	Mountain	f	land	10
464	3	Rockfall Vale	f	land	4
465	3	Kumano Faces Kakkazan	f	enchantment	4
466	3	Phoenix Chick	f	creature	4
467	3	Quirion Beastcaller	f	creature	3
468	3	Bloodthirsty Adversary	f	creature	2
469	3	Halana and Alena, Partners	f	creature	2
470	3	Tovolar, Dire Overlord	f	creature	2
471	3	Riveteers Requisitioner	f	creature	2
472	3	Mondrak, Glory Dominus	f	creature	2
473	3	Gruul Spellbreaker	f	creature	1
474	3	Lightning Strike	f	instant	4
475	3	Play with Fire	f	instant	4
476	3	Strangle	f	sorcery	2
477	3	Blizzard Brawl	f	sorcery	2
478	3	Kami’s Flare	f	instant	2
479	3	Fable of the Mirror-Breaker	f	enchantment	2
480	3	Reckoner Bankbuster	f	artifact	2
481	4	Taii Wakeen, Perfect Shot	f	creature	1
482	4	Abrade	f	instant	1
483	4	Arcane Bombardment	f	enchantment	1
484	4	Arcane Lighthouse	f	land	1
485	4	Arcane Signet	f	artifact	1
486	4	Austere Command	f	sorcery	1
487	4	Battlemage's Bracers	f	artifact	1
488	4	Boros Signet	f	artifact	1
489	4	Bounty Board	f	artifact	1
490	4	Brash Taunter	f	creature	1
491	4	Campus Guide	f	creature	1
492	4	Command Tower	f	land	1
493	4	Crush Contraband	f	instant	1
494	4	Deafening Clarion	f	sorcery	1
495	4	Electrickery	f	instant	1
496	4	Emerge Unscathed	f	instant	1
497	4	End the Festivities	f	sorcery	1
498	4	Everflowing Chalice	f	artifact	1
499	4	Evolving Wilds	f	land	1
500	4	Fiery Annihilation	f	sorcery	1
501	4	Fiery Confluence	f	sorcery	1
502	4	Fiery Impulse	f	instant	1
503	4	Firebrand Archer	f	creature	1
504	4	Fires of Mount Doom	f	enchantment	1
505	4	Firespitter Whelp	f	creature	1
506	4	Flame Slash	f	sorcery	1
507	4	Flames of the Firebrand	f	sorcery	1
508	4	Gods Willing	f	instant	1
509	4	Grapeshot	f	sorcery	1
510	4	Heartflame Duelist // Heartflame Slash	f	creature	1
511	4	Hell to Pay	f	sorcery	1
512	4	Imodane, the Pyrohammer	f	creature	1
513	4	Impending Flux	f	sorcery	1
514	4	Into the Fire	f	sorcery	1
515	4	Joust Through	f	instant	1
516	4	Lavaspur Boots	f	artifact	1
517	4	Lorehold Command	f	instant	1
518	4	Magda, the Hoardmaster	f	creature	1
519	4	Magmatic Galleon	f	artifact	1
520	4	Mana Geyser	f	sorcery	1
521	4	Mind Stone	f	artifact	1
522	4	Mogg Mob	f	creature	1
523	4	Moon-Blessed Cleric	f	creature	1
524	4	Mountain	f	land	17
525	4	Myriad Landscape	f	land	1
526	4	Nevinyrral's Disk	f	artifact	1
527	4	Phlage, Titan of Fire's Fury	f	creature	1
528	4	Plains	f	land	12
529	4	Radiant Scrollwielder	f	creature	1
530	4	Ramunap Ruins	f	land	1
531	4	Rem Karolus, Stalwart Slayer	f	creature	1
532	4	Repercussion	f	enchantment	1
533	4	Rodeo Pyromancers	f	creature	1
534	4	Ruby Medallion	f	artifact	1
535	4	Runaway Steam-Kin	f	creature	1
536	4	Rune of Sustenance	f	enchantment	1
537	4	Scorching Dragonfire	f	instant	1
538	4	Sejiri Shelter // Sejiri Glacier	f	land	1
539	4	Shivan Gorge	f	land	1
540	4	Showdown of the Skalds	f	enchantment	1
541	4	Skewer the Critics	f	sorcery	1
542	4	Skullcrack	f	instant	1
543	4	Smash to Dust	f	sorcery	1
544	4	Sol Ring	f	artifact	1
545	4	Spikefield Hazard // Spikefield Cave	f	land	1
546	4	Stuffy Doll	f	creature	1
547	4	Swiftfoot Boots	f	artifact	1
548	4	Syr Carah, the Bold	f	creature	1
549	4	Terramorphic Expanse	f	land	1
550	4	The Rollercrusher Ride	f	artifact	1
551	4	Thermo-Alchemist	f	creature	1
552	4	Twin Bolt	f	instant	1
553	4	Untimely Malfunction	f	sorcery	1
554	4	Prisoner's Dilemma	t	instant	1
13481	5454	Academy Ruins	f	\N	1
13482	5454	Aether Channeler	f	\N	1
13483	5454	Altar of Dementia	f	\N	1
13484	5454	An Offer You Can't Refuse	f	\N	1
13485	5454	Arcane Signet	f	\N	1
13486	5454	Ashnod's Altar	f	\N	1
13487	5454	Atsushi, the Blazing Sky	f	\N	1
13488	5454	Baleful Strix	f	\N	1
13489	5454	Bedevil	f	\N	1
13490	5454	Blackcleave Cliffs	f	\N	1
13491	5454	Blasphemous Act	f	\N	1
13492	5454	Blood Artist	f	\N	1
13493	5454	Body Launderer	f	\N	1
13494	5454	Carrion Feeder	f	\N	1
13495	5454	Cavern of Souls	f	\N	1
13496	5454	Chaos Warp	f	\N	1
13497	5454	Command Tower	f	\N	1
13498	5454	Counterspell	f	\N	1
13499	5454	Crumbling Necropolis	f	\N	1
13500	5454	Cytoplast Manipulator	f	\N	1
13501	5454	Dauthi Voidwalker	f	\N	1
13502	5454	Demonic Tutor	f	\N	1
13503	5454	Diabolic Intent	f	\N	1
13504	5454	Dictate of Erebos	f	\N	1
13505	5454	Dimir Signet	f	\N	1
13506	5454	Exotic Orchard	f	\N	1
13507	5454	Fabled Passage	f	\N	1
13508	5454	Feed the Swarm	f	\N	1
13509	5454	Flayer of the Hatebound	f	\N	1
13510	5454	Glen Elendra Archmage	f	\N	1
13511	5454	Goblin Bombardment	f	\N	1
13512	5454	Graven Cairns	f	\N	1
13513	5454	Grim Haruspex	f	\N	1
13514	5454	Guildmages' Forum	f	\N	1
13515	5454	High Market	f	\N	1
13516	5454	Imperial Recruiter	f	\N	1
13517	5454	Iron Apprentice	f	\N	1
13518	5454	Island	f	\N	4
13519	5454	Izzet Signet	f	\N	1
13520	5454	Juri, Master of the Revue	f	\N	1
13521	5454	Lim-Dûl's Vault	f	\N	1
13522	5454	Mark of Mutiny	f	\N	1
13523	5454	Metallic Mimic	f	\N	1
13524	5454	Midnight Reaper	f	\N	1
13525	5454	Mikaeus, the Unhallowed	f	\N	1
13526	5454	Mind Stone	f	\N	1
13527	5454	Mountain	f	\N	4
13528	5454	Murderous Redcap	f	\N	1
13529	5454	Myr Scrapling	f	\N	1
13530	5454	Myriad Landscape	f	\N	1
13531	5454	Narset, Parter of Veils	f	\N	1
13532	5454	Negate	f	\N	1
13533	5454	Opal Palace	f	\N	1
13534	5454	Path of Ancestry	f	\N	1
13535	5454	Propaganda	f	\N	1
13536	5454	Puppeteer Clique	f	\N	1
13537	5454	Rakdos Charm	f	\N	1
13538	5454	Rakdos Signet	f	\N	1
13539	5454	River Kelpie	f	\N	1
13540	5454	Sage of Fables	f	\N	1
13541	5454	Shivan Reef	f	\N	1
13542	5454	Sidisi, Undead Vizier	f	\N	1
13543	5454	Skullclamp	f	\N	1
13544	5454	Smoldering Marsh	f	\N	1
13545	5454	Sneak Attack	f	\N	1
13546	5454	Sol Ring	f	\N	1
13547	5454	Solemn Simulacrum	f	\N	1
13548	5454	Spark Double	f	\N	1
13549	5454	Stormcarved Coast	f	\N	1
13550	5454	Sulfurous Springs	f	\N	1
13551	5454	Swamp	f	\N	5
13552	5454	Talisman of Creativity	f	\N	1
13553	5454	Talisman of Dominance	f	\N	1
13554	5454	Talisman of Indulgence	f	\N	1
13555	5454	Temple of Deceit	f	\N	1
13556	5454	Temple of Epiphany	f	\N	1
13557	5454	Temple of Malice	f	\N	1
13558	5454	The Ozolith	f	\N	1
13559	5454	Thran Vigil	f	\N	1
13560	5454	Thundering Raiju	f	\N	1
13561	5454	Tyrite Sanctum	f	\N	1
13562	5454	Uncivil Unrest	f	\N	1
13563	5454	Underground River	f	\N	1
13564	5454	Unspeakable Symbol	f	\N	1
13565	5454	Vampiric Tutor	f	\N	1
13566	5454	Vigean Graftmage	f	\N	1
13567	5454	Viscera Seer	f	\N	1
13568	5454	Withering Torment	f	\N	1
13569	5454	Wurmcoil Engine	f	\N	1
\.


--
-- Data for Name: Deck; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Deck" ("deckType", "deckName", "DID", commander, "userId") FROM stdin;
Commander	Gluntch the Kindest Jellyfish	1	Gluntch, the Bestower	1
Commander	Nuclear Bird	2	Ishai, Ojutai Dragonspeaker	1
Standard	Gruul deck	3	\N	1
Commander	Taii Wakeen hits a triple collateral	4	Taii Wakeen, Perfect Shot	2
commander	Test Deck	5454	Marchesa, the Black Rose	100\n
\.


--
-- Name: Card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Card_id_seq"', 14793, true);


--
-- Name: Deck_DID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Deck_DID_seq"', 5958, true);


--
-- Name: Card Card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Card"
    ADD CONSTRAINT "Card_pkey" PRIMARY KEY (id);


--
-- Name: Deck Deck_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Deck"
    ADD CONSTRAINT "Deck_pkey" PRIMARY KEY ("DID");


--
-- Name: Card deck_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Card"
    ADD CONSTRAINT "deck_Id" FOREIGN KEY (deckid) REFERENCES public."Deck"("DID") ON DELETE CASCADE;


--
-- Name: TABLE "Card"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public."Card" TO "MT_Admin";


--
-- Name: TABLE "Deck"; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public."Deck" TO "MT_Admin";


--
-- PostgreSQL database dump complete
--

