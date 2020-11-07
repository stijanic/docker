require 'pg'
  
# Output a table of current connections to the DB
conn = PG.connect( dbname: 'test', user: 'test', password: 'test', host: 'localhost')
conn.exec( "SELECT * FROM yo" ) do |result|
  puts " ID | Num | Data "
  result.each do |row|
    puts " %2d | %3s | %s " %
      row.values_at('id', 'num', 'data')
  end
end