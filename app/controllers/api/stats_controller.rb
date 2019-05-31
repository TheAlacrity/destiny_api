class Api::StatsController < ApplicationController
  # def index
  # response = HTTP.get("https://www.bungie.net/Platform/Destiny2/XBOX/Profile/THE%20ALACRITY/?q=#{params[:search]}&apiKey=#{ENV['API_KEY']}")

  #   render json: response.parse
  # end

  def index
    response = HTTP
      .headers({ 
        "X-API-Key" => "#{ENV["API_KEY"]}"
      })
      .get("https://www.bungie.net/Platform/User/GetMembershipsById/#{params[:member_id]}/#{params[:membership_id]}/")
      # "https://www.bungie.net/Platform/Destiny2/SearchDestinyPlayer/254/14511443/"
      
    render json: response.parse
  end
end
