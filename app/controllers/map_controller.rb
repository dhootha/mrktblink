class MapController < ApplicationController
  load "#{Rails.root}/app/workers/get_market_data.rb"
  require 'rss'

  def index    
    @countries = []
    APP_CONFIG_MARKETS.each do |market|
      @countries << market[1]["country"]
    end
    render :layout => "map"
  end

  def find_data
    market_name = 'Dow'
    debugger
    begin
      FetchData.fetch_data_from_api(market_name)
      $redis.get('data')
    rescue
    end
  end

  def market_data
    Resque.enqueue(GetMarketData,"Dow")
    render :layout => "application"
  end

  def new_map
    render :layout => "new_map"
  end

  def update_news_feeds_content    
    markets = MarketData.where(country: params[:country_name])
    market_data_value =[]
    if markets.present?
      markets.each do |market| 
        market_data = market.market_data 
        json_market_data = JSON.parse(market_data[30..-3].gsub('"previous_close" : ','"previous_close" : "')) 
        market_data_value << {:market => market.market_name, :previous_close => json_market_data['meta']['previous_close'], :close => json_market_data['series'].last['close']}
      end
    else
      market_data_value = 'does not exist'
    end  
    json = {:success => true, :market_data => market_data_value.to_s, :content_to_replace => render_to_string(:partial => 'news_feeds_content', :locals => {:country => params[:country_name]})}
    render :json => json
  end

end