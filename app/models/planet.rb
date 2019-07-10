class Planet < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :questions, through: :activities
  has_many :resources, through: :questions


end
