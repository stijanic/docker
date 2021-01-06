require 'mysql2'


begin
    connection = Mysql2::Client.new(:host => "localhost", :username => "test", :password => "test", :database => 'test')
    puts connection.server_info
    resultSet = connection.query 'SELECT * from t'
    resultSet.each do |row|
      puts 'Data row = (%s, %s, %s)' % [row['id'], row['name'], row['quantity']]
    end
    puts 'Read ' + resultSet.count.to_s + ' row(s).'
    
rescue Mysql2::Error => e
    puts e.errno
    puts e.error
    
ensure
    connection.close if connection
end
