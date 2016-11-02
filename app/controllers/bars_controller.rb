class BarsController < ApplicationController
  before_action :find_neighborhood
  before_action :find_bar, except: [:index, :new, :create]

  def index
    @bars = @neighborhood.bars
  end

  def show

  end

  def create
    @bar = @neighborhood.bars.new(bar_params)
    if @bar.save
      redirect_to neighborhood_bar_path(@neighborhood, @bar)
    else
      @errors = @bar.errors.full_messages
      render 'new'
    end
  end

  def new
    # @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = Bar.new
  end

  def edit
  end

  def update
    if @bar.update(bar_params)
      redirect_to neighborhood_bar_path(@neighborhood, @bar)
    else
      @errors = @bar.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @bar.destroy
    redirect_to neighborhood_bars_path(@neighborhood)
  end


  private

  def find_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def find_bar
    @bar = Bar.find(params[:id])
  end

  def bar_params
    params.require(:bar).permit(:name, :specialty_drink, :cash_only)
  end

end
