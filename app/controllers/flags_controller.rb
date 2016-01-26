class FlagsController < ApplicationController

  def flag_and_layers
    if params[:id]
      @flag = Flag.find(params[:id])
      @base_layer = @flag.base_layer
    else
      @flag = Flag.new
      layer = FlagLayer.new(:is_base_layer => true)
      @flag.base_layer = layer
    end
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

  def new
    flag_and_layers
  end

  def edit
    flag_and_layers
  end

  def update
    flag = Flag.find(params[:id])
    flag.update_attributes(flag_params)
    redirect_to :action => :show
  end

  private

  def flag_params
    params.require(:flag).permit(:flag_layers_attributes => 
                                 [ :id, :color01, :color02, :color03, 
                                   :color04, :color05, :color06 ]
                                )
  end
end
