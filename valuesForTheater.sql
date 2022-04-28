
-- Add data
insert into public."public.customers"  (first_name, last_name)
values
('Liam', 'Scharovsky')
('Lucy', 'Scharovsky')


insert into public."public.rooms"  (size)
values
(100),
(75),
(150),
(100)


insert into public."public.movies"  (name, room_id, length, times)
values
('Coding Temple 3: More Temple Than Ever', 1, 145, '2022-04-26 17:30:00'),
('Coding Temple 4: Now Its Personal', 2, 122, '2022-04-26 19:30:00'),
('Coding Temple 3: Electric Bogaloo', 3	, 100, '2022-04-26 20:30:00'),
('Coding Temple Origins: Enter the Temple', 4, 90, '2022-04-26 17:00:00')

insert into public."public.concession"  (food, total_cost, customer_id)
values
('Pop Corn & Large Coke', 14.50, 1),
('Dog Food', 7.99, 2)

insert into public."public.seat_numbers"(seat_numbers)
values
(1), 
(2), 
(3),
(4), 
(5), 
(6)


insert into public."public.tickets"  (movie_id, room_id, number_of_tickets, seat_id, customer_id)
values
(2, 3, 1, 6, 1),
(2, 3, 1, 5, 2)
