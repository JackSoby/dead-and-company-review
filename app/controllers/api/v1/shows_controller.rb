class Api::V1::ShowsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create


    if params["_json"] == ":2015 U.S. Tour"
      @show = Show.api_2015_fetch

    elsif params["_json"] == ":2016 U.S. Tour"
        @show = Show.api_2016_fetch
      else
        @show = Show.api_2015_fetch
      end
      render json: @show
    end
end
