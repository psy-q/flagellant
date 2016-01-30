class FlagLayer < ActiveRecord::Base
  belongs_to :flag
  before_create :populate_sortorder
  validates :width, :height, :numericality => { :only_integer => true }

  private

  def populate_sortorder
    if self.flag && self.sortorder.nil?
      self.sortorder = self.flag.flag_layers.count
    end
  end

end
