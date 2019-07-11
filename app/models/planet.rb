class Planet < ApplicationRecord
  has_and_belongs_to_many :materials
  belongs_to :user
  has_many :activities
  has_many :questions, through: :activities
  has_many :materials, through: :questions
  
end
