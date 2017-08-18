CREATE TABLE IF NOT EXISTS topics (
  id INTEGER UNSIGNED AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (id)
);