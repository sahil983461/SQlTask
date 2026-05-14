-- create table customer (customer_id serial primary key,	first_name varchar,	last_name varchar,	date_of_birth date,	gender varchar,	contact_number varchar,	email varchar,	address varchar,	aadhaar_number bigint,	pan_number varchar);	

-- create table Agents(agent_id serial primary key,	first_name varchar,	last_name varchar,	contact_number varchar,	email varchar,	commission_rate real);

-- create table Policies(policy_id serial primary key,	policy_type varchar,	coverage_amount int,	premium_amount int,	start_date date,	end_date date,	customer_id int references customer(Customer_id) ,agent_id int,foreign key(agent_id) references Agents(agent_id) ,approved_by varchar);

-- create table claims(Claim_id serial primary key,	claim_date date,	amount_claimed int ,status varchar,	policy_id int references policies(policy_id),	approved_by varchar);

-- create table Payment(payment_date date,	amount int,	payment_method varchar,	payment_uuid varchar,	policy_id int references policies(policy_id) );


-- copy customer from 'E:\ARC Classes\Book2.csv' delimiter ',' csv header;
-- copy agents from 'E:\ARC Classes\Book2.csv' delimiter ',' csv header;
-- copy policies from 'E:\ARC Classes\Book2.csv' delimiter ',' csv header;
-- copy claims from 'E:\ARC Classes\Book2.csv' delimiter ',' csv header;
-- copy payment from 'E:\ARC Classes\Book2.csv' delimiter ',' csv header;

-- select * from customer;
-- select * from agents ;
-- select * from policies;
-- select * from claims;
-- select * from payment;

