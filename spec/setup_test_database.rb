require 'pg'

def setup_test_database
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Clean the bookmarks and comments table
    connection.exec("TRUNCATE bookmarks, comments, tags, bookmarks_tags;")
end
