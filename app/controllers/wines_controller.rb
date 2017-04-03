class WinesController < ApplicationController
  def index
    filter_params = params.permit :name, :vintage, :country, :region, :color

    wines = Wine.where(filter_params.to_h)

    if params[:before]
      before_year = params[:before]
      wines = wines.where("vintage <= ?", before_year)
    end

    if params[:after]
      after_year = params[:after]
      wines = wines.where("vintage >= ?", after_year)
    end

    @wines = wines
  end

  def new
  end

  def import
    Wine.import(params[:file])
    redirect_to root_url, notice: "Wines imported."
  end
end