# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  attr_accessor :url 
  @@all = []
  def initialize(url)
    @url = url 
    @@all << self 
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
    
  end
  
  def parse_json
    programs = JSON.parse(self.get_response_body)
  end
  
  
end