# ./spec/setup_test_database.rb

require 'pg'

def setup_test_database
  # connect to the testing database, not dev database
  connection = PG.connect(dbname: 'chitter_test')
  # truncate the testing database - peeps
  connection.exec('TRUNCATE peeps;')
end
