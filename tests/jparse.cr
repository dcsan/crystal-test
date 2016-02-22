require "json"

raw = File.read("./data.json")
puts raw

data = JSON.parse(raw) # : JSON::Any
puts "data	", data

# data = JSON.parse("[1, 2, 3]") # : JSON::Any
puts "data[0]	", data[0]

d0 = data[0]
puts data[0]["name"]

count = 0
data.each do |item|
	count += 1
	puts count, item
end

# data[0]              # => 1
# typeof(data[0])      # => JSON::Any
# data[0].as_i         # => 1
# typeof(data[0].as_i) # => Int32
# #
# # data[0] + 1       # Error, because data[0] is JSON::Any
# data[0].as_i + 10 # => 11
