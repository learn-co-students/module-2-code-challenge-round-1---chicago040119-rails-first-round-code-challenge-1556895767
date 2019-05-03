require 'pry'

class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    # @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    binding.pry
    # code here to set up a new @post based on form info
    if @heroine.save
      # code to set up congratulations message
      redirect_to heroine_path(@heroine) # go to show page for @post
    else
      # code to set up error message
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
