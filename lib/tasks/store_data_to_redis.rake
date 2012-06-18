task :store_data_to_redis => :environment do
  APP_CONFIG_MARKETS.each do |market|
    Resque.enqueue(GetMarketData,market)    
  end  
  puts "done"
end