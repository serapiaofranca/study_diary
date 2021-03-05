require "sqlite3"

class ControlDb

  def self.insert_tb_items(title, category, status)
    begin
      db = SQLite3::Database.open "./db/study_diary"
      db.execute "INSERT INTO study_items (title, category, status) VALUES ('#{title}', '#{category}', '#{status}')"

    rescue SQLite3::Exception => e     
      puts "Exception occurred"
      puts e        
    ensure
      db.close if db
    end
  end
  
  def self.each_all
    
    db = SQLite3::Database.open "./db/study_diary"
    db.results_as_hash = true

    arr = db.execute "SELECT * FROM study_items" 
    
    db.close if db
    arr
  end
end

#ControlDb.insert_tb_items('Methods', 'Ruby', false)
#p ControlDb.each_all
