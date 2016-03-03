class FlagLayer < ActiveRecord::Base
  belongs_to :flag
  before_create :populate_sortorder
  validates :width, :height, :numericality => { :only_integer => true }

  scope :template, -> { where(:is_base_layer => false, :is_template => true) }
  scope :base, -> { where(:is_base_layer => true) }

  private

  def populate_sortorder
    if self.flag && self.sortorder.nil?
      self.sortorder = self.flag.flag_layers.count
    end
  end

end
