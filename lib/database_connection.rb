# ./lib/database_connection.rb

require 'pg'

class DatabaseConnection
  def self.setup(dbname)
    @connection = PG.connect(dbname: dbname)
  end

  def self.query(sql, params = [])
    puts "sending query"
    @connection.exec_params(sql, params)
  end
end
