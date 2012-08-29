require 'net/http'
require 'net/https'
require 'uri'
require 'json'
require File.dirname(__FILE__) + "/api_library" # the EventApiObject class

module MarketsApi < ApiLibrary

  def self.fetch_tweets
    query = APP_CONFIG_TWITTER[name]['feed_url']
  	begin
	    uri = URI.parse(query)
      connection = Net::HTTP.new(uri.host, 443)
      connection.use_ssl = true
      resp = connection.request_get(query)
	  rescue
	    return false
	  end
    response = resp.body
    return response
  end

end
