require 'net/http'

namespace :insert_station do
  task run: :environment do
    Line.all.each do |line|
      uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getStations&line=#{line.name}"))
      http = Net::HTTP.new(uri.host, uri.port)
      res = http.start {
        http.get(uri.request_uri)
      }
      stations = JSON.parse(res.body)
      if stations.nil?
		  end
      stations["response"]["station"].each do |station|
        stationhoge = Station.find_by(x: station["x"], y: station["y"] )
        if stationhoge.nil?
          Station.create!(name: station["name"], prefecture: station["prefecture"], x: station["x"].to_f, y: station["y"].to_f )
        end
      end
    end
  end
end