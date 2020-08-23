require 'net/http'

namespace :insert_line do
  task run: :environment do
        Prefecture.all.each do |p|
          uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getLines&prefecture=#{p.name}"))
          #定形文
          http = Net::HTTP.new(uri.host, uri.port)
          res = http.start {
            http.get(uri.request_uri)
          }
          lines = JSON.parse(res.body) #paraseをjason（文字列）をrubyに変換
          #定形文
          lines["response"]["line"].each do |line_name|
            #仕様書の中に駅の情報がresponse line と記載している。
             line = Line.find_by(name: line_name)
             if line.nil?
              Line.create!(name: line_name)
             end
          end
        end
  end
  #task test: :environment do
    #a = ["yamato", "hurukawa"].each do |name|
        #puts "あなたの名前は#{name}です"
    #end
  #end
end
