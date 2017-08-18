INSERT INTO topics (title, created_at, updated_at) VALUES ('スレタイ1', NOW(), NOW());
INSERT INTO topics (title, created_at, updated_at) VALUES ('スレタイ2', NOW(), NOW());

INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス1', 1, NOW());
INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス2', 1, NOW());
INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス3', 1, NOW());

INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス4', 2, NOW());
INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス5', 2, NOW());
INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('名無し', '', 'レス6', 2, NOW());
