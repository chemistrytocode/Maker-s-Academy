require 'socket'

class Server

  attr_reader :server, :socket

  def initialize
    @server = TCPServer.new(2345)
    @socket = server.accept
    loop
  end

  def get_name
    @socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
    @name = socket.gets.chomp
  end

  def put_name
    socket.puts "THAT'S A LOVELY NAME #{@name}"
  end

  def program
    get_name
    put_name
  end

  def loop
    while true do
      program
    end
  end

end
