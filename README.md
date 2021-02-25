User story 1:

```
As a user,
So that I can access my saved URL's,
I'd like to be able to see my list of my bookmarks.
```
User story 2
```
As a user,
So I can update my bookmarks,
I'd like to save a new bookmark to my bookmarks.
```
User story  3 
```
As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
```
User story 4
```
As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark
```
![picture](https://raw.githubusercontent.com/rhc07/bookmark_manager/master/images/Screenshot%202021-02-22%20at%2015.10.18.png)

### To set up a database, please do the following:

```
- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query we have saved in the file 01_create_bookmarks_table.sql
```

### Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

### CREATE DATABASE bookmark_manager_test;

## To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To view bookmarks, navigate to 'localhost:3000/bookmarks'
