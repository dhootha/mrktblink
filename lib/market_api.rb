require 'net/http'
require 'net/https'
require 'uri'
require 'json'
require File.dirname(__FILE__) + "/api_library" # the EventApiObject class

module MarketsApi < ApiLibrary
  attr_accessor :api_key, :symbol, :base_query

  def initialize
    self.base_query = "http://chartapi.finance.yahoo.com/instrument/1.0/%5EDJI/chartdata;type=quote;range=1d/json/" 
  end
  
  def fetch_all
    http_response(base_query) 
  end  

end
