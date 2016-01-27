# flagellant
A strange experiment in randomized vexillology.


## Preparing an SVG layer file

* Remove the doctype and base `svg` tag
* Put eRuby colors tags where you want to read colors from the database. The available ones are color1 - color6 and stroke1 - stroke6.
* Add a class to the element you are coloring. See below for example.

Here is a typical example of a plain tricolour:

```erb
<rect width="900" height="600" fill="<%= layer.color1 %>" class="color1"/>
<rect width="600" height="600" fill="<%= layer.color2 %>" class="color2"/>
<rect width="300" height="600" fill="<%= layer.color3 %>" class="color3"/>
```

If you wanted to also color in the stroke (makes no sense for a tricolour, but just for the sake of the example), you would have to add classes accordingly:

```erb
<rect width="900" height="600" fill="<%= layer.color1 %>" class="color1"/>
<rect width="600" height="600" fill="<%= layer.color2 %>" stroke="<%= layer.stroke1 %>" class="color2 stroke1"/>
<rect width="300" height="600" fill="<%= layer.color3 %>" class="color3"/>
```

Save the file in `app/views/flags/layers/_your_layer_name.svg.erb` for a normal layer (without transparent) or `app/views/flags/base_layers/_your_layer_name.svg.erb` for a layer that covers the entire flag area.

## Adding a layer to the database

To make the layer usable, you have to tell the database the file name, size and properties of your layer:

```ruby
FlagLayer.create(:template_name => 'your_layer_name',
                 :width  => 900,
                 :height => 600,
                 :max_colors => 3,
                 :max_strokes => 1,
                 :is_base_layer => true)
```

You would set is_base_layer to false for a normal layer, of course.
