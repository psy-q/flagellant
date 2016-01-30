module FlagLayersHelper

  def color_picker_field(layer_form, color, property = "fill")
    if property == "stroke"
      layer_form.text_field(color.to_sym,  :size => 7, :class => 'colorpicker',
                            :data => { :altfield => "#flag_layer_#{layer_form.object.id} .#{color}",
                                       :altproperties => 'stroke'} )
    else
      layer_form.text_field(color.to_sym,  :size => 7, :class => 'colorpicker',
                            :data => { :altfield => "#flag_layer_#{layer_form.object.id} .#{color}"} )
    end
  end
end
