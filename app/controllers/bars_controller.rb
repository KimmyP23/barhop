class BarsController < ApplicationController
  def index
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bars = @neighborhood.bars
  end

  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
