class InputbloodsController < ApplicationController
  def new
  end

  def newpage
  end

  def index
    @inputbloods = InputBlood.all
  end

  def create
    @inputblood = InputBlood.new(inputblood_params)
    if @inputblood.save
      redirect_to inputblood_path(@inputblood)
    else
      render 'new'
    end
  end

  def inputblood_params
    params.require(:inputbloods).permit(:leukocyte, :seg, :date)
  end

  def show
    @inputblood = InputBlood.find(params[:id])
  end
end
