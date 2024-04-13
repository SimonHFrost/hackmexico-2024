BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dumpster" (
    "id" serial PRIMARY KEY,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);


--
-- MIGRATION VERSION FOR dorado_dumpster
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dorado_dumpster', '20240413192741136', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240413192741136', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
