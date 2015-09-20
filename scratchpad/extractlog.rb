# sample code to extract from a sample apache log>

requests =
    File.open("access_log") do |file|
      file
          .map { |line| { ip: line.split[0], url: line.split[6] } }
          .group_by { |request| request[:ip] }
          .each { |ip, requests| requests.map! { |r| r[:url] } }
    end

puts requests.class
puts requests.inspect