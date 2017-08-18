#!/bin/sh

mysql -u root < ./database/create_database.sql
mysql -u root 0ch < ./database/create_topics.sql
mysql -u root 0ch < ./database/seeds.sql
