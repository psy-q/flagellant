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
  end

  def check_secret
    if params[:secret]
      if @flag.secret != params[:secret]
        flash[:error] = "The secret provided is wrong. Changes will not be saved."
      end
    else
      flash[:error] = "You can't edit this flag without the matching secret or edit link."
      redirect_to :action => :show
    end
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
    if !params[:secret]
      flash[:error] = "You can't edit this flag without the matching secret or edit link."
      redirect_to :action => :show
    elsif @flag.secret != params[:secret]
      flash.now[:error] = "The secret provided is wrong. Changes cannot be saved."
    end
  end

  def update
    flag_and_layers

    if @flag.secret != params[:secret]
      flash[:error] = "The secret provided is wrong. Changes could not be saved."
      redirect_to :action => :edit, :params => { :secret => params[:secret] }
    else
      @flag.update_attributes(flag_params)
      respond_to do |format| 
        format.html { 
          redirect_to :action => :edit, :params => { :secret => @flag.secret } 
        }
      end
    end
  end

  private

  def flag_params
    params.require(:flag).permit(:flag_layers_attributes => 
                                 [ :id, :sortorder,
                                   :color1, :color2, :color3, 
                                   :color4, :color5, :color6,
                                   :stroke1, :stroke2, :stroke3, 
                                   :stroke4, :stroke5, :stroke6 
                                 ]
                                )
  end
end
