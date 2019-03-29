class PlacesController < ApplicationController

  def index
    @link = Place.path(page: params[:page]. per_page:)
  end

  def new
    @place= Place.new
  end

  def index
    Place.path(page: params[:page], per_page: 30)
    redirect_to root_path
  end

  private

end

