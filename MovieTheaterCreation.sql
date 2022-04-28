CREATE TABLE "public.movies" (
	"movie_id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"room_id" int NOT NULL,
	"length" int NOT NULL,
	"times" TIMESTAMP NOT NULL,
	CONSTRAINT "movies_pk" PRIMARY KEY ("movie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.rooms" (
	"room_id" serial NOT NULL,
	"size" serial NOT NULL,
	CONSTRAINT "rooms_pk" PRIMARY KEY ("room_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.tickets" (
	"ticket_id" serial NOT NULL,
	"movie_id" int NOT NULL,
	"room_id" int NOT NULL,
	"number_of_tickets" int NOT NULL,
	"seat_id" int NOT NULL,
	"customer_id" int NOT NULL,
	CONSTRAINT "tickets_pk" PRIMARY KEY ("ticket_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.concession" (
	"order_id" serial NOT NULL,
	"food" varchar NOT NULL,
	"total_cost" float8 NOT NULL,
	"customer_id" int NOT NULL,
	CONSTRAINT "concession_pk" PRIMARY KEY ("order_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.customers" (
	"customer_id" serial NOT NULL,
	"first_name" varchar(255) NOT NULL,
	"last_name" varchar(255) NOT NULL,
	CONSTRAINT "customers_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.seat_numbers" (
	"seat_id" serial NOT NULL,
	"seat_numbers" int NOT NULL,
	CONSTRAINT "seat_numbers_pk" PRIMARY KEY ("seat_id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "public.movies" ADD CONSTRAINT "movies_fk0" FOREIGN KEY ("room_id") REFERENCES "public.rooms"("room_id");


ALTER TABLE "public.tickets" ADD CONSTRAINT "tickets_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.movies"("movie_id");
ALTER TABLE "public.tickets" ADD CONSTRAINT "tickets_fk1" FOREIGN KEY ("room_id") REFERENCES "public.rooms"("room_id");
ALTER TABLE "public.tickets" ADD CONSTRAINT "tickets_fk2" FOREIGN KEY ("seat_id") REFERENCES "public.seat_numbers"("seat_id");
ALTER TABLE "public.tickets" ADD CONSTRAINT "tickets_fk3" FOREIGN KEY ("customer_id") REFERENCES "public.customers"("customer_id");
ALTER TABLE "public.concession" ADD CONSTRAINT "concession_fk0" FOREIGN KEY ("customer_id") REFERENCES "public.customers"("customer_id");









