class Api::V1::ShowsController < ApplicationController
  skip_before_action :verify_authenticity_token

    def create
      @show = Show.api_2015_fetch
        render json: @show
      end
end
