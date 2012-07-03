class GetMarketData
  @queue = :market
  def self.perform(market)
    response = FetchData.fetch_data_from_api(market[0])    
    $redis.set("data_#{market[0]}",response)
    if MarketRecord.exist?(:market_name => market[0])
      puts "data already exist"
      market = MarketRecord.find_by_market_name(market[0])
      market.update_attributes(:market_data => response)
    else
      puts "data does not exist"
      MarketRecord.create(:market_name => market[0],:country => APP_CONFIG_MARKETS[market[0]]["country"],:market_data => response)
    end  
    puts "hi resque"
  end
end