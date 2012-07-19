class GetMarketData
  @queue = :market
  def self.perform(market)
    response = FetchData.fetch_data_from_api(market[0])    
    $redis.set("data_#{market[0]}",response)
    if MarketData.exist?(:market_name => market[0])      
      market = MarketData.find_by_market_name(market[0])
      if market.update_attributes(:market_data => response)
        puts market.market_name
      end  
    else
      puts "data does not exist"
      MarketData.create(:market_name => market[0],:country => APP_CONFIG_MARKETS[market[0]]["country"],:market_data => response)
    end
    puts "hi resque"
  end
end