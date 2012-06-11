class MapController < ApplicationController

  def index
    render :layout => "map"
  end

  def find_data
    market_name = 'Dow'
    #debugger
    begin
      FetchData.fetch_data_from_api(market_name)
    rescue
    end
  end
end