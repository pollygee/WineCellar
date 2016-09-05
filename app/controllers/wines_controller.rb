class WinesController < ApplicationController
  def index
    # @wines = Wine.all

    filter_params = params.permit :name, :vintage, :country, :region, :color

    wines = Wine.where(filter_params.to_h)

    render json: wines
  end
end