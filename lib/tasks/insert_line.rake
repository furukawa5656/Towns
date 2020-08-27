require 'net/http'

namespace :insert_line do
  task run: :environment do
    Prefecture.all.each do |p|
      uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getLines&prefecture=#{p.name}"))
      http = Net::HTTP.new(uri.host, uri.port)
      res = http.start {
        http.get(uri.request_uri)
      }
      lines = JSON.parse(res.body)
      lines["response"]["line"].each do |line_name|
        line = Line.find_by(name: line_name)
        if line.nil?
          Line.create!(name: line_name)
        end
      end
    end
  end
end
