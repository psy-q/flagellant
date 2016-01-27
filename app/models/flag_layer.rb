class FlagLayer < ActiveRecord::Base
  belongs_to :flag
  serialize :target_css
  serialize :target_property
end
