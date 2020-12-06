----------------------------------------------------------------------
-- DESCRIPTION: Copy raw articles.csv table into database
-- AUTHOR: Tyler Wayne
-- LAST MODIFIED: 2020-12-05
----------------------------------------------------------------------

DROP TABLE IF EXISTS articles;

CREATE TABLE articles (
    id SERIAL,
    topic CHAR(64),
    title VARCHAR,
    author VARCHAR,
    source VARCHAR
    -- is_read BOOLEAN,
    -- rating INT
);

-- COPY articles
-- FROM 'articles.txt'
-- WITH (FORMAT csv, DELIMITER '|', HEADER True, NULL '');

-- Copy table from client instead of server
\copy articles (topic, title, author, source) FROM 'articles.txt' DELIMITER '|' CSV HEADER NULL ''
