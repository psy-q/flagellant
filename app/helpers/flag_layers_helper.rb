module FlagLayersHelper

  def color_picker_field(layer, color, property = "fill")
    if property == "stroke"
      layer.text_field(color.to_sym,  :size => 7, :class => 'colorpicker',
                     :data => { :altfield => "#flag_layer_#{layer.object.id} .#{color}",
                                :altproperties => 'stroke'} )
    else
      layer.text_field(color.to_sym,  :size => 7, :class => 'colorpicker',
                     :data => { :altfield => "#flag_layer_#{layer.object.id} .#{color}"} )
    end
  end
end
