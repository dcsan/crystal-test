# A very basic HTTP server
require "http/server"

count = 0

def myfun( p1 ): String
  p1 = p1.to_s
  res = "stringy thing " + p1
  puts res
  return res
end

myfun("calling you")
myfun(123)

server = HTTP::Server.new(8080) do |context|
  puts "request", context.request.inspect
  puts "count:" + count.to_s
  puts "path:", context.request.path
  count += 1

  context.response.content_type = "text/plain"
  context.response.print "Hello world #{count}, got #{context.request.path}!"
end

puts "Listening on http://0.0.0.0:8080"
server.listen
