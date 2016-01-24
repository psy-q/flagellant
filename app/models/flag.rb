class Flag < ActiveRecord::Base
  has_many :flag_layers
  has_one :base_layer, :class_name => FlagLayer
end
