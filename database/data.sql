-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO app_user (app_user_id, user_name, password, role, salt) VALUES (1, 'system_admin', 'Password', true, '1');
INSERT INTO app_user (app_user_id, user_name, password, role, salt) VALUES (2, 'user', 'Userpassword', false, '1');
INSERT INTO app_user (app_user_id, user_name, password, role, salt) VALUES (3, 'user2', 'Userpassword', false, '1');

SELECT setval(pg_get_serial_sequence('app_user', 'app_user_id'), 3);

INSERT INTO book (book_id, title, date_added) VALUES (1, 'harry potter and the sorcerer''s stone', '8/13/18 11:30 AM');
INSERT INTO book (book_id, title, date_added) VALUES (2, 'harry potter and the chamber of secrets', '8/13/18 11:31 AM');
INSERT INTO book (book_id, title, date_added) VALUES (3, 'harry potter and the prisoner of azkaban', '8/13/18 11:32 AM');
INSERT INTO book (book_id, title, date_added) VALUES (4, 'harry potter and the goblet of fire', '8/13/18 11:33 AM');
INSERT INTO book (book_id, title, date_added) VALUES (5, 'harry potter and the order of the phoenix', '8/13/18 11:34 AM');
INSERT INTO book (book_id, title, date_added) VALUES (6, 'harry potter and the half-blood prince', '8/13/18 11:35 AM');
INSERT INTO book (book_id, title, date_added) VALUES (7, 'harry potter and the deathly hallows', '8/13/18 11:36 AM');
INSERT INTO book (book_id, title, date_added) VALUES (8, 'the great gatsby', '8/13/18 11:37 AM');
INSERT INTO book (book_id, title, date_added) VALUES (9, 'it''s not about the bike: my journey back to life', '8/13/18 11:38 AM');
INSERT INTO book (book_id, title, date_added) VALUES (10, 'it''s all about the bike: the pursuit of happiness on two wheels', '8/13/18 11:39 AM');
INSERT INTO book (book_id, title, date_added) VALUES (11, 'ulysses', '8/19/18 3:32 PM');
INSERT INTO book (book_id, title, date_added) VALUES (12, 'a portrait of the artist as a young man', '8/19/18 3:39 PM');
INSERT INTO book (book_id, title, date_added) VALUES (13, 'lolita', '8/19/18 3:43 PM');
INSERT INTO book (book_id, title, date_added) VALUES (14, 'the grapes of wrath', '8/19/18 3:46 PM');
INSERT INTO book (book_id, title, date_added) VALUES (15, 'moby dick', '8/19/18 3:50 PM');
INSERT INTO book (book_id, title, date_added) VALUES (16, 'the adventures of huckleberry finn', '8/19/18 3:53 PM');
INSERT INTO book (book_id, title, date_added) VALUES (17, 'the catcher in the rye', '8/19/18 3:56 PM');
INSERT INTO book (book_id, title, date_added) VALUES (18, 'where the wild things are', '8/19/18 4:02 PM');
INSERT INTO book (book_id, title, date_added) VALUES (19, 'charlotte''s web', '8/19/18 4:06 PM');
INSERT INTO book (book_id, title, date_added) VALUES (20, 'green eggs and ham', '8/19/18 4:09 PM');
INSERT INTO book (book_id, title, date_added) VALUES (21, 'the cat in the hat', '8/19/18 4:12 PM');
INSERT INTO book (book_id, title, date_added) VALUES (22, 'the hobbit', '8/19/18 4:16 PM');
INSERT INTO book (book_id, title, date_added) VALUES (23, 'steve jobs', '8/19/18 4:20 PM');
INSERT INTO book (book_id, title, date_added) VALUES (24, 'ender''s game', '8/19/18 4:22 PM');
INSERT INTO book (book_id, title, date_added) VALUES (25, 'the war of the worlds', '8/19/18 4:26 PM');
INSERT INTO book (book_id, title, date_added) VALUES (26, 'starship troopers', '8/19/18 4:29 PM');
INSERT INTO book (book_id, title, date_added) VALUES (27, 'the girl with the dragon tattoo', '8/19/18 4:32 PM');
INSERT INTO book (book_id, title, date_added) VALUES (28, 'gone girl', '8/19/18 4:38 PM');
INSERT INTO book (book_id, title, date_added) VALUES (29, 'and then there were none', '8/19/18 4:41 PM');
INSERT INTO book (book_id, title, date_added) VALUES (30, 'the shining', '8/19/18 4:44 PM');
INSERT INTO book (book_id, title, date_added) VALUES (31, 'it', '8/19/18 4:47 PM');
INSERT INTO book (book_id, title, date_added) VALUES (32, 'hell house', '8/19/18 4:52 PM');
INSERT INTO book (book_id, title, date_added) VALUES (33, 'the amityville horror', '8/19/18 4:55 PM');
INSERT INTO book (book_id, title, date_added) VALUES (34, 'pride and prejudice', '8/19/18 5:00 PM');
INSERT INTO book (book_id, title, date_added) VALUES (35, 'the notebook', '8/19/18 5:02 PM');
INSERT INTO book (book_id, title, date_added) VALUES (36, 'the fault in our stars', '8/19/18 5:11 PM');
INSERT INTO book (book_id, title, date_added) VALUES (37, 'calvin and hobbes', '8/19/18 5:14 PM');
INSERT INTO book (book_id, title, date_added) VALUES (38, 'bone', '8/19/18 5:17 PM');
INSERT INTO book (book_id, title, date_added) VALUES (39, 'batman : the killing joke', '8/19/18 5:21 PM');
INSERT INTO book (book_id, title, date_added) VALUES (40, 'hamlet', '8/19/18 5:25 PM');

SELECT setval(pg_get_serial_sequence('book', 'book_id'), 40);

INSERT INTO character (character_id, f_name, l_name) VALUES (1, 'harry', 'potter');
INSERT INTO character (character_id, f_name, l_name) VALUES (2, 'hermione', 'granger');
INSERT INTO character (character_id, f_name) VALUES (3, 'voldemort');
INSERT INTO character (character_id, f_name, l_name) VALUES (4, 'jay', 'gatsby');
INSERT INTO character (character_id, f_name, l_name) VALUES (5, 'nick', 'carraway');
INSERT INTO character (character_id, f_name, l_name) VALUES (6, 'lance', 'armstrong');
INSERT INTO character (character_id, f_name, l_name) VALUES (7, 'robert', 'penn');
INSERT INTO character (character_id, f_name, l_name) VALUES (8, 'leopold', 'bloom');
INSERT INTO character (character_id, f_name, l_name) VALUES (9, 'stephen', 'dedalus');
INSERT INTO character (character_id, f_name, l_name) VALUES (10, 'humbert', 'humbert');
INSERT INTO character (character_id, f_name, l_name) VALUES (11, 'dolores', 'haze');
INSERT INTO character (character_id, f_name, l_name) VALUES (12, 'tom', 'joad');
INSERT INTO character (character_id, f_name) VALUES (13, 'casy');
INSERT INTO character (character_id, f_name, l_name) VALUES (14, 'captain', 'ahab');
INSERT INTO character (character_id, f_name, l_name) VALUES (15, 'huckleberry', 'finn');
INSERT INTO character (character_id, f_name, l_name) VALUES (16, 'holden', 'caulfield');
INSERT INTO character (character_id, f_name) VALUES (17, 'max');
INSERT INTO character (character_id, f_name) VALUES (18, 'wilbur');
INSERT INTO character (character_id, f_name) VALUES (19, 'charlotte');
INSERT INTO character (character_id, f_name) VALUES (20, 'sam-I-Am');
INSERT INTO character (character_id, f_name) VALUES (21, 'sally');
INSERT INTO character (character_id, f_name, l_name) VALUES (22, 'thing', 'one');
INSERT INTO character (character_id, f_name, l_name) VALUES (23, 'thing', 'two');
INSERT INTO character (character_id, f_name, l_name) VALUES (24, 'bilbo', 'baggins');
INSERT INTO character (character_id, f_name) VALUES (25, 'gandalf');
INSERT INTO character (character_id, f_name) VALUES (26, 'gollum');
INSERT INTO character (character_id, f_name, l_name) VALUES (27, 'steve', 'jobs');
INSERT INTO character (character_id, f_name, l_name) VALUES (28, 'ender', 'wiggin');
INSERT INTO character (character_id, f_name) VALUES (29, 'narrator');
INSERT INTO character (character_id, f_name, l_name) VALUES (30, 'juan', 'rico');
INSERT INTO character (character_id, f_name, l_name) VALUES (31, 'lisbeth', 'salander');
INSERT INTO character (character_id, f_name, l_name) VALUES (32, 'mikael', 'blomkvist');
INSERT INTO character (character_id, f_name, l_name) VALUES (33, 'nick', 'dunne');
INSERT INTO character (character_id, f_name, l_name) VALUES (34, 'amy', 'dunne');
INSERT INTO character (character_id, f_name, l_name) VALUES (35, 'anthony', 'marsten');
INSERT INTO character (character_id, f_name, l_name) VALUES (36, 'jack', 'torrance');
INSERT INTO character (character_id, f_name, l_name) VALUES (37, 'danny', 'torrance');
INSERT INTO character (character_id, f_name, l_name) VALUES (38, 'william', 'denbrough');
INSERT INTO character (character_id, f_name, l_name) VALUES (39, 'benjamin', 'hanscom');
INSERT INTO character (character_id, f_name, l_name) VALUES (40, 'beverly', 'marsh');
INSERT INTO character (character_id, f_name, l_name) VALUES (41, 'richard', 'tozier');
INSERT INTO character (character_id, f_name, l_name) VALUES (42, 'edward', 'kaspbrak');
INSERT INTO character (character_id, f_name, l_name) VALUES (43, 'michael', 'hanlon');
INSERT INTO character (character_id, f_name, l_name) VALUES (44, 'stanley', 'uris');
INSERT INTO character (character_id, f_name) VALUES (45, 'pennywise');
INSERT INTO character (character_id, f_name, l_name) VALUES (46, 'lionel', 'barrett');
INSERT INTO character (character_id, f_name, l_name) VALUES (47, 'edith', 'barrett');
INSERT INTO character (character_id, f_name, l_name) VALUES (48, 'george', 'lutz');
INSERT INTO character (character_id, f_name, l_name) VALUES (49, 'kathleen', 'lutz');
INSERT INTO character (character_id, f_name, l_name) VALUES (50, 'elizabeth', 'bennet');
INSERT INTO character (character_id, f_name) VALUES (51, 'noah');
INSERT INTO character (character_id, f_name) VALUES (52, 'allie');
INSERT INTO character (character_id, f_name, l_name) VALUES (53, 'hazel', 'lancaster');
INSERT INTO character (character_id, f_name, l_name) VALUES (54, 'augustus', 'waters');
INSERT INTO character (character_id, f_name) VALUES (55, 'calvin');
INSERT INTO character (character_id, f_name) VALUES (56, 'hobbes');
INSERT INTO character (character_id, f_name, l_name) VALUES (57, 'fone', 'bone');
INSERT INTO character (character_id, f_name, l_name) VALUES (58, 'smiley', 'bone');
INSERT INTO character (character_id, f_name) VALUES (59, 'batman');
INSERT INTO character (character_id, f_name) VALUES (60, 'joker');
INSERT INTO character (character_id, f_name) VALUES (61, 'hamlet');

SELECT setval(pg_get_serial_sequence('character', 'character_id'), 61);

INSERT INTO location (location_id, section) VALUES (1, 'A1');
INSERT INTO location (location_id, section) VALUES (2, 'A2');
INSERT INTO location (location_id, section) VALUES (3, 'A3');
INSERT INTO location (location_id, section) VALUES (4, 'A4');
INSERT INTO location (location_id, section) VALUES (5, 'A5');
INSERT INTO location (location_id, section) VALUES (6, 'A6');
INSERT INTO location (location_id, section) VALUES (7, 'A7');
INSERT INTO location (location_id, section) VALUES (8, 'A8');
INSERT INTO location (location_id, section) VALUES (9, 'A9');
INSERT INTO location (location_id, section) VALUES (10, 'A10');
INSERT INTO location (location_id, section) VALUES (11, 'A11');
INSERT INTO location (location_id, section) VALUES (12, 'A12');

SELECT setval(pg_get_serial_sequence('location', 'location_id'), 12);

INSERT INTO genre (genre_id, genre) VALUES (1, 'fantasy');
INSERT INTO genre (genre_id, genre) VALUES (2, 'fiction');
INSERT INTO genre (genre_id, genre) VALUES (3, 'autobiography');
INSERT INTO genre (genre_id, genre) VALUES (4, 'sci-fi');
INSERT INTO genre (genre_id, genre) VALUES (5, 'mystery');
INSERT INTO genre (genre_id, genre) VALUES (6, 'thriller');
INSERT INTO genre (genre_id, genre) VALUES (7, 'children');
INSERT INTO genre (genre_id, genre) VALUES (8, 'horror');
INSERT INTO genre (genre_id, genre) VALUES (9, 'romance');
INSERT INTO genre (genre_id, genre) VALUES (10, 'comic books');
INSERT INTO genre (genre_id, genre) VALUES (11, 'novel');
INSERT INTO genre (genre_id, genre) VALUES (12, 'drama');

SELECT setval(pg_get_serial_sequence('genre', 'genre_id'), 12);

INSERT INTO author (author_id, f_name, l_name) VALUES (1, 'j.k.', 'rowling');
INSERT INTO author (author_id, f_name, l_name) VALUES (2, 'f. scott', 'fitzgerald');
INSERT INTO author (author_id, f_name, l_name) VALUES (3, 'sally', 'jenkins');
INSERT INTO author (author_id, f_name, l_name) VALUES (4, 'lance', 'armstrong');
INSERT INTO author (author_id, f_name, l_name) VALUES (5, 'robert', 'penn');
INSERT INTO author (author_id, f_name, l_name) VALUES (6, 'james', 'joyce');
INSERT INTO author (author_id, f_name, l_name) VALUES (7, 'vladimir', 'nabokov');
INSERT INTO author (author_id, f_name, l_name) VALUES (8, 'john', 'steinbeck');
INSERT INTO author (author_id, f_name, l_name) VALUES (9, 'herman', 'melville');
INSERT INTO author (author_id, f_name, l_name) VALUES (10, 'mark', 'twain');
INSERT INTO author (author_id, f_name, l_name) VALUES (11, 'j.d.', 'salinger');
INSERT INTO author (author_id, f_name, l_name) VALUES (12, 'maurice', 'sendak');
INSERT INTO author (author_id, f_name, l_name) VALUES (13, 'e.b.', 'white');
INSERT INTO author (author_id, f_name, l_name) VALUES (14, 'dr.', 'seuss');
INSERT INTO author (author_id, f_name, l_name) VALUES (15, 'j.r.r.', 'tolkien');
INSERT INTO author (author_id, f_name, l_name) VALUES (16, 'walter', 'isaacson');
INSERT INTO author (author_id, f_name, l_name) VALUES (17, 'orson', 'card');
INSERT INTO author (author_id, f_name, l_name) VALUES (18, 'h.g.', 'wells');
INSERT INTO author (author_id, f_name, l_name) VALUES (19, 'robert', 'heinlein');
INSERT INTO author (author_id, f_name, l_name) VALUES (20, 'stieg', 'larsson');
INSERT INTO author (author_id, f_name, l_name) VALUES (21, 'gillian', 'flynn');
INSERT INTO author (author_id, f_name, l_name) VALUES (22, 'agatha', 'christie');
INSERT INTO author (author_id, f_name, l_name) VALUES (23, 'stephen', 'king');
INSERT INTO author (author_id, f_name, l_name) VALUES (24, 'richard', 'matheson');
INSERT INTO author (author_id, f_name, l_name) VALUES (25, 'jay', 'anson');
INSERT INTO author (author_id, f_name, l_name) VALUES (26, 'jane', 'austen');
INSERT INTO author (author_id, f_name, l_name) VALUES (27, 'nicholas', 'sparks');
INSERT INTO author (author_id, f_name, l_name) VALUES (28, 'john', 'green');
INSERT INTO author (author_id, f_name, l_name) VALUES (29, 'bill', 'watterson');
INSERT INTO author (author_id, f_name, l_name) VALUES (30, 'jeff', 'smith');
INSERT INTO author (author_id, f_name, l_name) VALUES (31, 'alan', 'moore');
INSERT INTO author (author_id, f_name, l_name) VALUES (32, 'brian', 'bolland');
INSERT INTO author (author_id, f_name, l_name) VALUES (33, 'john', 'higgins');
INSERT INTO author (author_id, f_name, l_name) VALUES (34, 'william', 'shakespeare');

SELECT setval(pg_get_serial_sequence('author', 'author_id'), 34);

INSERT INTO forum_post (forum_post_id, app_user_id, subject, message, post_date) VALUES (1, 2, 'Test Forum', 'Great book!', '8/20/18 2:27 PM');
INSERT INTO forum_post (forum_post_id, app_user_id, subject, message, post_date) VALUES (2, 1, 'I love books', 'This book changed my life!', '8/20/18 4:54 PM');
INSERT INTO forum_post (forum_post_id, app_user_id, subject, message, post_date) VALUES (3, 3, 'It Review', 'I was so scared reading this book! 10/10', '8/20/18 4:55 PM');

SELECT setval(pg_get_serial_sequence('forum_post', 'forum_post_id'), 3);

INSERT INTO book_character (book_id, character_id) VALUES (1, 1);
INSERT INTO book_character (book_id, character_id) VALUES (1, 2);
INSERT INTO book_character (book_id, character_id) VALUES (1, 3);
INSERT INTO book_character (book_id, character_id) VALUES (2, 1);
INSERT INTO book_character (book_id, character_id) VALUES (2, 2);
INSERT INTO book_character (book_id, character_id) VALUES (2, 3);
INSERT INTO book_character (book_id, character_id) VALUES (3, 1);
INSERT INTO book_character (book_id, character_id) VALUES (3, 2);
INSERT INTO book_character (book_id, character_id) VALUES (3, 3);
INSERT INTO book_character (book_id, character_id) VALUES (4, 1);
INSERT INTO book_character (book_id, character_id) VALUES (4, 2);
INSERT INTO book_character (book_id, character_id) VALUES (4, 3);
INSERT INTO book_character (book_id, character_id) VALUES (5, 1);
INSERT INTO book_character (book_id, character_id) VALUES (5, 2);
INSERT INTO book_character (book_id, character_id) VALUES (5, 3);
INSERT INTO book_character (book_id, character_id) VALUES (6, 1);
INSERT INTO book_character (book_id, character_id) VALUES (6, 2);
INSERT INTO book_character (book_id, character_id) VALUES (6, 3);
INSERT INTO book_character (book_id, character_id) VALUES (7, 1);
INSERT INTO book_character (book_id, character_id) VALUES (7, 2);
INSERT INTO book_character (book_id, character_id) VALUES (7, 3);
INSERT INTO book_character (book_id, character_id) VALUES (8, 4);
INSERT INTO book_character (book_id, character_id) VALUES (8, 5);
INSERT INTO book_character (book_id, character_id) VALUES (9, 6);
INSERT INTO book_character (book_id, character_id) VALUES (10, 7);
INSERT INTO book_character (book_id, character_id) VALUES (11, 8);
INSERT INTO book_character (book_id, character_id) VALUES (12, 9);
INSERT INTO book_character (book_id, character_id) VALUES (13, 10);
INSERT INTO book_character (book_id, character_id) VALUES (13, 11);
INSERT INTO book_character (book_id, character_id) VALUES (14, 12);
INSERT INTO book_character (book_id, character_id) VALUES (14, 13);
INSERT INTO book_character (book_id, character_id) VALUES (15, 14);
INSERT INTO book_character (book_id, character_id) VALUES (16, 15);
INSERT INTO book_character (book_id, character_id) VALUES (17, 16);
INSERT INTO book_character (book_id, character_id) VALUES (18, 17);
INSERT INTO book_character (book_id, character_id) VALUES (19, 18);
INSERT INTO book_character (book_id, character_id) VALUES (19, 19);
INSERT INTO book_character (book_id, character_id) VALUES (20, 20);
INSERT INTO book_character (book_id, character_id) VALUES (21, 21);
INSERT INTO book_character (book_id, character_id) VALUES (21, 22);
INSERT INTO book_character (book_id, character_id) VALUES (21, 23);
INSERT INTO book_character (book_id, character_id) VALUES (22, 24);
INSERT INTO book_character (book_id, character_id) VALUES (22, 25);
INSERT INTO book_character (book_id, character_id) VALUES (22, 26);
INSERT INTO book_character (book_id, character_id) VALUES (23, 27);
INSERT INTO book_character (book_id, character_id) VALUES (24, 28);
INSERT INTO book_character (book_id, character_id) VALUES (25, 29);
INSERT INTO book_character (book_id, character_id) VALUES (26, 30);
INSERT INTO book_character (book_id, character_id) VALUES (27, 31);
INSERT INTO book_character (book_id, character_id) VALUES (27, 32);
INSERT INTO book_character (book_id, character_id) VALUES (28, 33);
INSERT INTO book_character (book_id, character_id) VALUES (28, 34);
INSERT INTO book_character (book_id, character_id) VALUES (29, 35);
INSERT INTO book_character (book_id, character_id) VALUES (30, 36);
INSERT INTO book_character (book_id, character_id) VALUES (30, 37);
INSERT INTO book_character (book_id, character_id) VALUES (31, 38);
INSERT INTO book_character (book_id, character_id) VALUES (31, 39);
INSERT INTO book_character (book_id, character_id) VALUES (31, 40);
INSERT INTO book_character (book_id, character_id) VALUES (31, 41);
INSERT INTO book_character (book_id, character_id) VALUES (31, 42);
INSERT INTO book_character (book_id, character_id) VALUES (31, 43);
INSERT INTO book_character (book_id, character_id) VALUES (31, 44);
INSERT INTO book_character (book_id, character_id) VALUES (31, 45);
INSERT INTO book_character (book_id, character_id) VALUES (32, 46);
INSERT INTO book_character (book_id, character_id) VALUES (32, 47);
INSERT INTO book_character (book_id, character_id) VALUES (33, 48);
INSERT INTO book_character (book_id, character_id) VALUES (33, 49);
INSERT INTO book_character (book_id, character_id) VALUES (34, 50);
INSERT INTO book_character (book_id, character_id) VALUES (35, 51);
INSERT INTO book_character (book_id, character_id) VALUES (35, 52);
INSERT INTO book_character (book_id, character_id) VALUES (36, 53);
INSERT INTO book_character (book_id, character_id) VALUES (36, 54);
INSERT INTO book_character (book_id, character_id) VALUES (37, 55);
INSERT INTO book_character (book_id, character_id) VALUES (37, 56);
INSERT INTO book_character (book_id, character_id) VALUES (38, 57);
INSERT INTO book_character (book_id, character_id) VALUES (38, 58);
INSERT INTO book_character (book_id, character_id) VALUES (39, 59);
INSERT INTO book_character (book_id, character_id) VALUES (39, 60);
INSERT INTO book_character (book_id, character_id) VALUES (40, 61);

INSERT INTO book_location (book_id, location_id) VALUES (1, 1);
INSERT INTO book_location (book_id, location_id) VALUES (2, 1);
INSERT INTO book_location (book_id, location_id) VALUES (3, 1);
INSERT INTO book_location (book_id, location_id) VALUES (4, 1);
INSERT INTO book_location (book_id, location_id) VALUES (5, 1);
INSERT INTO book_location (book_id, location_id) VALUES (6, 1);
INSERT INTO book_location (book_id, location_id) VALUES (7, 1);
INSERT INTO book_location (book_id, location_id) VALUES (8, 2);
INSERT INTO book_location (book_id, location_id) VALUES (9, 3);
INSERT INTO book_location (book_id, location_id) VALUES (10, 3);
INSERT INTO book_location (book_id, location_id) VALUES (11, 12);
INSERT INTO book_location (book_id, location_id) VALUES (12, 11);
INSERT INTO book_location (book_id, location_id) VALUES (13, 11);
INSERT INTO book_location (book_id, location_id) VALUES (14, 11);
INSERT INTO book_location (book_id, location_id) VALUES (15, 2);
INSERT INTO book_location (book_id, location_id) VALUES (16, 2);
INSERT INTO book_location (book_id, location_id) VALUES (17, 2);
INSERT INTO book_location (book_id, location_id) VALUES (18, 7);
INSERT INTO book_location (book_id, location_id) VALUES (19, 7);
INSERT INTO book_location (book_id, location_id) VALUES (20, 7);
INSERT INTO book_location (book_id, location_id) VALUES (21, 7);
INSERT INTO book_location (book_id, location_id) VALUES (22, 1);
INSERT INTO book_location (book_id, location_id) VALUES (23, 3);
INSERT INTO book_location (book_id, location_id) VALUES (24, 4);
INSERT INTO book_location (book_id, location_id) VALUES (25, 4);
INSERT INTO book_location (book_id, location_id) VALUES (26, 4);
INSERT INTO book_location (book_id, location_id) VALUES (27, 5);
INSERT INTO book_location (book_id, location_id) VALUES (28, 5);
INSERT INTO book_location (book_id, location_id) VALUES (29, 5);
INSERT INTO book_location (book_id, location_id) VALUES (30, 8);
INSERT INTO book_location (book_id, location_id) VALUES (31, 8);
INSERT INTO book_location (book_id, location_id) VALUES (32, 8);
INSERT INTO book_location (book_id, location_id) VALUES (33, 8);
INSERT INTO book_location (book_id, location_id) VALUES (34, 9);
INSERT INTO book_location (book_id, location_id) VALUES (35, 9);
INSERT INTO book_location (book_id, location_id) VALUES (36, 9);
INSERT INTO book_location (book_id, location_id) VALUES (37, 10);
INSERT INTO book_location (book_id, location_id) VALUES (38, 10);
INSERT INTO book_location (book_id, location_id) VALUES (39, 10);
INSERT INTO book_location (book_id, location_id) VALUES (40, 12);

INSERT INTO book_genre (book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (2, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (3, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (4, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (5, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (6, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (7, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (8, 2);
INSERT INTO book_genre (book_id, genre_id) VALUES (9, 3);
INSERT INTO book_genre (book_id, genre_id) VALUES (10, 3);
INSERT INTO book_genre (book_id, genre_id) VALUES (11, 11);
INSERT INTO book_genre (book_id, genre_id) VALUES (11, 12);
INSERT INTO book_genre (book_id, genre_id) VALUES (12, 11);
INSERT INTO book_genre (book_id, genre_id) VALUES (13, 11);
INSERT INTO book_genre (book_id, genre_id) VALUES (14, 11);
INSERT INTO book_genre (book_id, genre_id) VALUES (15, 2);
INSERT INTO book_genre (book_id, genre_id) VALUES (16, 2);
INSERT INTO book_genre (book_id, genre_id) VALUES (17, 2);
INSERT INTO book_genre (book_id, genre_id) VALUES (18, 7);
INSERT INTO book_genre (book_id, genre_id) VALUES (19, 7);
INSERT INTO book_genre (book_id, genre_id) VALUES (20, 7);
INSERT INTO book_genre (book_id, genre_id) VALUES (21, 7);
INSERT INTO book_genre (book_id, genre_id) VALUES (22, 1);
INSERT INTO book_genre (book_id, genre_id) VALUES (23, 3);
INSERT INTO book_genre (book_id, genre_id) VALUES (24, 4);
INSERT INTO book_genre (book_id, genre_id) VALUES (25, 4);
INSERT INTO book_genre (book_id, genre_id) VALUES (26, 4);
INSERT INTO book_genre (book_id, genre_id) VALUES (27, 5);
INSERT INTO book_genre (book_id, genre_id) VALUES (27, 6);
INSERT INTO book_genre (book_id, genre_id) VALUES (28, 5);
INSERT INTO book_genre (book_id, genre_id) VALUES (29, 5);
INSERT INTO book_genre (book_id, genre_id) VALUES (30, 8);
INSERT INTO book_genre (book_id, genre_id) VALUES (31, 8);
INSERT INTO book_genre (book_id, genre_id) VALUES (32, 8);
INSERT INTO book_genre (book_id, genre_id) VALUES (33, 8);
INSERT INTO book_genre (book_id, genre_id) VALUES (34, 9);
INSERT INTO book_genre (book_id, genre_id) VALUES (35, 9);
INSERT INTO book_genre (book_id, genre_id) VALUES (36, 9);
INSERT INTO book_genre (book_id, genre_id) VALUES (37, 10);
INSERT INTO book_genre (book_id, genre_id) VALUES (38, 10);
INSERT INTO book_genre (book_id, genre_id) VALUES (39, 10);
INSERT INTO book_genre (book_id, genre_id) VALUES (40, 12);

INSERT INTO book_author (book_id, author_id) VALUES (1, 1);
INSERT INTO book_author (book_id, author_id) VALUES (2, 1);
INSERT INTO book_author (book_id, author_id) VALUES (3, 1);
INSERT INTO book_author (book_id, author_id) VALUES (4, 1);
INSERT INTO book_author (book_id, author_id) VALUES (5, 1);
INSERT INTO book_author (book_id, author_id) VALUES (6, 1);
INSERT INTO book_author (book_id, author_id) VALUES (7, 1);
INSERT INTO book_author (book_id, author_id) VALUES (8, 2);
INSERT INTO book_author (book_id, author_id) VALUES (9, 3);
INSERT INTO book_author (book_id, author_id) VALUES (9, 4);
INSERT INTO book_author (book_id, author_id) VALUES (10, 5);
INSERT INTO book_author (book_id, author_id) VALUES (11, 6);
INSERT INTO book_author (book_id, author_id) VALUES (12, 6);
INSERT INTO book_author (book_id, author_id) VALUES (13, 7);
INSERT INTO book_author (book_id, author_id) VALUES (14, 8);
INSERT INTO book_author (book_id, author_id) VALUES (15, 9);
INSERT INTO book_author (book_id, author_id) VALUES (16, 10);
INSERT INTO book_author (book_id, author_id) VALUES (17, 11);
INSERT INTO book_author (book_id, author_id) VALUES (18, 12);
INSERT INTO book_author (book_id, author_id) VALUES (19, 13);
INSERT INTO book_author (book_id, author_id) VALUES (20, 14);
INSERT INTO book_author (book_id, author_id) VALUES (21, 14);
INSERT INTO book_author (book_id, author_id) VALUES (22, 15);
INSERT INTO book_author (book_id, author_id) VALUES (23, 16);
INSERT INTO book_author (book_id, author_id) VALUES (24, 17);
INSERT INTO book_author (book_id, author_id) VALUES (25, 18);
INSERT INTO book_author (book_id, author_id) VALUES (26, 19);
INSERT INTO book_author (book_id, author_id) VALUES (27, 20);
INSERT INTO book_author (book_id, author_id) VALUES (28, 21);
INSERT INTO book_author (book_id, author_id) VALUES (29, 22);
INSERT INTO book_author (book_id, author_id) VALUES (30, 23);
INSERT INTO book_author (book_id, author_id) VALUES (31, 23);
INSERT INTO book_author (book_id, author_id) VALUES (32, 24);
INSERT INTO book_author (book_id, author_id) VALUES (33, 25);
INSERT INTO book_author (book_id, author_id) VALUES (34, 26);
INSERT INTO book_author (book_id, author_id) VALUES (35, 27);
INSERT INTO book_author (book_id, author_id) VALUES (36, 28);
INSERT INTO book_author (book_id, author_id) VALUES (37, 29);
INSERT INTO book_author (book_id, author_id) VALUES (38, 30);
INSERT INTO book_author (book_id, author_id) VALUES (39, 31);
INSERT INTO book_author (book_id, author_id) VALUES (39, 32);
INSERT INTO book_author (book_id, author_id) VALUES (39, 33);
INSERT INTO book_author (book_id, author_id) VALUES (40, 34);

INSERT INTO book_app_user_will_read (app_user_id, book_id) VALUES (1, 1);
INSERT INTO book_app_user_will_read (app_user_id, book_id) VALUES (1, 2);
INSERT INTO book_app_user_will_read (app_user_id, book_id) VALUES (1, 3);

INSERT INTO book_app_user_have_read (app_user_id, book_id) VALUES (1, 5);
INSERT INTO book_app_user_have_read (app_user_id, book_id) VALUES (1, 6);
INSERT INTO book_app_user_have_read (app_user_id, book_id) VALUES (1, 7);



COMMIT;