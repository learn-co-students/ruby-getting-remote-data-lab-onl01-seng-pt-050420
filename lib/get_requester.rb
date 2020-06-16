# Write your code here
require 'net/http'
 require 'open-uri'
 require 'json'
 
 class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    # JSON.parse(get_response_body)
    response = JSON.parse(self.get_response_body)
    # response.collect do |response|
#       program["agency"]
    end
  end

#  programs = GetPrograms.new.get_programs
#  puts programs
# programs = GetPrograms.new
# puts programs.program_school.uniq
