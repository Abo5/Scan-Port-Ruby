puts "\e[31m" # set color to red
puts "
  ____              _     _       
 |  _ \\           (_)   | |      
 | |_) | __ _  _ __ _  __| | __ _ 
 |  _ < / _`  | '__| |/ _` |/ _` |
 | |_) | (_|  | |  | | (_| | (_| |
 |____/ \\__,_|_|  |_|\__,_|\__,_|
"
puts "\e[0m" # reset color

print "\e[33mAuthor: Nazi\e[0m" # set color to yellow
print "         \e[31mv 2.0\e[0m" # set color to red
print "          \e[32mReach me out: \e[0minstaGram/@8v_3\n\n"

require 'socket'
require 'timeout'
require 'thread'

def is_port_open?(ip, port)
  begin
    Timeout::timeout(1) do
      begin
        sock = TCPSocket.new(ip, port)
        sock.close
        return true
      rescue
        return false
      end
    end
  rescue Timeout::Error
    return false
  end
end

port_names = {21 => 'FTP', 22 => 'SSH', 23 => 'Telnet', 25 => 'SMTP', 53 => 'DNS', 80 => 'HTTP', 110 => 'POP3', 111 => 'rpcbind', 135 => 'msrpc', 139 => 'netbios-ssn', 143 => 'IMAP', 443 => 'HTTPS', 445 => 'Microsoft-DS', 993 => 'imaps', 995 => 'pop3s', 1723 => 'PPTP', 3306 => 'MySQL', 3389 => 'MSWBT-Server', 5900 => 'VNC', 8080 => 'HTTP-Proxy'}

if ARGV.length != 1
  puts 'Usage: ruby scan.rb <ip or domain>'
  exit
end

ip_or_domain = ARGV[0]
ip = IPSocket.getaddress(ip_or_domain)

mutex = Mutex.new
threads = []

port_names.each do |port, service|
  threads << Thread.new(port, service) do |p, s|
    if is_port_open?(ip, p)
      mutex.synchronize {
        puts "Port #{p} (#{s}) is open on #{ip}"
      }
    end
  end
end

threads.each(&:join) # wait for all threads to finish
