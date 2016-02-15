class Flag < ActiveRecord::Base
  has_many :flag_layers
  has_one :base_layer, :class_name => FlagLayer

  accepts_nested_attributes_for :flag_layers

  validates_associated :flag_layers
  validates :base_layer, :presence => true

  validate :exactly_one_base_layer

  before_create :assign_secret


  private

  def assign_secret
    secret = "#{RandomWord.adjs.next}-#{RandomWord.nouns.next}"
    while Flag.where(:secret => secret).count > 0
      secret = "#{RandomWord.adjs.next}-#{RandomWord.nouns.next}"
    end
    self.secret = secret
  end

  def exactly_one_base_layer
    if self.base_layer.is_base_layer? == false
      errors.add(:base_layer, "must be set.")
    end
    if self.flag_layers.where(:is_base_layer => true).count > 1 
      errors.add(:base_layer, "must be present exactly once.")
    end
  end

end
