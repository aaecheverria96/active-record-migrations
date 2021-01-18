class Artist < ActiveRecord::Base 

ActiveRecord::Base.establish_connection( 
    :adapter => "sqlite3", 
    :database => "db/artists.sqlite"
)   

    def self.create_table
    sql = "CREATE TABLE artists( id INTEGER PRIMARY KEY, name TEXT, genre TEXT, age INTEGER, hometown TEXT)"

    ActiveRecord::Base.connection.execute(sql)
    end 

end 