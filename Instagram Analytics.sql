CREATE TABLE IF NOT EXISTS public.customer
(
    id integer NOT NULL,
    first_name text COLLATE pg_catalog."default" NOT NULL,
    last_name text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    age integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Customer_pkey" PRIMARY KEY ("id"),
    CONSTRAINT email UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer
    OWNER to postgres;

INSERT INTO customer (id, first_name, last_name, email, age)
VALUES
	(1, 'Bob', 'Smith', 'bob@gmail.com', 35);

SELECT *
FROM customer;