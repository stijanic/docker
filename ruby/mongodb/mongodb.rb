require 'mongo'

include Mongo

host = ENV['MONGO_RUBY_DRIVER_HOST'] || 'localhost'
port = ENV['MONGO_RUBY_DRIVER_PORT'] || '27017'

puts "Connecting to #{host}:#{port}"
client = Mongo::Client.new([ host+':'+port ], :database => 'test')
db = client.database

coll = db.collection('test')

# Insert 3 records
3.times { |i| coll.insert_one({'a' => i+1}) }

# Collection names in database
p db.collection_names

# More information about collections
p db.collections

# Print documents from collection
coll.find.each do |document|
  p document
end

# Index information
p client[:bands].indexes

# Destroy the collection
coll.drop
