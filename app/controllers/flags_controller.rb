class FlagsController < ApplicationController

  def flag_and_layers
    @flag = Flag.find(params[:id])
    @base_layer = @flag.base_layer
    @layers = @flag.flag_layers.where(:is_base_layer => false).all.order(:sortorder)
  end


  def show
    flag_and_layers
    respond_to do |format| 
      format.svg
      format.html
    end
  end
end
