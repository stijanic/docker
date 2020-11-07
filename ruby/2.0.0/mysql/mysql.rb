require 'mysql'


begin
    con = Mysql.new 'localhost', 'test', 'test', 'test'
    puts con.get_server_info
    rs = con.query 'SELECT * from t'
    puts rs.fetch_row    
    
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end