class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show]
  def index
    @heroines = Heroine.all
  end

  def show
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      @errors = @heroine.errors.full_messages
      render :new
    end
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
