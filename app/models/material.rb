class Material < ApplicationRecord
  has_and_belongs_to_many :planets
  has_many :questions
end
