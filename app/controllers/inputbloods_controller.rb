class InputbloodsController < ApplicationController
  def new
  end

  def newpage
  end

  def index
    @inputbloods = InputBlood.all
    gon.koutyuukyuu = Array.new
    gon.date = Array.new
    gon.labels = Array.new
    @inputbloods.each_with_index do |blood, i|
      leg = blood.leukocyte
      seg = blood.seg
      gon.koutyuukyuu.push(leg.to_i * seg.to_i)
      gon.labels.push(i + 1)
    end
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
