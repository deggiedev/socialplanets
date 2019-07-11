class PlanetMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :planet
  before_create :default_values
  def default_values
    self.total_units = 0
  end

end
