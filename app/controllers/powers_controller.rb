class PowersController < ApplicationController

def index
    @powers = Power.all
  end

   def show
    @power = Power.find(params[:id])
    @heroine = Heroine.all.select {|heroine| heroine.power == @power }
  end

 end
