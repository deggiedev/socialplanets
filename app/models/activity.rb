class Activity < ApplicationRecord
  belongs_to :planet
  has_many :questions
  
end
