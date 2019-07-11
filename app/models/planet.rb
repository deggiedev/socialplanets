class Planet < ApplicationRecord
  has_many :materials
  belongs_to :user
  has_many :activities
  has_many :questions, through: :activities
  
  
end
