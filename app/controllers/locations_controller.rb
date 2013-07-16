class LocationsController < ApplicationController
 


  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(params[:location])
    render :show
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update_attributes(params[:location])
    render :show
  end

  def destroy
    location = Location.find(params[:id])
    location.delete
    redirect_to(location_path)
  end

end
