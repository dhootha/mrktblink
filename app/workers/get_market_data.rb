class GetMarketData
  @queue = :market
  def self.perform(market)    
    puts "helloooo Resque...."    
    response = FetchData.fetch_data_from_api(market[0])    
    $redis.set("data_#{market[0]}",response)    
  end
end