require 'socket'

class Notelist
  attr_reader :server, :socket
  def initialize
    @server = TCPServer.new(2345)
    @socket = server.accept
    run
  end

  def run
    while true do
      input
      close_connection if @they_said == "quit" || @they_said == "exit"
    end
  end

  def input
    socket.puts "What do you say?"
    @they_said = socket.gets.chomp
    socket.puts "You said: #{@they_said}. Goodbye!"
  end

  def close_connection
    socket.close
  end

  server = Notelist.new

end
