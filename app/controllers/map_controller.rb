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
        prev = json_market_data['meta']['previous_close'].to_f
        close = json_market_data['series'].last['close'].to_f
        percent = (((close - prev) / (prev)) * 100).round(2)
        change = percent > 0 ? 'up' : 'down'
        sign = percent > 0 ? '+' : ''
        points = (close - prev).round(3)
        volume = params[:country_name] == 'USA' ? json_market_data['series'].last['volume'].to_i : ''
        market_data_value << {:market_name => market.market_name.upcase, :previous_close => prev, :close => close, :change => change, :percent => percent, :sign => sign, :country => params[:country_name], :points =>points, :volume=>volume}
      end
    else
      market_data_value = 'does not exist'
    end  
    # close = "12341234.1234".to_f 
    # prev = "12454354.5334".to_f
    # percent = (((close - prev) / (prev)) * 100).round(2)
    # change = percent > 0 ? 'up' : 'down'
    # sign = percent > 0 ? '+' : ''
    # points = (close - prev).round(3)
    # volume = 123123
    # market_data_value = [{:market_name=>"DOW", :previous_close=>prev, :close=>close, :change=>change, :percent=>percent, :country=>"USA", :sign=>sign, :points=>points}, {:market_name=>"NASDAQ", :previous_close=>prev, :close=>close, :change=>change, :percent=>percent, :country=>"USA", :sign=>sign, :points=>points}, {:market_name=>"S&P", :previous_close=>prev, :close=>close, :change=>change, :percent=>percent, :country=>"USA", :sign=>sign, :points=>points, :volume => volume}]
    json = {:success => true, :market_data => market_data_value, :content_to_replace => render_to_string(:partial => 'news_feeds_content', :locals => {:country => params[:country_name]})}
    render :json => json
  end

  def update_icon    
    countries_details = []
    countries = []
    APP_CONFIG_MARKETS.each do |market|
      countries << market[1]["country"]
    end
    countries.uniq.each do |country|
      markets = MarketData.where(country: country)
      begin
        if markets.present?
          markets.each do |market|
            market_data = market.market_data
            json_market_data = JSON.parse(market_data[30..-3].gsub('"previous_close" : ','"previous_close" : "'))          
            close = json_market_data['series'].last['close'].to_f
            previous_close = json_market_data['meta']['previous_close'].to_f
            if close <= previous_close
              color = "Red"
            else
              color = "Green"
            end
            countries_details << {:country_name => country, :color => color}          
          end
        end
      rescue        
      end  
    end    
    json = {:success => true, :countries_details => countries_details}
    # json = {:success => true, :countries_details => countries}
    render :json => json
  end

end
