class MapController < ApplicationController
  load "#{Rails.root}/app/workers/get_market_data.rb"

  def index    
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

end