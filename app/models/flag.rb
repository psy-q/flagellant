class Flag < ActiveRecord::Base
  has_many :flag_layers
  has_one :base_layer, :class_name => FlagLayer
  accepts_nested_attributes_for :flag_layers
end
