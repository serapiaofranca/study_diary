#!/usr/bin/ruby

require 'sqlite3'

begin
    
    db = SQLite3::Database.open "./db/study_diary"
    db.execute "CREATE TABLE IF NOT EXISTS study_items(id INTEGER PRIMARY KEY, 
        title TEXT, category TEXT, status BOOLEAN)"
   
rescue SQLite3::Exception => e 
    
    puts "Exception occurred"
    puts e
    
ensure
    puts "tables created success"
    db.close if db
end