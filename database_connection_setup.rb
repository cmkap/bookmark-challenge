require './lib/database_connection'

if ENV['ENVIORNMENT'] == 'test'
    DatabaseConnection.setup('bookmark_manager_test')
else
    DatabaseConnection.setup('bookmark_manager')
end