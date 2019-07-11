class Planet < ApplicationRecord
  has_many :planet_materials
  belongs_to :user
  has_many :activities
  has_many :questions, through: :activities

end
