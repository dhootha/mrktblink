task :store_data_to_redis => :environment do
  APP_CONFIG_MARKETS.each do |market|
    response = FetchData.fetch_data_from_api(market[0])    
    # Resque.enqueue(GetMarketData,market)    
    if MarketData.exist?(:market_name => market[0])      
      market = MarketData.find_by_market_name(market[0])
      if market.update_attributes(:market_data => response)
        puts market.market_name
      end  
    else
      puts "data does not exist"
      MarketData.create(:market_name => market[0],:country => APP_CONFIG_MARKETS[market[0]]["country"],:market_data => response)
    end

  end  
end
