require 'open-uri'
require 'net/http'

class GetRequester
  
  attr_reader :url
  

  def initialize(string_URL)
    @url = string_URL
  end 
  
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body 
  end 
  
  def parse_json
    JSON.parse(get_response_body)
  end 
end 
    