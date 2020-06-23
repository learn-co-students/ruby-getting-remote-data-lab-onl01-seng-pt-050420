# Write your code here
  require 'open-uri'
  require 'net/http'
  require 'json'
  require 'pry'




class GetRequester
  

  
  
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  
  def parse_json
    parse = JSON.parse(self.get_response_body)
    parse.each do CONVERTED_DATA
    end
  end
  
  
end