class FlagsController < ApplicationController


  def show
    respond_to do |format| 
      format.svg
    end
  end
end
