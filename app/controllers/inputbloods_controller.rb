class InputbloodsController < ApplicationController
  def new
  end

  def index
  end

  def create
    @inputblood = InputBlood.new(inputblood_params)
    @inputblood.save

    redirect_to inputblood_path(@inputblood)
  end

  def inputblood_params
    params.require(:inputbloods).permit(:leukocyte, :seg)
  end

  def show
    @inputblood = InputBlood.find(params[:id])
  end
end
