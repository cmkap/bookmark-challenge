# bookmark-challenge

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```

```
As a user
So that I can keep my bookmarks up to date
I want to edit a bookmark
```

## Domain Model

![Bookmark Manager domain model]

https://miro.com/app/board/uXjVOWooC-c=/

a Controller
a Bookmark class
A bookmark view

## How to use

### To set up the database

1) Connect to psql
2) Create the database using the psql command CREATE DATABASE bookmark_manager;
3) Connect to the database using the pqsl command \c bookmark_manager;
4) Run the query we have saved in the file 01_create_bookmarks_table.sql

### To set up the test database

1) Connect to psql
2) Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3) Connect to the database using the pqsl command \c bookmark_manager_test;
4) Run the query we have saved in the file 01_create_bookmarks_table.sql
