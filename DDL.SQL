CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    author_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    word_count INT NOT NULL,
    views INT NOT NULL,
    CONSTRAINT fk_posts_author
        FOREIGN KEY (author_id)
        REFERENCES authors(author_id)
);
