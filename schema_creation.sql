-- create database mystic_tuner_database


CREATE TABLE CARD (
    id serial primary key,
    deckid integer NOT NULL,
    cardname character varying(200) NOT NULL,
    sideboard boolean DEFAULT false,
    cardtype character varying(20),
    count integer DEFAULT 1 NOT NULL
);


CREATE TABLE DECK (
    "deckType" character varying(100) NOT NULL,
    "deckName" character varying(100) NOT NULL,
    "DID" serial primary key,
    commander character varying(100),
    "userId" character varying NOT NULL
);