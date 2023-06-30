CREATE TABLE "RESILIA" (
  "id" int PRIMARY KEY,
  "colaboradores" varchar(100),
  "tecnologia" varchar(100),
  "area" varchar(100),
  "parceira" varchar(100)
);

CREATE TABLE "COLABORADORES" (
  "cpf" int PRIMARY KEY,
  "nome" varchar(100),
  "tecnologia" varchar(100),
  "area" varchar(100),
  "parceira" varchar(100)
);

CREATE TABLE "PARCEIRA" (
  "id" int PRIMARY KEY,
  "nome" varchar(100),
  "tecnologia" varchar(100),
  "area" varchar(100)
);

CREATE TABLE "TECNOLOGIA" (
  "id" int PRIMARY KEY,
  "nome" varchar(100),
  "area" varchar(100)
);

CREATE TABLE "AREA" (
  "id" int PRIMARY KEY,
  "nome" varchar(100),
  "tecnologia" varchar(100)
);

ALTER TABLE "AREA" ADD FOREIGN KEY ("id") REFERENCES "TECNOLOGIA" ("area");

ALTER TABLE "RESILIA" ADD FOREIGN KEY ("colaboradores") REFERENCES "COLABORADORES" ("cpf");

ALTER TABLE "PARCEIRA" ADD FOREIGN KEY ("id") REFERENCES "RESILIA" ("parceira");

ALTER TABLE "TECNOLOGIA" ADD FOREIGN KEY ("id") REFERENCES "RESILIA" ("tecnologia");

ALTER TABLE "AREA" ADD FOREIGN KEY ("id") REFERENCES "RESILIA" ("area");

ALTER TABLE "TECNOLOGIA" ADD FOREIGN KEY ("id") REFERENCES "COLABORADORES" ("tecnologia");
