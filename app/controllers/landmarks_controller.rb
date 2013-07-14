class LandmarksController < ApplicationController

  def index
    @landmarks = Landmark.all
  end

  def new
    @landmark = Landmark.new
  end

  def create
    @landmark = Landmark.create(params[:landmark])
    render :show
  end

  def show
    @landmark = Landmark.find(params[:id])
  end

  def edit
    @landmark = Landmark.find(params[:id])
  end

  def update
    @landmark = Landmark.find(params[:id])
    @landmark.update_attributes(params[:landmark])
    render :show
  end

  def destroy
    landmark = Landmark.find(params[:id])
    landmark.delete
    redirect_to(landmark_path)
  end

end
