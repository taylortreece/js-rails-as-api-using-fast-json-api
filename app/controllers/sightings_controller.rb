class SightingsController < ApplicationController
  def index
    sighting = Sighting.all
    render json: SightingSerializer.new(sighting)
  end

  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end
