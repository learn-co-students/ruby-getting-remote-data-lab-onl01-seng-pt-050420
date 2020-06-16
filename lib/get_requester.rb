require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  def initialize(url)
    url = URL  
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    data = JSON.parse(self.get_response_body)
    data.collect do |data|
    data  
    end
  end 
  
end
