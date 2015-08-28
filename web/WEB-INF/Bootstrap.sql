DROP TABLE Posts;
DROP TABLE Users;

CREATE TABLE Users (
    username VARCHAR(12) NOT NULL UNIQUE,
    password VARCHAR(15) NOT NULL,
    joindate DATE DEFAULT CURRENT_DATE,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE Posts (
    content VARCHAR(140) NOT NULL,
    authorid INT NOT NULL,
    postdate DATE DEFAULT CURRENT_DATE,
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

INSERT INTO Users (username, password, joindate, firstname, lastname, email, zip) VALUES
    ('johndoe', 'password', '2013-05-09', 'John', 'Doe', 'jd@example.com', '98008'),
    ('jilljack', 'password', '2013-10-31', 'Jill', 'Jack', 'jj@nowhere.com', '24201');

INSERT INTO Posts (content, authorid, postdate) VALUES
    ('I''m a white-hat hacking my wonky Twonky server.', 1, '2013-05-09'),
    ('My wonky Twonky server conked out.', 1, '2014-06-23'),
    ('I see good reason not to configure Twonky.', 2, '2013-11-01');
