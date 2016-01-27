class FlagLayer < ActiveRecord::Base
  belongs_to :flag
  serialize :target_css

  # Each color can have its own target property. Use the SVG CSS properties:
  #  - fill
  #  - stroke
  serialize :target_property
end
