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

```
As a user
So that the bookmarks I save are useful
I want to only save a valid URL
```

As a user
So that I can make interesting notes
I want to add a Comment to a Bookmark
```

```
As a user
So that I can find relevant bookmarks
I want to filter Bookmarks by a Tag
```
## Domain Model

![Bookmark Manager domain model]

https://miro.com/app/board/uXjVOWooC-c=/

a Controller
a Bookmark class
A bookmark view

## Entity Relationship Diagram

The below diagram indicates that:
- A Bookmark *has many* Comments
- A Comment *belongs to* a Bookmark

![Bookmark Manager entity relation diagram]
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
