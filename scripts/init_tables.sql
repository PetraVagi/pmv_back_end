/* USERS */
CREATE TABLE IF NOT EXISTS public.users (
    id serial NOT NULL,
    name VARCHAR(60) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE public.users OWNER to pmv_admin;
/* WORDS */
CREATE TABLE IF NOT EXISTS public.words (
    id serial NOT NULL,
    "ownerId" integer NOT NULL,
    english jsonb NOT NULL,
    hungarian jsonb NOT NULL,
    "exampleSentences" jsonb NOT NULL,
    notes text,
    type character varying(10),
    favourite boolean,
    "deletionDate" date,
    "memoryLevel" smallint NOT NULL,
    "actualScore" smallint NOT NULL,
    "finalScore" smallint NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_owner FOREIGN KEY ("ownerId") REFERENCES public.users (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);
ALTER TABLE public.words OWNER to pmv_admin;
/* GRAMMATICIAL STRUCTURES */
CREATE TABLE IF NOT EXISTS public.grammatical_structures (
    id serial NOT NULL,
    title character varying(150) NOT NULL,
    subtitle character varying(250) NOT NULL,
    forming text,
    notes text,
    "basicSentences" jsonb,
    "realLifeUsages" jsonb,
    PRIMARY KEY (id)
);
ALTER TABLE public.grammatical_structures OWNER to pmv_admin;
/*  USERS AND GRAMMATICAL STRUCTURES*/
CREATE TABLE IF NOT EXISTS public.users_and_grammatical_structures (
    id serial NOT NULL,
    "userId" integer NOT NULL,
    "grammaticalStructureId" integer NOT NULL,
    asked smallint NOT NULL,
    known smallint NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_user FOREIGN KEY ("userId") REFERENCES public.users (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_grammatical_structure FOREIGN KEY ("grammaticalStructureId") REFERENCES public.grammatical_structures (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);
ALTER TABLE public.users_and_grammatical_structures OWNER to pmv_admin;