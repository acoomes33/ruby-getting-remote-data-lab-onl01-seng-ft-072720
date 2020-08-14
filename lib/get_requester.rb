require "open-uri"
require "net/http"
require "json"
require "pry"


class GetRequester
  
  def initialize(url)
    @url = url 
  end 
  
  def get_response_body
    uri = URI.parse(@url)
    response = NET::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json 
    things = JSON.parse(self.get_response_body)
    things.collect do |thing|
      thing
    end 
  end 
  
end 
