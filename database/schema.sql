-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS book_genre;
DROP TABLE IF EXISTS book_location;
DROP TABLE IF EXISTS book_character;
DROP TABLE IF EXISTS book_app_user_will_read;
DROP TABLE IF EXISTS book_app_user_have_read;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS character;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS forum_post;

CREATE TABLE app_user (
  app_user_id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role boolean DEFAULT false NOT NULL,
  salt varchar(255) NOT NULL
);

CREATE TABLE forum_post (
  forum_post_id SERIAL PRIMARY KEY,
  app_user_id integer NOT NULL,
  subject varchar(200) NOT NULL,
  message TEXT NOT NULL,
  post_date varchar(50) NOT NULL,

  CONSTRAINT fk_forum_postApp_user_id foreign key (app_user_id) references app_user(app_user_id)
);

CREATE TABLE book (
  book_id SERIAL PRIMARY KEY,
  title varchar(150) NOT NULL,
  date_added varchar(50) NOT NULL 
);

CREATE TABLE author (
  author_id SERIAL PRIMARY KEY,
  f_name varchar(50) NOT NULL,
  l_name varchar(50) NOT NULL
);

CREATE TABLE character (
  character_id SERIAL PRIMARY KEY,
  f_name varchar(50) NOT NULL,
  l_name varchar(50) 
);

CREATE TABLE location (
  location_id SERIAL PRIMARY KEY,
  section varchar(50)
);

CREATE TABLE genre (
  genre_id SERIAL PRIMARY KEY,
  genre varchar(50) NOT NULL
);

CREATE TABLE book_character (
    book_id integer NOT NULL,
    character_id integer NOT NULL,
    CONSTRAINT pk_book_character_book_id_character_id PRIMARY KEY (book_id, character_id),
    CONSTRAINT fk_book_characterBook_id foreign key (book_id) references book(book_id),
    CONSTRAINT fk_book_characterCharacter_id foreign key (character_id) references character(character_id)
);

CREATE TABLE book_location (
    book_id integer NOT NULL,
    location_id integer NOT NULL,
    CONSTRAINT pk_book_location_book_id_location_id PRIMARY KEY (book_id, location_id),
    CONSTRAINT fk_book_locationBook_id foreign key (book_id) references book(book_id),
    CONSTRAINT fk_book_locationLocation_id foreign key (location_id) references location(location_id)

);

CREATE TABLE book_genre (
    book_id integer NOT NULL,
    genre_id integer NOT NULL,
    CONSTRAINT pk_book_genre_book_id_genre_id PRIMARY KEY (book_id, genre_id),
    CONSTRAINT fk_book_genreBook_id foreign key (book_id) references book(book_id),
    CONSTRAINT fk_book_genreGenre_id foreign key (genre_id) references genre(genre_id)
);

CREATE TABLE book_author (
    book_id integer NOT NULL,
    author_id integer NOT NULL,
    CONSTRAINT pk_book_author_book_id_author_id PRIMARY KEY (book_id, author_id),
    CONSTRAINT fk_book_authorBook_id foreign key (book_id) references book(book_id),
    CONSTRAINT fk_book_authorAuthor_id foreign key (author_id) references author(author_id)
);

CREATE TABLE book_app_user_will_read (
    app_user_id integer NOT NULL,
    book_id integer NOT NULL,
    CONSTRAINT pk_book_app_user_book_id_app_user_id_for_will_read PRIMARY KEY (book_id, app_user_id),
    CONSTRAINT fk_book_app_user_app_user_id_for_will_read foreign key (app_user_id) references app_user(app_user_id),
    CONSTRAINT fk_book_app_user_Book_id_for_will_read foreign key (book_id) references book(book_id)
);

CREATE TABLE book_app_user_have_read (
    app_user_id integer NOT NULL,
    book_id integer NOT NULL,
    CONSTRAINT pk_book_app_user_book_id_app_user_id_for_have_read PRIMARY KEY (book_id, app_user_id),
    CONSTRAINT fk_book_app_user_app_user_id_for_have_read foreign key (app_user_id) references app_user(app_user_id),
    CONSTRAINT fk_book_app_user_Book_id_for_have_read foreign key (book_id) references book(book_id)
  
);

COMMIT;