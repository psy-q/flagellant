class FlagLayersController < ApplicationController


  def new
    @flag = Flag.find(params[:flag_id])
    @templates = FlagLayer.template.all
    @flag_layer = FlagLayer.new(:flag => @flag)
  end

  def create
    @flag = Flag.find(params[:flag_id])
    @flag_layer = FlagLayer.new(flag_layer_params)
  end

  private

  def flag_layer_params
    params.require(:flag_layer).permit(:color1)
  end
end
