require "socket"

server = "chat.freenode.net"
port = "6667"
nick = "meBot"
channel = "#bitmaker"

#opens the socket with the correct port and server
s = TCPSocket.open(server, port)

# print("addr: ", s.addr.join(":"), "\n")
# print("peer: ", s.peeraddr.join(":"), "\n")

s.puts "USER meBot 0 * meBot"
s.puts "NICK #{nick}"
s.puts "JOIN #{channel}"
s.puts "PRIVMSG #{channel} :testing 123"

until s.eof? do
  msg = s.gets
  puts msg
end